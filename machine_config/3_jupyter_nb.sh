sudo pip install -U setuptools pip kaggle-cli Seaborn h5py
sudo pip install -U jupyter numpy scipy scikit-learn matplotlib pandas 
sudo pip install -U Pillow bcolz h5py tensorflow theano keras
sudo pip install -U flask flask-cors
python -m pip install ipykernel
python -m ipykernel install --user

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