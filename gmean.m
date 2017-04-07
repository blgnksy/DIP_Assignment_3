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
function v = gmean(A)
[M,N] = size(A);
prod = 1;
for i=1:M
    for j=1:N
        prod = prod * A(i,j);
    end
end
v = prod ^ (1/(M*N));