cd /workspace
apt-get update
apt-get install git-lfs
git clone https://github.com/Hieu3333/MeaCap.git
cd MeaCap
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install torch==2.0.1+cu118 torchvision==0.15.2+cu118 torchaudio==2.0.2+cu118 -f https://download.pytorch.org/whl/torch_stable.html
git lfs install
git clone https://huggingface.co/JoeyZoZ/MeaCap data/tmp
cd data/tmp
mv memory /workspace/MeaCap/data
mv checkpoints /workspace/MeaCap/data
pip install transformers
pip install sentence-transformers
