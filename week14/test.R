# 탐색경로 확인 함수 search()
search()

# attach(iris)하여 탐색 경로에 iris 추가
attach(iris)

# 탐색경로에 iris가 올라오게 되면 
# iris 안에 있는 변수를 직접 사용 가능
Sepal.Length
iris$Sepal.Length         #원래 이와 같이 사용함

# detach(iris)를 사용하여 탐색경로에 iris 제거
detach(iris)

##### attach와 detach를 많이 사용하는 것을 권장 하지 않는다. 이유는 변수 이름이 중복될 수 있게 되는데 중복되게 되면 원하는 변수를 불러올 수 없게 됨(먼저 생성된 것을 가져와주기 떄문)

# with(,)를 쓰면 with 안에서는 attach한 것처럼 자유롭게 사용 가능
with(iris, Sepal.Length)



##### women 데이터에 열 추가하기!! 3가지 방법
women
# 1인치 = 2.54cm
# 1파운드 = 0.45kg

women.df = women
women.df$height *2.54

# DF에 열 추가 방법
women.df$cm = women.df$height *2.54
women.df

# DF의 인덱스로 열 추가
women.df[,'kg'] = women.df$weight * 0.45
women.df

# rbind(), cbind()로 열 추가 -> 과제...?




#### 문제
# 몸무게가 64kg 이상인 데이터 가져오기

women.df$kg >= 64     #TF마스크로 데이터 가져옴
women.df[women.df$kg >= 64,] # 64kg이상인 행을 가져오고 싶기 때문에 행에다가 조건 써줌




#열네임 변경하기 names, colnames
names(women.df) <- c('A', 'B', 'C', 'D')
women.df

colnames()
rownames()

sample(1:15, 15) #1부터 15까지 랜덤으로 15개 뽑음
women.df = women.df[sample(1:15, 15),] # shuffle이 됨 -> 인공지능에 주로 사용


#순서 변경 함수 sort(), order()
#sort()는 데이터의 크기에 따라 오름차순으로 정렬해줌
v1 = sample(1:15, 15) #순서가 랜덤으로 뒤바뀜
v1
v1.sort = sort(v1)      #v1의 변수들이 정렬됨
v1.sort
#order()는 인덱스를 데이터에 저장함
#가장 작은 인덱스의 번호를 저장함
v1.order = order(v1)
v1.order

#shuffle된 women.df의 데이터를 D를 기준으로 오름차순 정렬하기
women.df[order(women.df$D),]




# Indexing --> Subset 구성함수
# dplyr 패키지
# tidyr 패키지
# reshape2 패키지
# ggplot2 패키지
