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

#Run scripts
python inference.py --use_prompt  --memory_id cc3m --img_path ./image_example --lm_model_path ./data/checkpoints/CBART_one_billion --vl_model openai/clip-vit-base-patch32 --wte_model_path sentence-transformers/all-MiniLM-L6-v2 --parser_checkpoint lizhuang144/flan-t5-base-VG-factual-sg
