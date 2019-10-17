% Following MATLAB function will take a grayscale  
% or an RGB image as input and will return a 
% binary image as output  
   
function [binary] = RGB2Binary(img)  
   
     [x, y, z]=size(img); 
   
     % if Read Image is an RGB Image then convert  
     % it to a Gray Scale Image For an RGB image  
     % the value of z will be 3 and for a Grayscale 
     % Image the value of z will be 1 
   
    if z==3 
         img=rgb2gray(img); 
    end
   
    % change the class of image  
    % array from 'unit8' to 'double' 
    img=double(img); 
   
    % Calculate sum of all the gray level 
    % pixel's value of the GraySacle Image 
    sum=0; 
    for i=1:x 
         for j=1:y 
        sum=sum+img(i, j); 
     end
     end
   
    % Calculate Threshold value by dividing the  
    % calculated sum by total number of pixels  
    % total number of pixels = rows*columns (i.e x*y)  
    threshold=sum/(x*y); 
    
    % Create a image array having same number 
    % of rows and column as Original image 
    % with all elements as 0 (Zero). 
    binary=zeros(x, y); 
   
    % iterate over all the pixels of Grayscale  
    % Image and Assign 1 to binary(i, j), if gray 
    % level value is >=  threshold value      
    % else assign 0 to binary(i, j) . 
   
    for i=1:x 
     for j=1:y 
        if img(i, j) >= threshold 
                binary(i, j) = 1; 
        else
            binary(i, j)=0; 
        end
     end
    end
end
   
   
% driver function  
   
% Read the target Image 
%%img=imread('peppers.png'); 
   
% Call convert2binary() function to convert 
% Image to binary using thresholding 
%%binary_image=RGB2Binary(img); 
   
% Display result 
%%imshow(binary_image); 