CUDA_VISIBLE_DEVICES=0 \
# python train_autoencoder.py --dataset_path /root/data/CLIPForge/ShapeNet/ # voxel
python train_autoencoder.py --dataset_path /root/data/CLIPForge/ShapeNet/ --input_type Pointcloud --output_type Pointcloud # pointcloud