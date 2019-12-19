# 第二次作业

### 实现相应的滤波盒：

* imnoise_script.m 是 给图像添加噪声的脚本，主要使用matlab已有的方法。
* getMatrix.m 是用于获得滤波盒和其映射矩阵的脚本，主要为其它的滤波方法服务。
* 滤波实现：
  * athmMeanFliter.m  ----算数均值滤波
  * geomMeanFliter.m  ----几何均值滤波
  * harmMeanFliter.m  ----谐波均值滤波
  * contrHarmMeanFliter.m  ----逆谐波均值滤波
  * medianFliter.m    ----中值滤波
  * maxFliter.m       ----最大值滤波
  * minFliter.m       ----最小值滤波
  * midFliter.m       ----中点滤波
  * modf_AlphaFliter.m     ----修正的 $\alpha$ 均值滤波
* img
  * Lena_no_**.png都是噪声图像
  * Lena_*fliter_*.png 是滤波处理后的图像，后边的gs 和 sp分别对应高斯噪声和椒盐噪声，最后的数字代表参数（如果有）
  * 作业中对噪声的处理一般都用的是椒盐1 和 高斯1的噪声图像
  