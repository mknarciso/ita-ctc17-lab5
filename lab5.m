tempo = [];
geracoes = [];
x = []

for i = 5:1:10
    x= [x i];
    for j = 1:1:3
        [geracoes(i,j), g ,tempo(i,j)] = de(i);
    end
    i
    mean(geracoes,2)
    mean(tempo,2)
end
