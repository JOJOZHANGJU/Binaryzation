loadPath = '';
savePath = '';
imgFiles = dir([loadPath,'*.tif']);
for i = 1:length(imgFiles)
    I = imread(strcat(loadPath,imgFiles(i).name));
    thresh = graythresh(I);
    I2 = im2bw(I,thresh);
    imwrite(I2,strcat(savePath,imgFiles(i).name));
end
