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
function [gdir]=question_2_e(response_h1,response_h2)
Gx=response_h1;
Gy=response_h2;
gdir=atan2d(Gy,Gx);
end
