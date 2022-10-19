set -euo pipefail
script_dirpath="$(cd "$(dirname "${0}")" && pwd)"
root_dirpath="$(dirname "${script_dirpath}")"

IMAGE_NAME="kurtosistech/iproute2"
DOCKER_CONTEXT="iproute2_docker_context"
SUPPORTED_PLATFORMS="linux/arm64/v8,linux/amd64"

# ========================================================================================================
#                                           Arg Parsing
# ========================================================================================================
function print_help_and_exit() {
    echo "Usage: $(basename "${0}") (build|publish)"
    echo ""
    echo "  Builds and/or publishes the iproute2 image"
    echo ""
    echo "  build       Builds the iproute2 Docker image"
    echo "  publish     Builds the iproute2 Docker image, and publishes it to the Kurtosis Dockerhub"
    echo ""
    exit 1  # Exit with error so CI fails if this gets accidentally called
}

if [ "${#}" -ne 1 ]; then
    print_help_and_exit
fi

do_build=false
do_publish=false

arg="${1}"
case "${arg}" in
    build)
        do_build=true
        ;;
    publish)
        do_build=true
        do_publish=true
        ;;
    *)
        echo "Error: Unrecognized argument '${arg}'" >&2
        print_help_and_exit
        ;;
esac

# ========================================================================================================
#                                           Main Code
# ========================================================================================================
if "${do_build}"; then
    if ! [ -f "${root_dirpath}"/.dockerignore ]; then
        echo "Error: No .dockerignore file found in root; this is required so Docker caching works properly" >&2
        exit 1
    fi
    push_flag=''
    if "${do_publish}"; then
        echo "Info: Publish flag set to true, will publish images to DockerHub"
        push_flag='--push'
    else
        echo "Info: Publish flag set to false, nothing will be published to DockerHub"
    fi
    docker context create ${DOCKER_CONTEXT}
    docker buildx create --use ${DOCKER_CONTEXT}
    docker buildx build ${push_flag} --platform ${SUPPORTED_PLATFORMS} -t "${IMAGE_NAME}" -f "${root_dirpath}/Dockerfile" "${root_dirpath}"
fi
