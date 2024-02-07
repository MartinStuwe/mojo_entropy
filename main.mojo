from math import log2, mul


def main():
    
    var v1 = SIMD[DType.float32, 8](0.2, 0.1, 0.1, 0.1, 0.2, 0.1, 0.1, 0.1)

    let v2 = log2[DType.float32, 8](v1)
    var v3 = mul[DType.float32, 8](v1, v2)

    var entropy: Float32 = 0.0
    for i in range(8):
        entropy = entropy + v3[i]   

    entropy = -1 * entropy

    print("Entropy: ", entropy)