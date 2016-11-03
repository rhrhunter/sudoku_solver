[![Build Status](https://travis-ci.org/rhrhunter/sudoku_solver.svg?branch=master)](https://travis-ci.org/rhrhunter/sudoku_solver)

# sudoku_solver
A Silly Sudoku Solver

To run the sudoker solver, do:

```bash
perl sudoku.pl <GAME> <REDRAW>
```

- \<GAME\> - a game package like: 'game::easy1', or 'game::bad'
- \<REDRAW\> - if set to '1', will display the algorithm solving the puzzle in real time.

To run inside the embedded docker container, do:

```bash
docker build -t sudoku_solver .
docker run -it --rm -v ~/Dropbox/git/sudoku_solver/:/sudoku sudoku_solver perl sudoku.pl <GAME> <REDRAW>
```

To create a sudoku board, see the 'game' folder for examples on how to do it.

-Rob
