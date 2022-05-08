function x=check(x, row, col) %name:Mohamed Ahmed Mahmoud %ID:1190266
[r,c]=size(x);
while r ~= row || c ~= col
    fprintf('Please re-enter array with %d rows and %d columns: ',row,col);
    x=input('');
    [r,c]=size(x);
end
end