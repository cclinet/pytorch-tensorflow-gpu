import torch
is_gpu = torch.cuda.is_available()
if is_gpu:
    print(0)
else:
    print(-1)
