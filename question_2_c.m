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
function [response_h1, response_h2 ]=question_2_c(img)
img=im2double(img);
h1=[0 1 0; 1 -4 1;0 1 0];
h2=[1 1 1;1 -8 1;1 1 1];
response_h1=imfilter(img,h1);
response_h2=imfilter(img,h2);
end
