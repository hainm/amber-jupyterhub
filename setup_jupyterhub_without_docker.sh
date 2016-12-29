# create python3.5 env since jupyterhub won't run on py2

checkenv=`conda env list | grep "jupyterhub"`
if [ "$checkenv" == "" ]; then
    conda create -n jupyterhub python=3.5 notebook -y
fi
conda install numpy nomkl -y
conda install nglview -c bioconda -n jupyterhub -y
conda install ambertools -c hainm -n jupyterhub -y
source activate jupyterhub

# after running this script, start jupyterhub
# jupyterhub
