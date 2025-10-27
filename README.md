# DOS Matlab repo

Repo za vaje za DOS (**D**igitalna **O**bdelava **S**ignalov)

## Requirements

- MATLAB R20XXa or newer

## Initialization

Clone the repository and navigate to the project folder:

```bash
git clone https://github.com/M-Matvoz/dos.git
cd dos
```

Here, you have to add your own startup file to add all the folders to your environment.

```matlab
addpath("path/to/parent/folder/DOS/vaja0")
```

Add all vajaN directories, along with the DOS directory

## Usage

To include all relevant paths, always run your own *startup.m* file to include all relevant libraries. To do so, run the following in the matlab CLI:

```bash
startup
```

I recommend you execute the functions via *main.m* file, as is common pracice in other languages (e.g. C/C++ or Java). There, you can write all of your code, as you need it, and then execute it.

## Example

To run just a function in the CLI, call it as such:

```matlab
fnGenerateSinus(20)
```

This will execute the function and all the calls within it