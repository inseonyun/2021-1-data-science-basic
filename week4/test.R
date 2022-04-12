c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

v1 = c(1:10); v1

v1

#무작위로 숫자를 뽑아옴 sample 함수
sample(v1)

#무작위 n개만 뽑아옴
sample(v1, 5)

#무작위 n개만 뽑아오는데 중복 가능
sample(v1, 5, replace = T)

#->응용 동전 앞 뒷면 10번 뽑기
v2 = c('H', 'T'); v2
sample(v2, 10, replace = T)

#->응용 주사위 10번 뽑기
#방법1
v3 = c(1:6); v3
sample(v3, 10, replace = T)

#방법2
sample(c(1:6), 10, replace = T)

#방법3
sample(1:6, 10, replace = T)

#무작위 수를 뽑아오는데 이전에 있던 무작위 수 저장하기
v1 = c(1:10); v1
set.seed(3)
sample(v1, 5)
