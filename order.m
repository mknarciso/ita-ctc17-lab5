function [ ordered ] = order( pre,N )
    part = [];
    for i= 1:1:size(pre)
        part = [part; custo(pre(i,:),N) pre(i,:)];
    end
    part2 = sortrows(part,1);
    ordered = part2;
end

