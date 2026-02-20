clear all
close all
Im1=[0.9418,0.9241,0.8927,0.6164,0.6233,0.4276];
Im2 = [0.8151,0.5974,0.6614,0.7461,0.5808,0.4388];
Im3 = [ 0.7389,0.5539,0.5492,0.8782,0.7916,0.8501]; 
Im4 = [0.7515, 0.5575, 0.6912, 0.9273, 0.9333, 0.6837];
Im5 = [0.7894, 0.5780, 0.5474, 0.6511, 0.6056, 0.4383];
Im6 = [0.7431, 0.5789, 0.5920, 0.7447, 0.5032, 0.4040];
x=[1,2,3,4,5,6]

plot(x,Im1,'o', x, Im2, 'v', x, Im3, 'd', x, Im4,'r*', x, Im5, 'p', x, Im6, 's')
title('Feature Vector')
xlabel('Visual Words')
ylabel('NCC value')
legend({'image1','image2','image3','image4','image5','image6'},'Location','northeastoutside')
