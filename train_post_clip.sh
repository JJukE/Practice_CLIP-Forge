CUDA_VISIBLE_DEVICES=0 \
# python train_post_clip.py --dataset_path /root/data/CLIPForge/ShapeNet/ --checkpoint best_iou --num_views 1 --text_query "a chiar" "a limo" "a jet plane" # voxel
python train_post_clip.py --dataset_path /root/data/CLIPForge/ShapeNet/ --input_type Pointcloud --output_type Pointcloud --checkpoint best --num_views 1 --text_query "a chiar" "a limo" "a jet plane" # pointcloud