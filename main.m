% %begin question_1.m
% img_faces=imread('./inputs/faces.png');
% img_face_template=imread('./inputs/face_template.jpg');
% 
% 
% figure;
% subplot(1,4,1), imshow(img_faces);
% subplot(1,4,2), imshow(img_face_template);
% 
% [img_corr,img_thresholded]=question_1(img_faces,img_face_template);
% imwrite(img_corr,'./outputs/correlation_response.jpg','jpg');
% imwrite(img_thresholded,'./outputs/detected_faces.jpg','jpg');
% 
% subplot(1,4,3),imshow(img_corr);
% subplot(1,4,4),imshow(img_thresholded);

%begin question_2_a.m
% img_sharpen=imread('./inputs/Assignment_3.jpg');
% img_cropped=img_sharpen(100,210:260);
% question_2_a(img_cropped);

%begin question_2_c.m
img_to_filter=imread('./inputs/synthetic.jpg');
[img_h1,img_h2]=question_2_c(img_to_filter);
imwrite(img_h1,'./outputs/synthetic_filtered_laplacian_h1.jpg','jpg');
imwrite(img_h2,'./outputs/synthetic_filtered_laplacian_h2.jpg','jpg');
figure;
subplot(3,1,1), imshow(img_to_filter);
subplot(3,1,2), imshow(img_h1);
subplot(3,1,3), imshow(img_h2);

% %begin question_2_d.m
% img_to_filter=imread('./inputs/Assignment_3.jpg');
% [img_h1,img_h2]=question_2_c(img_to_filter);
% imwrite(img_h1,'./outputs/filtered_sobel_h1.jpg','jpg');
% imwrite(img_h2,'./outputs/filtered_sobel_h2.jpg','jpg');
% figure;
% subplot(3,2,1), imshow(img_to_filter);
% subplot(3,2,3), imshow(img_h1);
% subplot(3,2,5), imshow(img_h2);
% subplot(3,2,4), imshow(img_h1(200:250,200:250));
% subplot(3,2,6), imshow(img_h2(200:250,200:250));
