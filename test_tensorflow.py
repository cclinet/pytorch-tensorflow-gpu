import tensorflow as tf
is_gpu = tf.test.is_gpu_available()
if is_gpu:
    print(0)
else:
    print(-1)
