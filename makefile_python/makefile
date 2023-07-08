# .ONESHELL will make on whole recipe run in a single shell instead of each indiviual line of the recipe run in a shell
.ONESHELL:
.PHONY: setup clean

VENV=venv
VENV_ACTIVATE= . $(VENV)/bin/activate

venv:
# The following command will test if the virtual enviroment is there. If the venv is not there it will create it.
	test -d $(VENV) || python3 -m venv $(VENV)

setup: venv
# Makefiles run in there own shell so for each common we have to activate the virtual enviroment if we wish to use it
	($(VENV_ACTIVATE) && pip install -r requirements.txt)

clean:
	rm -rf $(VENV)