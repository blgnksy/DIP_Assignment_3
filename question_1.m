%====================================================================
%> @brief You should give brief information about the function here.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param img : Image where template matching is implemented on.
%> @param img_template : Template to be searched.
%>
%> @retval img_corr : Correlation response of filter
%> @retval img_corr_thresholded : Thresholded version of  correlation
%response.
%>
%> @example 
%>[ img_corr, img_corr_thresholded ] = question_1(img,img_template);
%>
%====================================================================
function  [img_corr, img_corr_thresholded]  = question_1(img,img_template)
img=im2double(img);
img_template=im2double(img_template);

score=imfilter(img,img_template,'corr');
img_corr=score./max(max(score));

img_corr_thresholded=im2bw(img_corr,0.66);
end
