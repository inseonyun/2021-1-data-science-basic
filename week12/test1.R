#<함수리스트>

#절대값 구하는 함수
abs(-3)
abs(3)

#로그함수 값을 알려주는 함수
log(2)

#밑이 2인 로그함수의 값을 알려주는 함수
log2(2)
log2(3)

#상용로그의 값을 알려주는 함수
log10(10)
log10(2)

#펙토리얼 값을 구하는 함수
factorial(4) # 4! -> 4* 3* 2* 1

#조합 함수
choose(4, 1) # 4C1 -> 4!/1!*(4-1)!

#제곱근 함수
sqrt(2)

#digits의 소숫점 자리 반올림하는 함수
round(4.55, digits = 1) # 4.6
round(4.53, digits = 1) # 4.5

#바닥 함수 -> 정수부분보다 작거나 같은 값을 반환 함수
floor(3.14) #3

#천장 함수 -> 정수부분보다 크거나 같은 값을 반환 함수
ceiling(3.14) # 4
ceiling(4) # 4

#소숫점 자리는 버리는 함수
trunc(3.14)

#무한대를 확인하는 함수
x=Inf
is.infinite(x)
is.infinite(1)

#nan(숫자가 아닌 값)값이 있는지 확인하는 함수
y=NaN
is.nan(y)
is.nan(1)

#na(존재하지 않는 값)값이 있는지 확인하는 함수
z=NA
is.na(z)
is.na(1)

#누적합 함수
n = c(1:10)
cumsum(n)

#누적곱 함수
cumprod(n)

#누적 최댓값 함수
cummax(n)

#누적 최솟값 함수
cummin(n)

#벡터의 연속 요소 간의 차이를 계산하는 함수
c = c(1, 5, 10)
diff(c)

#합집합을 구하는 함수
a = c(1,2,3)
b = c(3,5,7)
union(a, b)

#교집합을 구하는 함수
intersect(a,b)

#차집합을 구하는 함수
setdiff(a, b)
setdiff(b, a)

#두 값이 같은지 확인하는 함수
setequal(a, b)
setequal(1, 1)

#동일한 원소가 있는지 확인하는 함수
is.element(a, b)
is.element(b, a)
