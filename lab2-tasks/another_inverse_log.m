close all;
clear all;

%Load, Resize & Show Image
F=imread('surftocat.png');
F=imresize(F,0.5);
figure(1);
subplot(1,2,1);
title('ORIGINAL IMAGE');
imshow(F);

%Convert to grayscale
g = 0.2989 * F(:,:,1) + 0.5870 * F(:,:,2) + 0.1140 * F(:,:,3); 


C=50;

%formula for log function transformation
H=uint8(C.*log(double(1+g)));
   
subplot(1,3,1);
imshow(F);
title('Original Image');

subplot(1,3,2);
imshow(g);
title('Gray Image');
 
subplot(1,3,3);
imshow(H);
logtext=sprintf('Logarithmic Operator for C=%2.1f',C);
title(logtext);
