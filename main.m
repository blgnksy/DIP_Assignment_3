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

%begin question_2_a.m
img_sharpen=imread('./inputs/Assignment_3.jpg');
img_cropped=img_sharpen(100,210:260);
question_2_a(img_cropped);

% %begin question_2_c.m
img_to_filter=imread('./inputs/synthetic.jpg');
[img_h1,img_h2]=question_2_c(img_to_filter);
imwrite(img_h1,'./outputs/synthetic_filtered_laplacian_h1.jpg','jpg');
imwrite(img_h2,'./outputs/synthetic_filtered_laplacian_h2.jpg','jpg');
figure;
subplot(3,1,1), imshow(img_to_filter);
subplot(3,1,2), imshow(img_h1);
subplot(3,1,3), imshow(img_h2);

%begin question_2_d.m
img_to_filter=imread('./inputs/Assignment_3.jpg');
[img_h1,img_h2,img_h1_h2]=question_2_d(img_to_filter);
imwrite(img_h1,'./outputs/filtered_sobel_h1.jpg','jpg');
imwrite(img_h2,'./outputs/filtered_sobel_h2.jpg','jpg');
figure;
subplot(3,1,1), imshow(img_to_filter);
subplot(3,1,2), imshow(img_h1);
subplot(3,1,3), imshow(img_h2);
figure, imshow(img_h1_h2);

%begin question_2_e.m
gdir=question_2_e(img_h1,img_h2);
figure, imagesc(gdir);

%begin question_3_a.m
question_3_a(imread('./inputs/Assignment_3.jpg'));

%begin question_3_b.m
for c=1:1:3
    [avg_filtered_image,weighted_avg_filtered_image]=question_3_b(imread(sprintf('./outputs/noisy_%d.jpg', c)));
    imwrite(avg_filtered_image,sprintf('./outputs/smooth_avg(%d).jpg', c));
    imwrite(weighted_avg_filtered_image,sprintf('./outputs/smooth_wavg(%d).jpg', c));
end

%begin question_3_c.m
for c=1:1:3
    [geo_mean_filtered,harmonic_mean_filtered]=question_3_c(imread(sprintf('./outputs/noisy_%d.jpg', c)));
    imwrite(geo_mean_filtered,sprintf('./outputs/smooth_geomean(%d).jpg', c));
    imwrite(harmonic_mean_filtered,sprintf('./outputs/smooth_harmonic(%d).jpg', c));
end

%begin question_4_b.m
img_road=im2double(imread('./inputs/roads.jpg'));
[filt_cos,filt_disk,filt_tang,filt_gauss]=question_4_b(32,30,2,1);
filt_crafted=filt_gauss.*filt_disk.*filt_tang;
img_filt_crafted=imfilter(img_road,filt_crafted);
figure;
imshow(img_filt_crafted),title('crafted filter');
imwrite(img_filt_crafted,'./outputs/composite_filter.jpg','jpg');

