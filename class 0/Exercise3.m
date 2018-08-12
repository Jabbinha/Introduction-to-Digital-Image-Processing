function Exercise3()
%Criando a Matriz 8x8
n = rand(8,8)*0;
%Valor escalar
%Cresce da esquerda para a direita
s = 0;
%Línhas impares
for i=1:i+2:8
    for j=1:8
        n(i,j) = s;
        s = s + 1;
    end
    s = s + 8;
end
%pre visualizaçao
n
%Agora cresce da direita para a esquerda
s = 8;
for i=2:i+2:8
    for j=8:-1:1
        n(i,j) = s;
        s = s + 1;
    end
    s = s + 8;
end
n
%mostrando a imagem
%image(uint8(n));
%usando a funçao dada
image(n), colormap(jet(64));
end