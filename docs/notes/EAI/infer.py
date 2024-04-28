import torch
import torch.nn as nn
from torchvision import datasets, transforms
import torch.optim as optim
import torchvision
from minist import LeNet5
import matplotlib.pyplot as plt
import numpy as np


model_new = LeNet5()
# 加载我们保存的模型
model_new.load_state_dict(torch.load('./lenet5_model_1epoch.pth'))
print('Model loaded from lenet5_model.pth')
transform = transforms.Compose([transforms.Resize(32), transforms.ToTensor()])  # 改变图像大小为32x32，因为LeNet-5需要的输入大小为32x32，然后转化为Tensor类型
testset = datasets.MNIST(root='./data', train=False, download=True, transform=transform) # 加载测试数据集
testloader = torch.utils.data.DataLoader(testset, batch_size=4, shuffle=False)  #创建加载器

def matplotlib_imshow(img):
    img = img / 2 + 0.5     # unnormalize 因为我们在预处理阶段对图像进行了归一化处理，所以这里需要反归一化
    npimg = img.numpy()     # 转换为NumPy数组以便被Matplotlib接受
    plt.imshow(np.transpose(npimg, (1, 2, 0))) #转置图像，因为对于PyTorch，它期望形状为(C,H,W)，我们需要转换为(H,W,C)以便被Matplotlib接受

# 测试新加载的模型
with torch.no_grad():
    for data in testloader:
        images, labels = data
        outputs = model_new(images,True)  # 更改为model_new
        _, predicted = torch.max(outputs, 1)

        matplotlib_imshow(torchvision.utils.make_grid(images))
        print('GroundTruth: ', ' '.join('%5s' % testset.classes[labels[j]] for j in range(4)))
        print('Predicted: ', ' '.join('%5s' % testset.classes[predicted[j]] for j in range(4)))

        plt.show()