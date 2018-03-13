Increasing memory seemed to slow down the execution

Although I saw a high cpu load it did not seem to correspond correctly to the execution times. Eg event though cpu loads were higher the execution time might not has 
been so good.

Increasing mappers/reducers did not seem to increase performance, but decrease it.
So the end result is a bit inconclusive asto which settings would have been best


Mappers 1 Reducers 1 Memory 512
Generating
real	1m39.339s
Sorting
real	2m23.994s

Mappers 3 Reducers 3 Memory 512
Generating
real	1m23.727s
Sorting
real	1m56.539s

Mappers 3 Reducers 3 Memory 1024
Generating
real	1m24.860s
Sorting
real	1m54.467s


Mappers 3 Reducers 3 Memory 2048
Generating
real	1m26.410s
Sorting
real	2m7.278s


Mappers 6 Reducers 4 Memory 512
Generating
real	1m45.980s
Sorting
real	1m55.755s

Mappers 2 Reducers 2 Memory 512
Generating
real	1m29.352s
Sorting
real	1m52.613s

Mappers 10 Reducers 10 Memory 512
Generating
real	1m23.994s
Sorting
real	1m48.874s

using 100 mappers resulted in very poor performance

