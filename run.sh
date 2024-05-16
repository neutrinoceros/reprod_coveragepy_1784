set -euxo pipefail

python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt

python -m coverage run -m pytest
python -m coverage report
python -m coverage html
