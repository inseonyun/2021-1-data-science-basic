tmp0 = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
sum0 = 0

for( kk in tmp0 ) {
  sum0 = sum0 + kk
}

cat('합(내장 함수 이용) : ', sum(tmp0), ', 합 : ', sum0)

avg0 = 0

avg0 = sum0 / length(tmp0)

cat('평균(내장 함수 이용) : ', mean(tmp0), '평균 : ', avg0)

sum1 = 0

for( kk in tmp0 ) {
  sum1 = sum1 + (avg0 - kk)**2
}
var1 = sum1 / (length(tmp0) - 1)

cat('분산(내장 함수 이용) : ', var(tmp0), '분산 : ', var1)

std1 = sqrt(var1)

cat('표준편차(내장 함수 이용) : ', std1, '표준편차 : ', sd(tmp0))
