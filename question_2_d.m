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
function [response_h1, response_h2 ]=question_2_d(img)
img=im2double(img);
h1=[-1 0 1; -2 0 2;-1 0 1];
h2=[-1 -2 -1;0 0 0;1 2 1];
response_h1=imfilter(img,h1);
response_h2=imfilter(img,h2);
end
