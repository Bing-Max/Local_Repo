function out_img = ghpf(img, d0)
% img 为待处理的图像，  d0 为设定的截止频率  out_img 为巴斯沃特低通滤波处理后的结果
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

%首先对图像进行傅里叶变换，从空间域转换到频率域
f = fft2(img);
F = fftshift(f);

[M,N] = size(F);
n1 = floor(M/2);
n2 = floor(N/2);

for i = 1:M
    for j = 1:N
        d = sqrt((i-n1)^2 + (j-n2)^2);
        h=1 - exp(-1/2*(d^2/d0^2));
        F(i,j) = h * F(i,j);
    end
end

% 处理后的图像进行反傅里叶变换
out_img = uint8(real(ifft2(ifftshift(F))));
end

