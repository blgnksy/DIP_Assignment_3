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
function question_3_a(img_add_noise)
count=1;
for d = 0.03:-0.01:0.0
   img_add_noise=imnoise(img_add_noise,'salt & pepper',d);
   imwrite(img_add_noise,sprintf('./outputs/noisy_%d.jpg', count),'jpg');
   count=count+1;
end 
end
