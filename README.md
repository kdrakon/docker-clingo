# docker-clingo
A Docker image for the Potassco [clingo](https://github.com/potassco/clingo) software. Try out some [Answer Set Programming](https://en.wikipedia.org/wiki/Answer_set_programming) using one of the most popular solvers available. Learn more about Potassco here: https://potassco.github.io/

## Docker
### Pull the latest image
`docker pull kdrakon/clingo`

### Build the solver directly from source (https://github.com/potassco/clingo)
Check out this repo and run: `docker build -t clingo .`

### Run clingo from Docker
`docker run -it --rm -v ~/docker-clingo:/tmp kdrakon/clingo:latest clingo -n 2 /tmp/examples/nonmontonic`

This mounts the example file from this repo into `/tmp`. Clingo is then executed to solve at most 2 models. See the [examples](examples) section for more. 

To play around with clingo and the rest of the suite of tools, just run:

`docker run -it --rm kdrakon/clingo:latest bash`

Binaries for clingo, gringo (grounder), and clasp (solver) are available on the PATH so that they can be executed anywhere on the command line.
