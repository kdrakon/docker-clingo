# Examples

## `non-monotonic`
Run this with `clingo` to see examples of non-monotonicity in ASP.

## `suduko_rules` and `sudoku_example_game`'s
`suduko_rules` demonstrates how to declaratively define the rules of Sudoku, and in turn, create a solver for the game. `sudoku_example_game1` is an example of the game depicted below, where the bold numbers are the initial hints of the game defined in the program:

|       |       |       |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| 5     | 6     | 3     | 2     | 1     | **9** | **8** | 4     | 7     |
| 7     | **1** | **8** | **4** | 5     | 3     | 9     | **2** | 6     |
| 2     | 9     | **4** | 6     | **7** | 8     | 3     | 1     | 5     |
| 1     | 2     | 5     | 7     | 9     | **6** | 4     | 3     | 8     |
| **6** | 8     | 7     | 3     |   4   | 2     | 1     | **5** | 9     |
| 3     | 4     | 9     | **1** | **8** | 5     | **7** | 6     | **2** |
| 4     | **5** | **1** | **8** | 2     | 7     | 6     | **9** | **3** |
| **9** | **7** | 6     | 5     | **3** | 1     | 2     | 8     | **4** |
| 8     | **3** | 2     | 9     | **6** | 4     | 5     | 7     | 1     |

Appending it to `suduko_rules` should generate the matching model answer.

`sudoku_example_game2` defines three sections of the game. When running that with `clingo`, you should be able to enumerate all possible games for the following:

|       |       |       |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| 5     | 6     | 3     |       |       |       |       |       |       |
| 7     | 1     | 8     |       |       |       |       |       |       |
| 2     | 9     | 4     |       |       |       |       |       |       |
|       |       |       | 7     | 9     | 6     |       |       |       |
|       |       |       | 3     | 4     | 2     |       |       |       |
|       |       |       | 1     | 8     | 5     |       |       |       |
|       |       |       |       |       |       | 6     | 9     | 3     |
|       |       |       |       |       |       | 2     | 8     | 4     |
|       |       |       |       |       |       | 5     | 7     | 1     |

This should generate **133,467** different solutions.
