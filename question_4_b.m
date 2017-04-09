%====================================================================
%> @brief You should give brief information about the function here.
%>
%>
%> @author ucinar
%>
%> @param param1 : explanation of input1
%> @param param2 : explanation of input2
%>
%> @retval output1 : explanation of output1
%> @retval output2 : explanation of output2
%>
%> @example 
%>[ output1 output2 ] = comment_style(param1,param2);
%>
%====================================================================

function [filt0,filt1,filt3,filt4]=question_4_b(wid,c,k,freq_adj)
% wid = 28; %width of the filter along y-axis
% c = 40; % ratio of the widths along x-axis / y-axis
% k =2; % width coefficent
% freq_adj = 1; % this parameter used for frequency adjustment
Wx = k*wid;
Wy = k*c*wid;
[x,y] = meshgrid((-Wx:Wx), (-Wy:Wy));
%% cos filter
filt0 = cos(x*pi/(Wx/freq_adj)); %Realize that frequency of the filter is 
                                %adjusted by the division (Wx/freq_adj).
                                %Play with these parameters to fully grasp
                                %th concept.
filt0 = filt0 ./ max(max(filt0)); % normalize the filter
%figure,mesh(x,y,filt0); % 3D plot
%% disk filter
Disk = x.^2 + y.^2 <= Wx^2;
filt1 = im2double(Disk);
%figure,mesh(x,y,filt1);
%% ideal filter
% ideal = [-1*ones(1,(wid+1)/2) ones(1,wid+1) -1*ones(1,(wid+1)/2)]; 
% filt2= ones(length(y),1)*ideal;
% 
% figure,mesh(x,y,filt2);
%% tangent filter
filt3 = tan(x*pi/(Wx/freq_adj));
filt3 = filt3 ./ max(max(filt3));
%figure,mesh(x,y,filt3);
%% gaussian filter
t = x;%*pi/Wx;
sigma_x = wid;
mu = 4;
filt4 = (1/(sigma_x*sqrt(2*pi))) *exp(-(((x+mu).^2)/(2*(sigma_x^2))) );
filt4 = filt4/max(filt4(:));
%figure,mesh(x,y,filt4);
end

