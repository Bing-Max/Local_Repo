function out_img = fourier_spectrum(img)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% ���и���Ҷ�任
f = fft2(img);
F = fftshift(f);

% ����۲죬ȡ����
out_img = log(1+abs(F));
end

