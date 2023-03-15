# coding: utf-8 
# Code: Resilient Water Systems Group / Singapore University of
# Technology and Design (https://people.sutd.edu.sg/~stefano_galelli/)
# 
# This short script is to run the rainfall-runoff and routing modules together
# Version: 1.0 28 Mar 2020
# Corrected Jun 12 2022
# os.chdir("/mnt/z/GitHub/cug-hydro/VICResOpt")

# %%
import os, sys
from os import path
# Run rainfall-runoff model
dir_out = 'Inputs/Rainfall-runoffSetup/Results'
dir_rout = 'Inputs/RoutingSetup/input'
# %%
# rm vic outputs
os.system(f"rm {dir_out}/fluxes*.*")
os.system(f"rm {dir_out}/snow*.*")

# rm routine files
os.system(f'rm {dir_rout}/fluxes*.*')
os.system(f'rm {dir_rout}/snow*.*')

# %%
# os.system('bin/vicNl -g Inputs/Rainfall-runoffSetup/globalparam.txt')

# The following code is to move fluxes files to routing modulea 
# check file if exist
files = [f for f in os.listdir(dir_out) if path.isfile(path.join(dir_out, f))]

for file in files:
    newfile = "Inputs/RoutingSetup/input/" + file
    file = path.join(dir_out, file)
    os.rename(file,newfile)

# %%
# Run routing model
# os.chdir('../Routing/SourceCode')
os.system('rm *.uh_s')
os.system('bin/rout Inputs/RoutingSetup/configuration.txt')
