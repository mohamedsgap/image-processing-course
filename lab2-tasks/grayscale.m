function [gray] = grayscale(rgb)

  [r, c,l]= size(rgb);
      if l==3
      R = rgb(:, :, 1);
      g = rgb(:, :, 2);
      b = rgb(:, :, 3);
      
      gray = .2*double(R) + .57*double(g) +  .4*double(b);
                
      end          
      
      gray = uint8(gray);
 
  imshow(gray);

end
