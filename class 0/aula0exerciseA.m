%Load image blackrectangle.bmp
blackrectangle=imread('blackrectangle.bmp');
%display blackrectangle
image(blackrectangle);
%1 = Red
%2 = Blue
%3 = Blue
blackrectangleRed=blackrectangle([558:643],[622:703],1);
blackrectangleGreen=blackrectangle([558:643],[622:703],2);
blackrectangleBlue=blackrectangle([558:643],[622:703],3);
image(blackrectangleRed)
image(blackrectangleGreen)
image(blackrectangleBlue)
%blackrectangleBlue is the image
%convert to double
text=double(blackrectangleBlue);
%vector A rows 13:80 column 24
vectorA=text(13:80,24);
%vector B rows 13:80 column 45
vectorB=text(13:80,45);
%vector C rows 13:80 column 46
vectorC=text(13:80,46);
%Exponentiate vectorA to vectorB
vectorexp=vectorA.^vectorB;
%Multply 
vectorMult=vectorexp.*vectorB;
%Add vector C in ans
vectorSum=vectorMult+vectorC;
%Add 32 in ans
vector32=vectorSum+32;
%Char A
char(vector32)
%Char B = Transpose char A
char(vector32')