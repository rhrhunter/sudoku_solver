[![Build Status](https://travis-ci.org/rhrhunter/sudoku_solver.svg?branch=master)](https://travis-ci.org/rhrhunter/sudoku_solver)

# sudoku_solver
A Silly Sudoku Solver

To run the sudoker solver, first clone this repository and do:

```bash
cd /path/to/sudoku_solver_clone
perl -Isrc/ src/sudoku.pl <GAME> <REDRAW> <FIRSTPASS>
```

- \<GAME\> - a game package located in the 'game/' folder. E.g. 'game::easy1' or 'game::bad'
- \<REDRAW\> - if set to '1' or '0', will enable/disable redrawing the game board while solving the puzzle.
- \<FIRSTPASS\> - if set to '1' or '0', will enable/disable the first pass algorithm. 

To run inside a docker container, build the docker container defined by 'Dockerfile' and run it like so:

```bash
cd /path/to/sudoku_solver_clone
docker build -t sudoku_solver .
docker run -it --rm <GAME> <REDRAW> <FIRSTPASS>
```

To create a sudoku board, see the 'src/game' folder for examples on how to create one.

Enjoy.
