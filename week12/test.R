#<함수리스트>

#절대값 함수
abs()

#로그함수 값을 알려주는 함수
log(2)

#밑이 2인 로그함수의 값을 알려주는 함수
log2(3)

#상용로그의 값을 알려주는 함수
log10(10)

#펙토리얼 함수 
factorial(5)

#조합 함수 (4!/2!/2!)
choose(4, 1)

#제곱근 함수
sqrt(2)

#digits의 소숫점 자리 반올림하는 함수 -> 1로 하면 2번째자리 비교후 1번째 자리 반올림
round(4.55, digits = 1)

#바닥 함수 -> 인자의 정수부분보다 작거나 같은 함수
floor(3.14)

#지붕 함수 -> 인자의 정수부분보다 크거나 같은 함수
ceiling(4.1)

#소숫점 자리는 버리는 함수
trunc(3.14)

#무한대를 확인하는 함수
x= Inf
is.infinite(x)

#nan(숫자가 아닌)값이 있는지 확인하는 함수
x = NaN
is.nan(x)

#na(존재하지 않는)값이 있는지 확인하는 함수
x = NA
is.na(x)

n = c(1:10)
#누적합 함수
cumsum(n)

#누적곱 함수
cumprod(n)

#누적 최댓값 함수
cummax(n)

#누적 최솟값 함수
cummin(n)

z = c(1,5,10)
#관측 값에서 직전 관측값을 뺀 차분을 구하는 함수
diff(z)

a = c(1, 2, 3)
b = c(3, 5, 7)
#합집합을 구하는 함수
union(a,b)

#교집합을 구하는 함수
intersect(a,b)

#차집합을 구하는 함수
setdiff(a,b)

#두 값이 같은지 확인하는 함수
setequal(a,b)

#동일한 원소가 있는지 확인하는 함수
is.element(a,b)
is.element(b,a)
