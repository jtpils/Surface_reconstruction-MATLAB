%% Clearing up 
clear;


%% Open points cloud:

% load airplane.mat 

%% To be added for .mat files from densify code 

 %p=Vd; 

%% Example files
% load Hypersheet.mat
% load pipes.mat
% load test.mat
% load Foot.mat
 load HandOliver
% load Falangi.mat
% load Mannequin
 %load cactus.mat

%% Run  program
[t]=SurfaceRecon(p);

%% plot the points cloud
figure(1);
set(gcf,'position',[0,0,1280,800]);
subplot(1,2,1)
hold on
axis equal
title('Points Cloud','fontsize',14)
plot3(p(:,1),p(:,2),p(:,3),'g.')
axis vis3d
view(3)


%% plot the output triangulation
figure(1)
subplot(1,2,2)
hold on
title('Output Triangulation','fontsize',14)
axis equal
trisurf(t,p(:,1),p(:,2),p(:,3),'facecolor','c','edgecolor','b')%plot della superficie
axis vis3d
view(3)


%% Saving as an .STL file

FACES = t;
VERTICES = p;

% format - stlwrite('filename.stl',FACES,VERTICES,'mode','binary/ascii');
stlwrite('test_3.stl',FACES,VERTICES,'mode','binary');


