# create python3.5 env since jupyterhub_env won't run on py2

# Note: We use both "defaults" (Anaconda) and "conda-forge" channels
# Since conda-forge packages are frequently updated, conda-forge will be
# the main channel to install new package. However, we still install
# some packages having C/C++ extension from "defaults" channel
# to maximixe compatibility (if we are using very old Linux distro)

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
conda install matplotlib -c defaults -y

jupyter nbextension enable --py nglview --sys-prefix

# after running this script, start jupyterhub
# jupyterhub
