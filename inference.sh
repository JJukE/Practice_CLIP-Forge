CUDA_VISIBLE_DEVICES=0 \
# python test_post_clip.py --checkpoint_dir_base "/root/dev/exps/Autoencoder_Shapenet_Voxel_Implicit_128_add_noise_1/checkpoints" --checkpoint best_iou --checkpoint_nf best --experiment_mode save_voxel_on_query --checkpoint_dir_prior "/root/dev/exps/Autoencoder_Shapenet_Voxel_Implicit_128_add_noise_1/Clip_Conditioned_realnvp_half_5_best_iou_1_B-32_1024_1/checkpoints" --text_query "a truck" "a round chair" "a limo" --threshold 0.1 --output_dir "/root/dev/exps/230220_rendered_shape"  # generate shape renderings
# python test_post_clip.py --checkpoint_dir_base "/root/dev/exps/Autoencoder_Shapenet_Voxel_Implicit_128_add_noise_1/checkpoints" --checkpoint best_iou --checkpoint_nf best --experiment_mode cls_cal_category --checkpoint_dir_prior "/root/dev/exps/Autoencoder_Shapenet_Voxel_Implicit_128_add_noise_1/Clip_Conditioned_realnvp_half_5_best_iou_1_B-32_1024_1/checkpoints" --threshold 0.05 --classifier_checkpoint "/root/dev/exps/classifier/checkpoints/best.pt" # to calculate accuracy
# python test_post_clip.py --checkpoint_dir_base "/root/dev/exps/Autoencoder_Shapenet_Voxel_Implicit_128_add_noise_1/checkpoints" --checkpoint best_iou --checkpoint_nf best --experiment_mode fid_cal --dataset_path "/root/data/CLIPForge/ShapeNet/" --checkpoint_dir_prior "/root/dev/exps/Autoencoder_Shapenet_Voxel_Implicit_128_add_noise_1/Clip_Conditioned_realnvp_half_5_best_iou_1_B-32_1024_1/checkpoints" --threshold 0.05 --classifier_checkpoint "/root/dev/exps/classifier/checkpoints/best.pt" # to calculate FID
# python test_post_clip.py --checkpoint_dir_base "/root/dev/exps/models/autoencoder" --checkpoint best_iou --checkpoint_nf best --experiment_mode save_voxel_on_query --checkpoint_dir_prior "/root/dev/exps/models/prior" --text_query "a truck" "a round chair" "a limo" --threshold 0.1 --output_dir "/root/dev/exps/230220_rendered_shape_author"  # generate shape renderings (author's)
# python test_post_clip.py --checkpoint_dir_base "/root/dev/exps/models/autoencoder" --checkpoint best_iou --checkpoint_nf best --experiment_mode cls_cal_category --checkpoint_dir_prior "/root/dev/exps/models/prior" --threshold 0.05 --classifier_checkpoint "/root/dev/exps/classifier/checkpoints/best.pt" # to calculate accuracy (author's)
python test_post_clip.py --checkpoint_dir_base "/root/dev/exps/models/autoencoder" --checkpoint best_iou --checkpoint_nf best --experiment_mode fid_cal --dataset_path "/root/data/CLIPForge/ShapeNet/" --checkpoint_dir_prior "/root/dev/exps/models/prior" --threshold 0.05 --classifier_checkpoint "/root/dev/exps/classifier/checkpoints/best.pt" # to calculate FID (author's)