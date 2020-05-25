setup:
	
	python3 -m venv ~/.docker-flask-app
	
install:
	
	pip install --upgrade pip && \
	pip install -r requirements.txt
	
test:

	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:

	pylint --disable=R,C app.py
	
all: install test lint	