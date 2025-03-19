CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 torchrun --standalone --nproc_per_node=8 \
  main_finetune.py \
  --batch_size 196 \
  --blr 6e-4 \
  --warmup_epochs 15 \
  --epochs 300 \
  --model spikformer_8_15M_CAFormer \
  --data_path /opt/dataset/imagenet/ \
  --output_dir ./out/att_no_conv3 \
  --log_dir ./out/att_no_conv3 \
  --dist_eval \
  --finetune ../pretrained/15M_1x4_w4a1t4_74_5.pth \
  --wbit 32
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


