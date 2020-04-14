img = imread('..\img\xuyou.png'); %��ȡͼ��

subplot(3,3,1),imshow(img),title('ԭʼͼ��');

img = double(rgb2gray(img));
subplot(3,3,2),imshow(fourier_spectrum(img),[]),title('ԭʼͼ��Ƶ��ͼ');
w = mat2gray(fourier_spectrum(img));
imwrite(w,'..\img\result\xuyou_spectrum.png')


subplot(3,3,4),imshow(glpf(img,5)),title('��ͨ�˲���������ͼ�� d0 = 5');
subplot(3,3,5),imshow(glpf(img,15)),title('��ͨ�˲���������ͼ�� d0 = 15');
subplot(3,3,6),imshow(glpf(img,60)),title('��ͨ�˲���������ͼ�� d0 = 60');

subplot(3,3,7),imshow(ghpf(img,5)),title('��ͨ�˲���������ͼ�� d0 = 5');
subplot(3,3,8),imshow(ghpf(img,15)),title('��ͨ�˲���������ͼ�� d0 = 15');
subplot(3,3,9),imshow(ghpf(img,30)),title('��ͨ�˲���������ͼ�� d0 = 30');


imwrite(glpf(img,5),'..\img\result\xuyou_glpf_5.png');
imwrite(glpf(img,15),'..\img\result\xuyou_glpf_15.png');
imwrite(glpf(img,60),'..\img\result\xuyou_glpf_60.png');
imwrite(ghpf(img,5),'..\img\result\xuyou_ghpf_5.png');
imwrite(ghpf(img,15),'..\img\result\xuyou_ghpf_15.png');
imwrite(ghpf(img,30),'..\img\result\xuyou_ghpf_30.png');