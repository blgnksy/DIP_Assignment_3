%====================================================================
%> @brief You should give brief information about the function here.
%>
%>
%> @author ucinar
%>
%> @param param1 : explanation of input1
%> @param param2 : explanation of input2
%>
%> @retval output1 : explanation of output1
%> @retval output2 : explanation of output2
%>
%> @example 
%>[ output1 output2 ] = comment_style(param1,param2);
%>
%====================================================================
function  [img_corr, img_corr_thresholded]  = question_1(img,img_template)
img=im2double(img);
img_template=im2double(img_template);

score=imfilter(img,img_template,'corr');
img_corr=score./max(max(score));
subplot(1,3,3), imshow(img_corr);

img_corr_thresholded=im2bw(img_corr,0.56);
end
