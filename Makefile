
get-deps:
	poetry export -f requirements.txt --output requirements.txt

	# Forces source distributions, could be removed if there are issues compiling
	pip3 download -r requirements.txt --dest dist/deps --only-binary :all:

build: get-deps
	poetry build -f wheel
	tar -czvf dist.tar.gz dist/*

clean:
	rm -rf dist deps
	rm -rf dist.tar.gz
	rm -rf ./distribute_me*.whl