%Red Layer
r=rand(7,21)*0;
%Green Layer
g =r;
%Blue Layer
b =r;

%Letter H
r(2:6,2) = [255,255,255,255,255];
r(2:6,4) = [255,255,255,255,255];
r(4,3) = 255;
%Letter E
g(2,6:8)=[255,255,255];
g(4,6:8)=[255,255,255];
g(6,6:8)=[255,255,255];
g(3,6)=255;
g(5,6)=255;
%Letter LB
b(2:6,10)=[255,255,255,255,255];
b(6,11:12)=[255,255];
%Letter LY
r(2:6,14)=[255,255,255,255,255];
r(6,15:16)=[255,255];
g(2:6,14)=[255,255,255,255,255];
g(6,15:16)=[255,255];
%Letter O
g(3:5,18)=[255,255,255];
g(3:5,20)=[255,255,255];
g(2,19)=255;
g(6,19)=255;
b(3:5,18)=[255,255,255];
b(3:5,20)=[255,255,255];
b(2,19)=255;
b(6,19)=255;

%Setting Matrix red values
hello(1:7,1:21,1)=r;
%Setting Matrix green values
hello(1:7,1:21,2)=g;
%Setting Matrix blue values
hello(1:7,1:21,3)=b;

%Showing Matrix
hello

%Turning matrix as HELLO
hello = uint8(hello)

%Showing Image ("HELLO")
image(hello)