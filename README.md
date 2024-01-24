# distribute-me

Quick minimal template for building a wheel.


`sudo apt update && sudo apt install pipx`

`pipx install poetry`

`make build`

The result is a tarball with the wheel and the dependencies.  Distribute it wherever you need to, 
then in that new environment (might not work in the dev environment):

`mkdir test && cp dist.tar.gz ./test && cd test`

`tar xvf dist.tar.gz && cd dist`

`pip3 install distribute_me-0.1.0-py3-none-any.whl --no-index --find-links ./deps`