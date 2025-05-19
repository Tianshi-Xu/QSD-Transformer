## Install
- pytorch
## Train ImageNet
```
cd classification
bash train.sh
```
There are several configs you need to specify:
- `finetune`, the path of initial pretrained model
- `resume`, the path of resumed model, works only when you need to resume a training
- `wbit`, 32 means no quantization, 4 means 4-bit quantization
- `batch_size`, the larger, the better
- `kd`, when you do not want to use knowledge distillation, delete it `distillation_type`, and `teacher_model`.
- `model`, spikformer_18_512_CAFormer_less_conv means no 3x3 conv in transformer block, 
- `att_type`, SDSA1 or others.