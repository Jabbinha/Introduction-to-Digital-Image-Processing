function Exercise2()
%matriz gradiente vazia
%grad=rand(256,256)*0;
grad=[];                      %Slide 84
%Enunciado
% AZUL    --- CYAN
% MAGENTA ---  ????
% RED     --- YELLOW
% 0~255 intensidade
% 1~256 dimensao da matriz
for i=1:256                   %Slide 88
  for j=1:256                 %Slide 88
    grad(i,j,1)=i;            %vermelho aparece primeiro nas linhas depois nas colunas
    grad(i,j,2)=j;            %verde aparece primeiro nas colunas depois linhas
    grad(i,j,3)=255 - (i-1);  %Slide 87 decrementando o valor do azul, logo começa com o azul 
  end
end
image(uint8(grad));

for i=1:256                   
  for j=1:256                 
    brincando1(i,j,3)=i;            
    brincando1(i,j,2)=j;            
    brincando1(i,j,1)=255 - (i-1);  
  end
end
%image(uint8(brincando1));

for i=1:256                   
  for j=1:256                 
    brincando2(i,j,1)=255 - (j-1);              
    brincando2(i,j,3)=255 - (i-1);  
    brincando2(i,j,2)=255 - (i-1);  
  end
end
%image(uint8(brincando2));
%OBS: NÃO DÁ 4 CORES

end