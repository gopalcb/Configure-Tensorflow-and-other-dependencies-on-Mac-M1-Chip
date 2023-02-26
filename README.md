# Configuration of Tensorflow and other dependencies on Mac M1 Chip:  

Installing the Python project dependencies including Tensorflow on Apple silicon ARM M1 chip is not similar to the regular installation process on Intel or AMD processor. This repository might be useful for migrating a Python project in order to run on M1 chip.

## Installation process of tools and libraries

Open the terminal and run the following command to list all files and directories including hidden files and directories.

```bash 
% ls -a
```

Now look for the ***.anaconda*** directory. If the directory exists, then remove the directory.

If ***homebrew*** is installed, then uninstall if first:

```bash
% /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

Install ***homebrew*** now using the following command:

```bash
% /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Download the Miniforge3-MacOSX-arm64 from [here](https://github.com/conda-forge/miniforge) and install it: 

```bash
% bash Miniforge3-MacOSX-arm64.sh
```

Create a ***conda*** virtual environment with ***Python 3.8***: 

```
% conda create -n <env_name> python=3.8
```

Activate the ***conda*** environment: 

```
% conda activate <env_name>
```

Install ***Tensorflow*** dependencies: 

```
% conda install -c apple tensorflow-deps
```

Install ***Tensorflow***: 

```
% conda install -c apple tensorflow-macos
```

Install ***Tensorflow*** metal: 

```
% conda install -c apple tensorflow-metal
```

Run the ***cmd.sh*** file: 

```
% bash cmd.sh
```

Install some other dependencies: 

```
% conda install --file=requirements2.yml
```

Upgrade the ***scipy*** library for M1: 

```
% bash cmd-scipy.sh 
```

To check installed ***Tensorflow*** and other libraries run the notebook file ***M1_GPU_CHECK.ipynb***.
