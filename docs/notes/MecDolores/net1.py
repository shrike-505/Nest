class mynet:
    def __init__(self):
        self.a = 6
        self.b = 3
        self.grad = [0,0]
        self.lr = 0.01
    def forward(self, x):
        return self.a * x[0] + self.b
    def loss(self, ybar, y):
        return (ybar - y) ** 2
    def setp(self):
        self.a -= self.lr * self.grad[0]
        self.b -= self.lr * self.grad[1]

model = mynet()

data = [[20, 170]]
for epoch in range(len(data)):
    model.grad = [0, 0]
    y = model.forward(data[epoch])
    loss = model.loss(y, data[epoch][1])
    model.setp()
    print('epoch:', epoch, 'loss:', loss, 'a:', model.a, 'b:', model.b)


class soft:
    def __init__(self):
        self.a2 = 2
        self.a3 = 5
        self.a4 = 4
        self.grad = [0,0,0,0]
        self.lr = 0.0001
    
    def softmax(self, x):
        return x / x.sum()
