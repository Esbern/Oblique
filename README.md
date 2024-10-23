# Oblique
Exampel use of dataforsyningens API for Oblique images (Skråfoto)

The code also assumes that there is a .env file in the same folder as the notebook and that this file takes the form 
token=xxx # where xxx is your dataforsyning  token, you can rename the env.sample to .env and teplace the 'your token' with yout token for dataforsyningen. 

#### To use this notebook, you have two possibilityes. 
- 1 Running the notebook (oblique.ipynb from the notenook folder) in directly on your computer.
This requeres a python enviorment with the right libaryes installed. I recoment installing the mamba libary manager and running the command

``` Shell
    mamba env create -f environment.yml
```
- 2 Running in a docker container 
This requere that docker is installed on your computer. ypu can build and run the enviorment by running the command

```Shell
    docker compose up -d
```
then connect to the notebook server as http://127.0.0.1:8888/lab/ 
as token password enter Innotech
