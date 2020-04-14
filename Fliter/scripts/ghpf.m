function out_img = ghpf(img, d0)
% img Ϊ�������ͼ��  d0 Ϊ�趨�Ľ�ֹƵ��  out_img Ϊ��˹���ص�ͨ�˲������Ľ��
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

%���ȶ�ͼ����и���Ҷ�任���ӿռ���ת����Ƶ����
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

% ������ͼ����з�����Ҷ�任
out_img = uint8(real(ifft2(ifftshift(F))));
end

