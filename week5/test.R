s1 = sample (c(1:6), 10, replace = T); s1

#연산이 필요한 대표값 (3차 데이터터)
#합, 평균, 분산, 표준편차
sum(s1)
mean(s1)
var(s1)
sd(s1)

#정렬이 필요한 대표값이다 (1차데이터)
#최솟값, 최댓값, 중간값
min(s1)
max(s1)
median(s1) 
#만약 데이터의 개수가 짝수여서 중간값이 두개 일 때 그 두 값의 평균값이 중간값이 된다.

s1
#정렬하는 함수 sort()
sort(s1)

#1차 데이터에 관한 모든 것을 출력하는 함수 summary()
summary(s1)
#이러한 1차 데이터를 그림으로 나타내는 함수boxplot()
boxplot(s1) #평균(연산)에 관한것은 출력하지 않음, 시각화

#데이터의 개수를 표현하는 함수 table() (2차데이터)
table(s1)
#이러한 표현을 그림으로 나타내는 함수 barplot()
barplot(s1) #함수에 벡터를 그대로 넣어주는게 아니라 테이블 값을 넣어줘야 정상적인 데이터가 나온다
barplot(table(s1))

#그림에 x,y축 표현과 이 어떠한 표인지 설명이 필요하다
barplot(table(s1), main='주사위 빈도수',
        xlab = '주사위', ylab = '빈도',
        names.arg = c('1번', '2번', '3번', '4번',
                      '5번', '6번'),
        horiz = F,
        ylim = c(0, 10),
        col = rainbow(length(table(s1))))
grid()
#main은 표의 제목
#xlab, ylab은 x축 y축 제목
#col은 표의 색깔
#naes.arg는 데이터들의 이름 변경
#horiz는 표를 횡으로 표현함, 단 xlab, ylab은 바꿔줘야함
#xlim는 데이터 개수 범위를 조정함
#grid()함수를 입력하면 격자무늬가 생김



#테이블 또다른 데이터 시각화
#기본적인 매개변수는 barplot과 비슷함
pie(table(s1), main = '주사위 빈도수')
.
