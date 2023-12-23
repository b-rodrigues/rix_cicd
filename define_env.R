library(rix)

# Generate the default.nix file
rix(r_ver = "4.3.1",
    r_pkgs = "targets",
    ide = "other")

# Generate the yaml file under .github/workflows/
tar_nix_ga()
