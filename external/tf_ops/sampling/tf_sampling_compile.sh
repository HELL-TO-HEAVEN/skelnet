nvcc = /usr/local/cuda/bin/nvcc
cudalib = /usr/local/cuda/lib64
tensorflow = /usr/local/lib/python3.5/dist-packages/tensorflow/include
TF_LIB = /usr/local/lib/python3.5/dist-packages/tensorflow


    $(nvcc) tf_sampling_g.cu -o tf_sampling_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_sampling.cpp tf_sampling_g.cu.o -o tf_sampling_so.so -shared -fPIC -I /home/lqyu/software/anaconda2/lib/python2.7/site-packages/tensorflow/include  -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0
