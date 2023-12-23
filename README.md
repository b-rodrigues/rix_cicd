# Running a targets pipeline on Github Actions with Nix

This repository is an example of how one can run a reproducible
analytical pipeline using the {targets} package under a development
environment that is completely reproducible. Nix is used to build 
this environment. The `define_env.R` script contais the code to 
generate the `default.nix` file that is used by Nix to build the
reproducible environment. The last line of `define_env.R` runs
`tar_nix_ga()` which puts a yaml file under `.github/workflows/`
that defines the steps that are taken by the Github Actions runners
at each push.

Essentially, at each push, a Github Actions runner is started and:

- Nix gets installed;
- the environment gets built;
- the pipeline gets run in that environment.

Results are then pushed to the `targets-runs` branch.
