function [ gen,ord,e ] = de( N )
    t = cputime;
    gen = 0;
    init = randi(N,[4,N]);
    ord = order(init,N);

    while ord(4,1)~=(N*(N-1)/2)
       ord = order(mutate(ord,N),N);
       gen = gen + 1;
    end
    e = cputime-t
end