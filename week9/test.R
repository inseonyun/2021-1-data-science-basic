#문제 1 
#R에서 제공하는 데이터 유형(타입) 6가지와
#데이터 변수(컨테이너, 클래스) 5가지를 기술하시오.
3       #데이터 타입 : 정수 integer
3.14    #데이터 타입 : 실수 double
'A'     #데이터 타입 : 문자 character
"Hello" #데이터 타입 : 문자(열) character r에서는 문자와 문자열 구분 x
T       #데이터 타입 : logical
3+4i    #데이터 타입 : 복소수 complex
        #데이터 타입 : factor<-범주형 데이터타입(남,여)

c(3,4) #combin 키워드 'c'를 사용해 3,4 저장된 벡터를 만듦
v1 = c(3,4)     #vector
v2 = c(4,5)

rbind(v1, v2)   #matrix
m1 = matrix(1:12, nrow = 3, ncol = 4)
#주의, 열 우선 순위로 데이터 삽입
#행 우선 순위로 하려면? -> byrow값을 T로 주면 됨!
matrix(1:12, nrow = 3, ncol = 4, byrow = T)

#c(행, 열, 면) -> 3차원데이터 다룰 때 사용
# 행, 열인 2차원 배열을 몇 면으로 이룰것인가
arr1 = array(1:24,c(3,4,2))

#####위 세가지 벡터, 매트릭스, array는 복수 개의
#####데이터 타입을 포함할 수 없음!!!!정수 , 실수 등등

#data.frame()
#열 단위로 데이터들이 같은 데이터 타입이라면??
df1 = data.frame(aa = 1:5, bb = letters[1:5], cc = as.factor(c(1:5))); df1

#as 키워드 -> 어떠한 데이터가 들어올건데 .xxx인 타입으로 바꿔줘라(형변환)
as.factor(c(1:5))

######data.frame()은 각 열의 행의 길이가 같아야한다!

#서로 다른 데이터들(1차원 2차원 ...등등) 컨데이터 사용
#리스트 -> 비정형 데이터(정형화 되있지 않은 데이터)
lt1 = list(v1, m1, arr1, df1)
lt1[3] #리스트 인덱스 접근
lt1[1]


#############문제 2 ##############
# 남자는 1 여자는 0 숫자를 이용해서 저장된 데이터로
# 남 여
# 4  2  로 출력하여라

sex = c(1,0,0,1,1,1)
sex.factor = factor(sex, levels = c(1,0),
       label = c('남','여')); sex.factor
#levels를 정해주지 않으면 정렬이 되어 데이터가 들어감
#label를 이용하면 해당 단어로 치환됨

#테이블 함수를 사용하여 원하는 출력문을 함(방법1)
table(sex.factor)

#summary() 함수를 사용하여 원하는 출력문을 함(방법2)
summary(sex.factor)



#####추가 문제#####
# 혈액형 factor 생성하기 
blood = c('B', 'A', 'O', 'O', 'B', 'AB')
#형변환 이용하여 factor를 만듦
blood.factor = as.factor(blood); blood.factor
#factor 함수를 이용해서 facor를 만듦 -> 둘 다 같은 의미
blood.factor = factor(blood); blood.factor

blood.factor2 = factor(blood, levels = c('A', 'B', 'AB', 'O'), labels = c('BT_A', 'BT_B', 'BT_AB', 'BT_O')); blood.factor2

##factor를 만드는 이유 2가지
## 1. 범주형 데이터 처리
## 2. 데이터타입의 크기를 효율적으로 관리하기 위해


#데이터 타입 확인하는 3가지 방법
str(m1)
class(m1)
typeof(m1)
