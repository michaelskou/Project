https://www.cnblogs.com/oftenlin/p/7856389.html

1.np.array构造函数
用法：np.array([1,2,3,4,5]) 

1.1 numpy array 和 python list 有什么区别？
标准Python的列表(list)中，元素本质是对象。如：L = [1, 2, 3]，需要3个指针和三个整数对象，对于数值运算比较浪费内存和CPU。因此，Numpy提供了ndarray(N-dimensional array object)对象：存储单一数据类型的多维数组。
1.2 如何强制生成一个 float 类型的数组
d = np.array([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]], dtype=np.float)
1.3 使用astype(int)对上述 array 进行强制类型转换
 
d.astype(int)
1.4.dtype 和type 的区别是什么
type(d) 和 d.dtype 一个返回的是d 的数据类型 nd.array 另一个返回的是数组中内容的数据类型

2. arange
用法 ：np.arange(0,10)  // 生成[0,1,2,3,4,5,6,7,8,9] 左开右闭不包括10
2.1.arange 和python 的range 函数的区别是什么 
arange可以生成浮点类型，而range只能是整数类型

3. reshape
np.arange(1,10).reshape((3,3)) 从(3,4)改为(4,3)并不是对数组进行转置，而只是改变每个轴的大小，数组元素在内存中的位置并没有改变
reshape函数是numpy中一个很常用的函数，作用是在不改变矩阵的数值的前提下修改矩阵的形状。
使用缺省值-1
缺省值-1代表我不知道要给行（或者列）设置为几，reshape函数会根据原矩阵的形状自动调整。

7.np.array 的数组切片
a.切片规则 [三冒号规则]
  [开始：结尾：步长]
b.开始为-1
  a[-1] 取最后一个
  a = [0,1,2,3,4,5,6,7]
  a[-1] = 7
c.结尾为-1（开始必须为大于等于0的数）
  a[2:-1] = [2,3,4,5,6]
d.步长为-1，意味着反转
  a[::-1]=[7,6,5,4,3,2,1]

8.特殊矩阵的生成
  np.ones((3,3))、np.zeros((3,3))、np.eye(1,1) 奇怪的是 eye 为啥不接收元祖作为参数呢？晕 eye 也没有 写成eye
  还有 a=[1,2,3] np.diag(a) 是生成1，2，3 为对角线的方阵

numpy.eye(N,M=None, k=0, dtype=<type 'float'>)
关注第一个第三个参数就行了
第一个参数：输出方阵（行数=列数）的规模，即行数或列数
第三个参数：默认情况下输出的是对角线全“1”，其余全“0”的方阵，如果k为正整数，则在右上方第k条对角线全“1”其余全“0”，k为负整数则在左下方第k条对角线全“1”其余全“0”。



