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
function [response_h1, response_h2 ,response_h1_h2]=question_2_d(img)
img=im2double(img);
h1=[-1 0 1; -2 0 2;-1 0 1];
h2=[-1 -2 -1;0 0 0;1 2 1];
response_h1=imfilter(img,h1);
response_h2=imfilter(img,h2);
[x_s,y_s]=size(img);
for x_i=1:x_s
    for y_i=1:y_s
        if response_h1(x_i,y_i)>response_h2(x_i,y_i)
            response_h1_h2(x_i,y_i)=response_h1(x_i,y_i);
        else 
            response_h1_h2(x_i,y_i)=response_h1(x_i,y_i);
        end
    end
end
end
