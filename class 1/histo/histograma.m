function histo = histograma (img)
%funçao que cria um histograma a partir de uma imagem

imag = imread(img);   %transforma img em uma matriz
histo = zeros(1,256); %inicializa um vetor de 255 posições

tam=size(imag);         %armazena em uma variavel as dimençoes da imag

if ( tam(3) == 3)
  imag=rgb2gray(imag);
  %transforma a imag em escalas de cinza
  end

for i=1:tam(1)
    for j=1:tam(2)
      intensidade = imag(i,j);  %armazena a intensidade do pixel em uma variavel
      histo(intensidade+1)=histo(intensidade+1)+1; %incrementa no vetor histo
                                                   %quando posiçao = intensidade 
    end
  end


figure(1)
eixoX=0:255;          %cria o eixo X com 256 posiçoes
bar(eixoX,histo);      %cria o grafico de barras
