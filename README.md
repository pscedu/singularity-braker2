![Status](https://github.com/pscedu/singularity-braker2/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-braker2/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-braker2)
![forks](https://img.shields.io/github/forks/pscedu/singularity-braker2)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-braker2)
![License](https://img.shields.io/github/license/pscedu/singularity-braker2)

# singularity-braker2
<img src="https://www.biorxiv.org/content/biorxiv/early/2020/08/11/2020.08.10.245134/F1.large.jpg" width="50%" />

Singularity recipe for [BRAKER2](https://github.com/Gaius-Augustus/BRAKER).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the scripts

to `/opt/packages/braker2/2.1.5`.

Copy the file `modulefile.lua` to `/opt/modulefiles/BRAKER2` as `2.1.5.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```
## Contributing
We welcome contributions to this repository. Before getting started, please review our [Contributing Guide](https://raw.githubusercontent.com/pscedu/singularity-report/refs/heads/main/CONTRIBUTING.md) for detailed instructions and best practices.

---
Copyright © 2020-2022 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
