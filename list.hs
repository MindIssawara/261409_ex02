-- this is a comment
len :: Num a1 => [a2] -> a1
len [] = 0
len (x:xs) = 1 + len xs

join :: ([a], [a]) -> [a]
join ([],ls) = ls
join(x:xs,ls) = x: join (xs,ls)

--ex02 zipper
zipper :: ([a], [b]) -> [(a, b)]
zipper([],_) = []
zipper(_,[]) = []
zipper(x:xs,y:ys) = join([(x,y)],zipper(xs,ys))

--ex02 rev
rev :: [a] -> [a]
rev [] = []
rev(x:xs) = join(rev xs,[x])