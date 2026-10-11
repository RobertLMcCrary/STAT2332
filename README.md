# STATS2332 - Probability and Data Analysis

Coursework for STAT 2332 at Kennesaw State University, Fall 2026, programmed in R.

## Setup

This project uses a Nix flake to provide a consistent R environment (R with
tidyverse, rmarkdown, knitr, testthat, styler, and lintr, plus radian for a
nicer REPL).

1. Install [Nix](https://nixos.org/download) with flakes enabled.
2. Enter the dev shell:

   ```sh
   nix develop
   ```

## Commands

Available inside the dev shell:

| Command | Description |
| --- | --- |
| `run`  | Run `main.R` |
| `repl` | Start a radian REPL with project packages available |
| `fmt`  | Format code with styler |
| `lint` | Lint code with lintr |
| `test` | Run tests with testthat |

## Structure

- `course materials/` - notes, R code, lab handouts, and datasets from Brightspace, by chapter.
- `testing/` - my own R scripts (see `testing/README.md`).

See [COURSE_MATERIALS.md](COURSE_MATERIALS.md) for what was downloaded and what wasn't.
