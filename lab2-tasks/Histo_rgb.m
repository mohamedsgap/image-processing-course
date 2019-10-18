function [] = Histo_rgb( I )
I = double(I);
[H W L] = size(I);
R = zeros(256 , 1);
G = zeros(256 , 1);
B = zeros(256 , 1);
for i = 1:H
    for j = 1:W
        x = I(i,j,1);
        R(x,1)=R(x+1,1)+1;
        y = I(i,j,2);
        G(y,1)=G(y+1,1)+1;
        %z= I(i,j,3);
        %B(z,1)=B(z+1,1)+1;
    end
end
bar(R);
bar(G);
%bar(B);
end

