# Import packages firstly.
import matplotlib.pyplot as plt
import open3d as o3d
import imageio
import numpy as np
import cv2

def read_vis_model(model_path):
    '''
    Input:
    model_path: string, file path of a 3d model
    '''
    ########################
    # Write your code here
    ply = o3d.io.read_point_cloud(model_path)
    o3d.visualization.draw_geometries([ply])
    ########################
read_vis_model('cat.ply')