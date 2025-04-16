CUDA_VISIBLE_DEVICES=0 torchrun --standalone --nproc_per_node=1 \
  main_finetune.py \
  --batch_size 128 \
  --blr 3e-4 \
  --warmup_epochs 15 \
  --epochs 300 \
  --model spikformer_18_512_CAFormer_less_conv \
  --data_path /data/dataset/imagenet/ \
  --output_dir ./out/less_conv_SDSA1 \
  --log_dir ./out/less_conv_SDSA1 \
  --dist_eval \
  --att_type SDSA1 \
  --kd \
  --teacher_model caformer_b36_in21ft1k \
  --distillation_type hard \
  --wbit 32
  # 
  # --resume /home/xts/code/SNN/QSD-Transformer/classification/out/att_no_conv3/best_checkpoint.pth
# cd /code/MAE/sdtv2
# CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 torchrun --standalone --nproc_per_node=8 \
#   main_finetune.py \
#   --batch_size 196 \
#   --blr 6e-4 \
#   --warmup_epochs 15 \
#   --epochs 350 \
#   --model spikformer12_512_T1 \
#   --data_path /dataset/ImageNet2012/ \
#   --output_dir /userhome/DYS/55M_300 \
#   --log_dir /userhome/DYS/52M_300 \
#   --model_mode new_design \
#   --dist_eval
# CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 torchrun --standalone --nproc_per_node=8 \
#   main_finetune.py \
#   --batch_size 196 \
#   --blr 6e-4 \
#   --warmup_epochs 10 \
#   --epochs 200 \
#   --model spikformer8_768_T1 \
#   --data_path /dataset/ImageNet2012/ \
#   --output_dir /userhome/DYS/88M \
#   --log_dir /userhome/DYS/8M \
#   --model_mode new_design \
#   --dist_eval

