set -euxo pipefail

python -m coverage run -m pytest
python -m coverage report
python -m coverage html