import torch
import torch.nn as nn
from torchvision import datasets, transforms
import torch.optim as optim
import torchvision
import matplotlib.pyplot as plt
import numpy as np
# 定义LeNet5模型

def matplotlib_imshow(img):
    img = img / 2 + 0.5     # unnormalize 因为我们在预处理阶段对图像进行了归一化处理，所以这里需要反归一化
    npimg = img.numpy()     # 转换为NumPy数组以便被Matplotlib接受
    plt.imshow(np.transpose(npimg, (1, 2, 0))) #转置图像，因为对于PyTorch，它期望形状为(C,H,W)，我们需要转换为(H,W,C)以便被Matplotlib接受



class LeNet5(nn.Module):
    def __init__(self):
        super(LeNet5, self).__init__()

        self.conv1 = nn.Conv2d(1, 6, 5)
        self.conv2 = nn.Conv2d(6, 16, 5)
        self.fc1 = nn.Linear(16*5*5, 120) 
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, 10)

    def forward(self, x,show=False):
        x = nn.functional.max_pool2d(nn.functional.relu(self.conv1(x)), (2, 2))
        # if show :
        #     matplotlib_imshow(x[0][0:3])
            # matplotlib_imshow(x[0])
        x = nn.functional.max_pool2d(nn.functional.relu(self.conv2(x)), (2, 2))
        # if show :
        #     matplotlib_imshow(x[0][0:3])
        # if show :
        #     matplotlib_imshow(x[0])
        x = x.view(-1, self.num_flat_features(x))
        x = nn.functional.relu(self.fc1(x))
        x = nn.functional.relu(self.fc2(x))
        x = self.fc3(x)
        return x

    def num_flat_features(self, x):
        size = x.size()[1:]  # 除批量大小外的所有维度
        num_features = 1
        for s in size:
            num_features *= s
        return num_features

if __name__ == '__main__':
# 载入MNIST数据集
    transform = transforms.Compose([transforms.Resize(32), transforms.ToTensor()])  # 改变图像大小为32x32，因为LeNet-5需要的输入大小为32x32，然后转化为Tensor类型

    trainset = datasets.MNIST(root='./data', train=True, download=True, transform=transform)
    trainloader = torch.utils.data.DataLoader(trainset, batch_size=32, shuffle=True)

    # 初始化模型
    model = LeNet5()
    # 声明优化算法
    optimizer = optim.SGD(model.parameters(), lr=0.01)
    # 声明损失函数
    criterion = nn.CrossEntropyLoss()

    # 训练
    for epoch in range(1):  # 迭代10个epoch
        for i, data in enumerate(trainloader, 0):
            inputs, labels = data
            optimizer.zero_grad()  # 梯度清零
            outputs = model(inputs)  # 前向传播
            loss = criterion(outputs, labels)  # 计算损失
            loss.backward()  # 反向传播
            optimizer.step()  # 更新权重
        print('Epoch %d finished' % (epoch+1))

    print('Training finished')

    torch.save(model.state_dict(), './lenet5_model_1epoch.pth')
    print('Model saved as lenet5_model.pth')