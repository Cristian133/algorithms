fun reverse(nil) = nil
|   reverse(x::xs) = reverse(xs) @ [x]

fun merge(nil, M) = M
|   merge(L, nil) = L
|   merge(L as x::xs, M as y::ys) = x::y::merge(xs,ys);

fun comb(_, 0) = 1
|   comb(n, m) =
        if n=m then 1
        else comb(n-1, m) + comb(n-1, m-1);
