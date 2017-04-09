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
function [avg_filtered_image,weighted_avg_filtered_image]=question_3_b(noisy_image)
avg_filter=ones(4,4) / 16;
weighted_avg_filter=[2 4 2; 4 8 4;2 4 2]/32;
avg_filtered_image=0.11*imfilter(noisy_image,avg_filter);
weighted_avg_filtered_image=0.11*imfilter(noisy_image,weighted_avg_filter);
end
