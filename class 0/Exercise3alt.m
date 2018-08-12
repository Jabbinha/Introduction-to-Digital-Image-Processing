function Exercise3()
%no exercicio colocou image(n) logo chamei a matriz de n
n = [];
s = 0;
%ideia eh criar linha com 8 valores
%trabalhar de forma mutua pra evitar trabalho
%linha impar e linha par
%na internet todo mundo usa mod ou rem pra verificar se eh impar ou par

for linha=1:8
    if (rem(linha,2) == 1)            %como x e y s~ao positivos posso usar rem no lugar de mod, mas o melhor eh usar mod
        %impar
        %se for impar eu incremento valor da esquerda pra direita igual no exercicio 2 (numero min=1 : numero max=8)
        col = 1:8;
    else   
        %par
        %se for par eu incremento os valores da direita pra esquerda (numero maximo=8: -1 (para decrementar) : numero limite=1)
        col = 8:-1:1;
        %usa-se x:y:z quando se quer que o x seja a posição inicial; y o numero a somar a posição x; z = posição final
    end
    for coluna=col
        n(linha,coluna) = s;
        %como a matriz sempre incrementa  de 1 em 1, logo, s++
        s = s + 1;
    end
end
n
image(n), colormap(jet(64)); %64=linha*coluna=8*8
end