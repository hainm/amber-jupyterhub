# create python3.5 env since jupyterhub_env won't run on py2

checkenv=`conda env list | grep "jupyterhub_env"`
if [ "$checkenv" == "" ]; then
    conda create -n jupyterhub_env python=3.5 notebook -y
fi

source activate jupyterhub_env
conda install nodejs -c defaults -y
conda install jupyterhub -c conda-forge -y
conda install numpy nomkl -c defaults -y
conda install nglview -c bioconda -y
conda install ambertools -c hainm -y

jupyter nbextension enable --py nglview --sys-prefix

# after running this script, start jupyterhub
# jupyterhub
