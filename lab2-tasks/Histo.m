function [] = Histo( I )
I = double(I);
[H W] = size(I);
hist = zeros(256 , 1);
for i = 1:H
    for j = 1:W
        x = I(i,j);
        hist(x,1)=hist(x+1,1)+1;
        
    end
end
bar(hist);
end

