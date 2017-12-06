function [ res ] = custo( pos,N )
    tam = size(pos,2);
    count = 0;
    for i=1:1:tam
        for j=1:1:tam
            if(i~=j)
                if((abs(i-j) == abs(pos(i)-pos(j))) || (pos(i)==pos(j)))
                    count = count + 1;
                end
            end
        end
    end
    
    res = (N*(N-1)/2) - count/2;

end

