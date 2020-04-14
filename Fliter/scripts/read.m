img = imread('..\img\Lena.png'); %读取图像

subplot(3,3,1),imshow(img),title('原始图像');

img = double(img);
subplot(3,3,2),imshow(fourier_spectrum(img),[]),title('原始图像频谱图');
w = mat2gray(fourier_spectrum(img));
imwrite(w,'..\img\result\Lena_spectrum.png')


subplot(3,3,4),imshow(blpf(img,5)),title('低通滤波器处理后的图像 d0 = 5');
subplot(3,3,5),imshow(blpf(img,15)),title('低通滤波器处理后的图像 d0 = 15');
subplot(3,3,6),imshow(blpf(img,60)),title('低通滤波器处理后的图像 d0 = 60');

subplot(3,3,7),imshow(bhpf(img,5)),title('高通滤波器处理后的图像 d0 = 5');
subplot(3,3,8),imshow(bhpf(img,15)),title('高通滤波器处理后的图像 d0 = 15');
subplot(3,3,9),imshow(bhpf(img,30)),title('高通滤波器处理后的图像 d0 = 30');

imwrite(blpf(img,5),'..\img\result\Lena_blpf_5.png');
imwrite(blpf(img,15),'..\img\result\Lena_blpf_15.png');
imwrite(blpf(img,60),'..\img\result\Lena_blpf_60.png');
imwrite(bhpf(img,5),'..\img\result\Lena_bhpf_5.png');
imwrite(bhpf(img,15),'..\img\result\Lena_bhpf_15.png');
imwrite(bhpf(img,30),'..\img\result\Lena_bhpf_30.png');