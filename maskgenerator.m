clear all;
close all;
cd('shape_Stimuli');

for image_num = 1:147
    image = imread(['Morph' num2str(image_num) '.JPG']);
    image = rgb2gray(image);
    img_w = size(image, 2); % width of pictures
    img_h = size(image, 1);
    for cols = 1:img_w
        for rows = 1:img_h
            if image(rows, cols) > 120
                image(rows, cols) = 255;
            else
                image(rows,cols) = 0;
            end
        end
    end    
    imwrite(image, [num2str(image_num) 'mask.JPG']);
end