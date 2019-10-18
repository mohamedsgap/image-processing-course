function [ gray_img1, gray_img2, gray_img3 ] = rgbtogray( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

img = double(img);
gray_img1 = (img(:,:,1) +img(:,:,2)+img(:,:,3))/3;
%gray_img1 = uint8(gray_img1);

gray_img2 = img(:,:,2);
gray_img2 = uint8(gray_img2);
gray_img2 = uint8(gray_img2);

gray_img3 = (img(:,:,1)*.3 +img(:,:,2)*.4 +img(:,:,3)*.3);
gray_img3 = uint8(gray_img3);
%gray_img3 = cutoff(gray_img3, 255);


%figure , imshow(gray_img1);
%figure , imshow(gray_img2);
%figure , imshow(gray_img3);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [gray ] = rgbt0gray( rgb )
rgb=double(rgb);
[w ,h,l]=size(rgb);

for i=1:w 
    for j=1:h
        if l==1
       gray=rgb(:,:,1);
        end
        if l==2
       gray=rgb(:,:,2);
        end
        if l==3
       gray=rgb(:,:,3);
        end
    end
end

gray=uint8(gray);
imshow(gray);


end
