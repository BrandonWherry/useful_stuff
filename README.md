# linux useful_stuff

## Enable scroll wheel in screen
```bash

apt-get install screen

nano ~/.screenrc

# OR

{

echo 'termcapinfo xterm* ti@:te@'

} >> ~/.screenrc
```

## Useful cache redirects
```bash
{
    echo 'COMMON_PATH_PREFIX="/workspace/storage"'
    echo 'export CONDA_PKGS_DIRS=$COMMON_PATH_PREFIX/.conda/pkgs'
    echo 'export HF_HOME=$COMMON_PATH_PREFIX/.cache'
    echo 'export TORCH_EXTENSIONS_DIR=$COMMON_PATH_PREFIX/.cache'
    echo 'export PIP_CACHE_DIR=$COMMON_PATH_PREFIX/.cache'
} >> ~/.bashrc
```

## installing conda with temporary environment variable
```bash
export MINICONDA_PATH=/workspace/storage/miniconda3
mkdir -p $MINICONDA_PATH && \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $MINICONDA_PATH/miniconda.sh && \
bash $MINICONDA_PATH/miniconda.sh -b -u -p $MINICONDA_PATH && \
rm -rf $MINICONDA_PATH/miniconda.sh && \
$MINICONDA_PATH/bin/conda init bash && \
exec bash
```

OR

```bash
mkdir -p ~/miniconda3 && \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh && \
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 && \
rm -rf ~/miniconda3/miniconda.sh && \
~/miniconda3/bin/conda init bash && \
exec bash



## enable ssh on new container
```bash
apt-get update
apt-get install -y openssh-server
service ssh status
passwd root
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart
```

## setting up github ssh

```bash
ssh-keygen -t ed25519 -C "dgx1_key" -f ~/.ssh/dgx1_key
echo -e "Host github.com\n  HostName github.com\n  IdentityFile ~/.ssh/dgx1_key\n  User git" >> ~/.ssh/config
cat ~/.ssh/dgx1_key.pub
```

## running docker container on dgx

```bash
sudo docker run --name brandon -p 2600:22 -v /raid/projects/brandon:/workspace/storage --gpus all -it nvcr.io/nvidia/pytorch:23.05-py3
```
## Add to .bashrc

```bash
echo 'export PS1="(`conda info --envs | grep \* | cut -d" " -f1`):\\W$ "' >> ~/.bashrc
```





