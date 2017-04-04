%begin question_1.m
img_faces=imread('./inputs/faces.png');
img_face_template=imread('./inputs/face_template.jpg');


figure;
subplot(1,4,1), imshow(img_faces);
subplot(1,4,2), imshow(img_face_template);
[img_corr,img_thresholded]=question_1(img_faces,img_face_template);
imwrite(img_corr,'./outputs/correlation_response.jpg','jpg');
imwrite(img_thresholded,'./outputs/detected_faces.jpg','jpg');
subplot(1,4,3),imshow(img_corr);
subplot(1,4,4),imshow(img_thresholded);


