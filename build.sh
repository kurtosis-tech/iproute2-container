set -euo pipefail
script_dirpath="$(cd "$(dirname "${0}")" && pwd)"

docker build -t 'kurtosistech/iproute2' -f "${script_dirpath}/Dockerfile" "${script_dirpath}"
