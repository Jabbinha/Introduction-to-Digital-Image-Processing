function binimag = binary (img,thr)
%funçao para converter a imagem img para o tipo binario
%img será 'cartmancop.jpg'
%threshold pode ser 100

imag = imread(img);
%ler img e transformar em matriz
tam=size (imag);
%ler as dimensões da imag

  if ( tam(3) == 3)
    imag=rgb2gray(imag);
    %transforma a imag em escalas de cinza
    end
  
  for i=1:tam(1)
    for j=1:tam(2)
      if(imag(i,j)<thr) %intensidade do pixel de acordo com a referencia
        imag(i,j)=0;    %coloca o pixel como preto com intensidade menor que o thr
      else
        imag(i,j)=255;  %coloca o pixel como branco com intensidade menor que o thr
      end
    end
  end

binimag=uint8(imag); 
%converte a matriz binarizada para uint8
binimag;  
%retorna a resposta como imagem binária