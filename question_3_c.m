%====================================================================
%> @brief You should give brief information about the function here.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param img : Image to be plotted.
%>
%>
%> @example 
%> question_2_a(img);
%>
%====================================================================
function [geo_mean_filtered,harmonic_mean_filtered]=question_3_c(noisy_image)
geo_mean_filtered=nlfilter(im2double(noisy_image),[3 3],@gmean);
harmonic_mean_filtered=nlfilter(im2double(noisy_image),[3 3],@hmean);
end
