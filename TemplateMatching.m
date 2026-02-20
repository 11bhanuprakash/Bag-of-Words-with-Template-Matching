  Img = imread('images/1.jpg');
GrImg = rgb2gray(Img)
subplot(2,2,1),imshow(GrImg); title("Image")
Temp = imread(['words/1.jpg']); 
GrTemp = rgb2gray(Temp)
subplot(2,2,2),imshow(GrTemp); title("Template")
 
U = GrImg(:,:,1);
V = GrTemp(:,:,1);

corr_coeff = zeros([size(U,1),size(U,2)]);

for i = 1:size(U,1)-size(V,1)%finding correlation coefficient
    for j = 1:size(U,2)-size(V,2)
        
        corr_coeff(i,j) = corr2(U(i:i+size(V,1)-1,j:j+size(V,2)-1),V);
    end
end
NCC_Val = max(corr_coeff(:));%finding the maxium correlation coefficient
[y,x]=find(corr_coeff==NCC_Val);%finding X and Y values corresponding to maxium correlation coefficient

 subplot(2,2,3),imshow(GrImg); title("Best Match")
drawrectangle(gca,'Position',[x,y,size(GrTemp,2),size(GrTemp,1)],'FaceAlpha',0);