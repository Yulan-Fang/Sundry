clc
clear
figure
hold on
x=0:0.005:10;
y=sin(x);
graph=plot(x,y);
point=plot(x(1),y(1),'+','markersize',10);
%% Readme
% Selections other than '+' are 'ro', 'o', etc.
% You can also change the marker size as you like
% If you want to make it fast, you may can change the line 5 to x=1:0.1:10
%% Save the motion to avi file
% Line 15, 19, 20, 22 are used for creating the avi file
% If you want to have it, you can uncomment them
%    p=1;  % Initialize the indicator as 1
%%
for i=1:size(x,2)
    set(point,'xdata',x(i),'ydata',y(i));
    drawnow
%    Movie(p)=getframe(gcf);
%    p=p+1;
end
%    movie2avi(Movie,'video.avi','Quality',100,'compression','none');
