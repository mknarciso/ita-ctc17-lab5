function [ res ] = mutate( actual , N)
    aux = [];
    for i = 1:1:size(actual,1)
        aux = [aux ones(1,actual(i,1))*i];        
    end
    %Selection
    a = actual(aux(randi(size(aux,2))),2:N+1);
    b = actual(aux(randi(size(aux,2))),2:N+1);
    c = actual(aux(randi(size(aux,2))),2:N+1);
    d = actual(aux(randi(size(aux,2))),2:N+1);
    %Crossover
    aa = [];
    bb = [];
    cc = [];
    dd = [];
    mask = randi([0,1],[1,N]);
    for i = 1:1:N
        if mask(i)==0
            aa = [aa a(i)];
            bb = [bb b(i)];
            cc = [cc c(i)];
            dd = [dd d(i)];
        else
            aa = [aa b(i)];
            bb = [bb a(i)];
            cc = [cc d(i)];
            dd = [dd c(i)];
        end
    end
    %Mutation
    aa(randi(N))=randi(N);
    bb(randi(N))=randi(N);
    cc(randi(N))=randi(N);
    dd(randi(N))=randi(N);
    res = [aa;bb;cc;dd];
end

