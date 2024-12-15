fun square(x: real) = x * x;

fun max3(a, b, c) =
    if a>b then
        if a>c then a
        else c
    else
        if b>c then b
        else c;

fun cycle(L) =
    if L = nil then nil
    else tl(L)@[hd(L)];
