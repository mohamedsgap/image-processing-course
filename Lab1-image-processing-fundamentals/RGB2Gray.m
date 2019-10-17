function [RGB_to_gray] = RGB2Gray(img)
    i = img;
    R = i(:,:,1);
    G = i(:,:,2);
    B = i(:,:,3);
    new_img = zeros(size(i, 1), size(i,2) ,'uint8' );
    for x=1:size(i,1)
        for y=1:size(i,2)
            new_img(x, y) = ((R(x,y)*0.3)+(G(x,y)*0.6)+(B(x,y)*0.1)); 
        end
    end
    RGB_to_gray = new_img;
end

%  the running commands in matlab command window!      
%img = imread('surftocat.png');
%the_output = RGB2Gray(img);
%figure, imshow(the_output);
%

    




