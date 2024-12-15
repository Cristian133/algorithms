fun reverse(L) =
    if L = nil then nil
    else reverse(tl(L)) @ [hd(L)];

fun fact(n) =
    if n = 1 then 1
    else n * fact(n-1);

fun comb(n, m) = (* assumes 0 <= m <= n *)
    if m = 0 orelse m = n then 1
    else comb(n-1, m) + comb(n-1, m-1);

fun
    take(L) =
        if L = nil then nil
        else hd(L)::skip(tl(L))

and
    skip(L) =
        if L = nil then nil
        else take(tl(L));

fun cycle(L, i) =
        if L = nil then nil
        else
            if i = 0 then L
            else
                if i = 1 then tl(L)@[hd(L)]
                else cycle(tl(L)@[hd(L)], i-1);

fun duplicate(L) =
        if L = nil then nil
        else hd(L)::hd(L)::duplicate(tl(L));

fun length(L) =
        if L = nil then 0
        else 1 + length(tl(L));

fun pow(x: real, i: int) =
        if i <= 0 then 1.0
        else x*pow(x, i-1);

fun maxElementList(L) =
        if length(L) = 0 then []
            else
                if length(L) = 1 then L
                    else
                        if length(L) = 2
                            then
                                if hd(L) >= hd(tl(L))
                                    then hd(L)::nil
                                    else tl(L)
                            else (* length(L) > 2 *)
                                if hd(L) >= hd(tl(L))
                                    then maxElementList(hd(L)::tl(tl(L)))
                                    else maxElementList(tl(L));

fun maxElement(L) = hd(maxElementList(L));

fun merge(L,M) =
    if L = nil then M
        else
            if M = nil then L
                else hd(L)::hd(M)::merge(tl(L),tl(M));
