%Program to generate a template for a planar meandered spiral antenna
%Adithya Vikram Sakthivel

%Inputing the required parameters
B=input('Enter the value of the distance between the tracks: ');
C=input('Enter the value of the outer radius: ');
R=C/(pi*B);
N=input('Enter the number of meander peaks: ');
A=input('Enter the depth of the meander: ');

%Calulations 
s=6*pi+(2.5*pi/100);
pti=0:pi/100:s+(6*pi/100);
ps1=B*pti;
pss=-1*ps1;
[x1,y1]=pol2cart(pti,ps1);
si=s:pi/100:R*pi;
psi=B*si+A*cos(N*si);
ps2=-1*psi;

%to convert polar format to cartesian format,so design can be plotted
[x,y]=pol2cart(si,psi); 
[x2,y2]=pol2cart(pti,pss);
[x3,y3]=pol2cart(si,ps2);

%Plotting the required layout
hold on 
plot(x,y,'k');
plot(x1,y1, 'k');
plot(x2,y2,'k');
plot(x3,y3,'k');
hold off