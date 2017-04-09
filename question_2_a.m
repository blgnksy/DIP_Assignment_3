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
function question_2_a(img)
img=im2double(img);
first_deriv=diff(img);
second_deriv=diff(first_deriv);
figure;
plot(img,'r');
hold on;
plot(first_deriv,'b');
hold on;
plot(second_deriv,'g');
hold on;
legend('Original Signal','First Derivative','Second Derivative');
end
