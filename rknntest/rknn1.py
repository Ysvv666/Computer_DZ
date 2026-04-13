import cv2
import numpy as np
from rknn_toolkit2 import RKNN


# ==================== 改这里 ====================
RKNN_MODEL = "/home/duzhong/dzacs/src/rknn_pt/model/duzhong0731.rknn"
IMG_PATH   = "/home/duzhong/dzacs/src/resource/dataset/1_wrench/wrench_006.jpg"
INPUT_SIZE = (640, 480)           
CLASSES = [
    "wrench", "soldering_iron", "electrodrill", 
    "tape_measure", "screwdriver", "pliers", 
    "oscillograph", "multimeter", "printer", 
    "keyboard", "mobile_phone", "mouse", 
    "headphones", "monitor", "speaker", 
    "0", "1", "2", "3", "4", "5", "6", 
    "7", "8", "9", "goal", "redgoal", "unhitgoal"
]
# ==============================================


# 初始化RKNN
rknn = RKNN()
ret = rknn.load_rknn(RKNN_MODEL)
if ret != 0:
    print("加载模型失败")
    exit()

# 初始化运行环境（PC仿真模式）
ret = rknn.init_runtime(target="rk3588")
if ret != 0:
    print("初始化失败")
    exit()

# 读图 + 预处理
img = cv2.imread(IMG_PATH)
img_resized = cv2.resize(img, INPUT_SIZE)

# 推理
outputs = rknn.inference(inputs=[img_resized])

# 输出结果
print("模型输出形状：")
for i, out in enumerate(outputs):
    print(f"output {i}: {out.shape}")

# 如果你是YOLO格式，我可以继续帮你写画框代码
# 显示图片
cv2.imshow("result", img)
cv2.waitKey(0)