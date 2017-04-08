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
function v = hmean(A)
v = 0;
for i=1:length(A)
    v = v+1/A(i);
end
v = length(A)/v;
end