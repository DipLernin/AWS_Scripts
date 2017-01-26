sudo pip install -U setuptools pip kaggle-cli
sudo pip install -U jupyter numpy scipy scikit-learn matplotlib pandas 
sudo pip install -U Pillow bcolz h5py tensorflow theano keras
# Python 3
# Seaborn
# 

echo "[global]
device = gpu
floatX = float32
[cuda]
root = /usr/local/cuda" > ~/.theanorc

mkdir ~/.keras
echo '{
    "image_dim_ordering": "th",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "theano"
}' > ~/.keras/keras.json


jupyter notebook --generate-config
jupass=`python -c "from notebook.auth import passwd; print(passwd())"`
echo "c.NotebookApp.password = u'"$jupass"'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False" >> $HOME/.jupyter/jupyter_notebook_config.py

# Python 2 kernel
# python3 -m pip install ipykernel
# python3 -m ipykernel install --user