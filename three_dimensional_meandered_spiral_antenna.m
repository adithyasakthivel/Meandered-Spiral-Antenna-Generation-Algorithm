%Program to generate a template for a three-dimensional meandered spiral antenna
%Adithya Vikram Sakthivel

%Inputing the required parameters
A=input('Enter the value of the inner radius: ');
R=input('Enter the value of the outer radius: ');
B=input('Enter the distance between consecutive tracks: '); 
N=input('Enter the number of meander peaks: '); 

%Calculations
si=0:pi/100:R*pi; 
psi=A*si; 
Z=B*(si.^3).*sin(N*si); 
ps=-1*psi; 

%to convert polar format to cartesian format,so design can be plotted
[x,y,z]=pol2cart(si,psi,Z); 
[x1,y1,z1]=pol2cart(si,ps,Z); 

%Plotting the required layout
hold on 
plot3(x,y,z, 'k'); 
plot3(x1,y1,z1, 'k'); 
hold off