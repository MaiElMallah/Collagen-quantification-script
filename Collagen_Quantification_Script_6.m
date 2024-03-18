%% Load in the image
image = imread('/Users/davina/Desktop/ST002/e1606 tg mt_0004.tif');
test = image(:,:,1:3);
%imshow(test);
%% Convert to Lab color space
lab_test = rgb2lab(test);
%% Classify image by k-means clustering
ab = lab_test(:,:,2:3);
ab = im2single(ab);
nColors = 6;
pixel_labels = imsegkmeans(ab,nColors,'NumAttempts',6);
%imshow(pixel_labels,[]);
%% Separate image by three clusters
mask1 = pixel_labels==1;
cluster1 = test .* uint8(mask1);

mask2 = pixel_labels==2;
cluster2 = test .* uint8(mask2);

mask3 = pixel_labels==3;
cluster3 = test .* uint8(mask3);

mask4 = pixel_labels==4;
cluster4 = test .* uint8(mask4);

mask5 = pixel_labels==5;
cluster5 = test .* uint8(mask5);

mask6 = pixel_labels==6;
cluster6 = test .* uint8(mask6);

%% Threshold
L = lab_test(:,:,1);

threshold_blue = logical((L<99)&(L>1));
blue_mask = mask2;
blue_threshold_mask = threshold_blue .* blue_mask;

threshold_blue2 = logical((L<99)&(L>1));
blue2_mask = mask4;
blue2_threshold_mask = threshold_blue2 .* blue2_mask;

threshold_blue3 = logical((L<99)&(L>1));
blue3_mask = mask5;
blue3_threshold_mask = threshold_blue3 .* blue3_mask;

threshold_red = logical((L<99)&(L>1));
red_mask = mask1;
red_threshold_mask = threshold_red .* red_mask;

threshold_red2 = logical((L<99)&(L>1));
red2_mask = mask6;
red2_threshold_mask = threshold_red2 .* red2_mask;

threshold_white = logical((L<99)&(L>1));
white_mask = mask3;
white_threshold_mask = threshold_white .* white_mask;

new_blue = test .* uint8(blue_threshold_mask);
new_red = test .* uint8(red_threshold_mask);
new_red2 = test .* uint8(red2_threshold_mask);
new_blue2 = test .* uint8(blue2_threshold_mask);
new_blue3 = test .* uint8(blue3_threshold_mask);
new_white = test .* uint8(white_threshold_mask);
%% Quantifying collagen content
blue = nnz(blue_threshold_mask);
blue2 = nnz(blue2_threshold_mask);
blue3 = nnz(blue3_threshold_mask);
red = nnz(red_threshold_mask);
red2 = nnz(red2_threshold_mask);
white = nnz(white_threshold_mask);

zblue_percentage_T = (blue+blue2+blue3)/(blue+blue2+blue3+red+red2+white);
zred_percentage_T = (red+red2)/(blue+blue2+blue3+red+red2+white);
zwhite_percentage_T = (white)/(blue+blue2+blue3+red+red2+white);

s=size(test);


%old_percentage = blue./(s(1).*s(2).*s(3));


%% 
x = 3;

if x < 2
    
    imshow(cluster1);
    title('Cluster 1');

    figure, imshow(cluster2);
    title('Cluster 2');

    figure, imshow(cluster3);
    title('Cluster 3');

    figure, imshow(cluster4);
    title('Cluster 4');

    figure, imshow(cluster5);
    title('Cluster 5');

    figure, imshow(cluster6);
    title('Cluster 6');
    
end

%histogram(L)