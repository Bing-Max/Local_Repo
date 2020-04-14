function out_img = fourier_spectrum(img)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
% 进行傅里叶变换
f = fft2(img);
F = fftshift(f);

% 方便观察，取对数
out_img = log(1+abs(F));
end

