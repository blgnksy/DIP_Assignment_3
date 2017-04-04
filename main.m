img_faces=imread('./inputs/faces.png');
img_face_template=double(imread('./inputs/face_template.jpg'));

figure;
subplot(1,3,1),imshow(img_faces);
subplot(1,3,2),imshow(img_face_template);

c=imfilter(img_faces,img_face_template,'corr');
subplot(1,3,3),imshow(c);
%imfilter(A,h,'conv')

