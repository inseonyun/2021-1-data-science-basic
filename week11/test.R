# 재활용규칙 -> 조직의 효율성을 높이기 위한 기술
# c언어 -> 다른 언어의 기조가 되는 언어 (저급언어)
#관리면에서는 편하지만 데이터 서비스를 하기에는 부족함
#5가지 컨테이너 vector,matrix,array는 같은 타입이 들감
#(vector, matrix, array + list, dataframe)

#데이터 분석 시작2(대푯값)
?women
women
class(women)
str(women)  #obs는 관측치, variables는 두개의 변수
women$height #women의 height 부분을 벡터로 가져옴
names(women)

?iris
iris
class(iris)
str(iris) # 150개의 관측치, 5개의 변수로 구성 됨

?mtcars
mtcars
class(mtcars)
str(mtcars) # 32개의 관측치, 11개의 변수로 구성 됨

?Titanic #개수를 기록해놓은 데이터
Titanic
class(Titanic)
str(Titanic)

?airquality
airquality
class(airquality)
str(airquality)

#외부 패키지 가져오기(기존 패키지에 다이아 없음)
#외부 패키지 설치하는법 -> install.packages
#install은 일회성, library는 반복 호출 
install.packages('ggplot2') #''작은 따옴표로 묶음
library(ggplot2)
ggplot2 # 다이아가 들어있는 패키지 (함수 + 데이터셋)

?diamonds
diamonds
class(diamonds) #다이아를 3개의 컨테이너에서 지원함
str(diamonds)





head(iris) # 상위 데이터 6개만 가져옴
tail(iris) # 하위 데이터 6개만 가져옴
names(iris) # iris 패키지의 데이터 열 네임 가져옴

dim(iris) # 데이터의 차원을 가져옴( 150행 5열)
ncol(iris)
nrow(iris)

table(iris)
table(iris$Species) #iris에 있는 speices를 테이블로 가져옴
summary(iris) #데이터의 요약 정보를 볼 수 있는 함수

#내 시스템에 어떠한 데이터가 있는지 알려주는 함수
data()



#indexing -> subset 구성

# women의 인덱스 접근으로 데이터 가져오기
women[2,2]                 # 벡터
# 여러 개의 데이터 가져오기
women[c(2,3),2]            # 벡터
#1행을 가져온다
women[1,]                  # dataframe
#두 열의 정보는 벡터로 보낼 수 없기 때문에 dataframe에 담겨 가져오게 됨

#1열을 가져온다
women[,1]                  # 벡터
# 한 열의 정보이기 때문에 벡터로 가져오게 됨

#변수명을 이용해서 데이터 가져오기
women$height
women[['height']]
women[[1]]

women[,c('height','weight')] #dataframe으로 가져옴
women[[c('height','weight')]] #err남

women[[1]] #데이터를 가져옴
women[1] #데이터프레임 그대로 유지하며 가져옴


#변수 메모리 관리

a = 3
a

#R studio에서 global evironment에서 women이 있는지 찾음, 없으면 패키지에 women이 있는지 찾고서 있다면 데이터 가져옴
women 
# 패키지에 있는 women을 가져와 1,1 인덱스의 값을 0으로 치환하고, 그 데이터를 global environment에 저장함
women[1,1] = 0 #데이터가 깨지는 행위 ->위험함
women
#global environment에도 women이 있고 패키지에 women에 있을 때, global에 있는 women 지우는 법
rm(women)
women

#만약 women이란 데이터가 필요하고 수정해야한다면?
women.df = women
#위와같이하면 women을 women.df에 저장(이름은 df1)이라 해도 상관 없음

#glbal environment에 있는 변수들 모두 출력
ls()

