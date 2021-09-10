# docker-clingo
A Docker image for the Potassco [clingo](https://github.com/potassco/clingo) software. Try out some [Answer Set Programming](https://en.wikipedia.org/wiki/Answer_set_programming) using one of the most popular solvers available. Learn more about Potassco here: https://potassco.github.io/

## Docker
### Pull the latest image
`docker pull kdrakon/clingo`

### Build the solver directly from source (https://github.com/potassco/clingo)
Check out this repo and run: `docker build -t clingo .`

#### Specific versions of clingo
Optionally, a specific version of clingo can be built. For example: `docker build --build-arg tag_version=v5.4.0 -t clingo .`

The specified tag_version must match an existing tag from the [clingo github repository](https://github.com/potassco/clingo). By default, the latest version available in the repository (from the master branch) will be built.

### Run clingo from Docker
`docker run -it --rm -v ~/docker-clingo:/tmp kdrakon/clingo:latest clingo -n 2 /tmp/examples/nonmontonic`

This mounts the example file from this repo into `/tmp`. Clingo is then executed to solve at most 2 models. See the [examples](examples) section for more. 

To play around with clingo and the rest of the suite of tools, just run:

`docker run -it --rm kdrakon/clingo:latest bash`

Binaries for clingo, gringo (grounder), and clasp (solver) are available on the PATH so that they can be executed anywhere on the command line.

