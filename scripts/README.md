# Using a Python virtual environment (venv)

This document explains how to create, activate, use, and remove a Python virtual environment inside this `scripts/` folder. Commands below assume macOS (zsh) and Python 3 is available as `python3`.

1) Create a virtual environment

```bash
# from inside the scripts/ folder
python3 -m venv venv
# or use a dot-prefixed name if you prefer
python3 -m venv .venv
```

2) Activate the virtual environment

```bash
# zsh/bash (macOS/Linux)
source venv/bin/activate
# or if you used .venv
source .venv/bin/activate
```

When activated your prompt will show the venv name and `python`/`pip` will refer to the venv's interpreter.

3) Install and manage dependencies

```bash
# install packages
pip install requests

# install from requirements.txt
pip install -r requirements.txt

# freeze current environment to requirements.txt
pip freeze > requirements.txt

# list outdated packages
pip list --outdated

# upgrade a single package
pip install --upgrade <package-name>

# upgrade all packages (careful; test after upgrading)
pip list --outdated --format=freeze | cut -d'=' -f1 | xargs -n1 pip install -U
```

4) Run Python scripts

With the venv active, run scripts normally:

```bash
python my_script.py
```

Or ensure using the venv interpreter explicitly:

```bash
venv/bin/python my_script.py
```

5) Deactivate and remove the virtual environment

```bash
# deactivate
deactivate

# remove (while deactivated)
rm -rf venv
# or
rm -rf .venv
```

6) Notes and tips

- This repository includes `scripts/.gitignore` which already ignores `venv/` and `.venv/` so the virtual environment won't be committed. Do not commit your venv directory; instead commit `requirements.txt`.
- For reproducible installs, pin versions in `requirements.txt` with `pip freeze` and consider using a lockfile tool (e.g., `pip-tools`, `poetry`) for larger projects.
- In VS Code, select the venv interpreter from the Command Palette (Python: Select Interpreter) so the editor uses the correct environment.

If you want, I can also create a `requirements.txt` starter file or add a short script to automate venv creation and activation.
