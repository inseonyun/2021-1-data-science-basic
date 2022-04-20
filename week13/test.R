####문제 1번
getwd()
df.data = read.csv(file = "data.csv", header = TRUE)

df.menu = read.csv(file = "menu.csv", header = TRUE)

df.team = read.csv(file = "team.csv", header = TRUE)

####문제2번
#data의 각 메뉴들을 데이터 프레임으로 뽑아옴
df.data.freq = df.data[,5]

#그 데이터프레임의 수량을 구하기 위해 테이블 함수를 사용
df.data.freq = table(df.data.freq); df.data.freq

#테이블 함수인 개수 변수를 데이터프레임으로 변환함
df.data.freq = as.data.frame(df.data.freq)

#열 이름을 새로 지음
colnames(df.data.freq) = c("메뉴명", "수량")

#메뉴와 메뉴명을 기준으로 합병하여 각 메뉴별 금액과 수량이 나오게 함
df.menu.new = merge(df.menu, df.data.freq, by="메뉴명")

#수량을 기준으로 내림 차순
df.menu.new = df.menu.new[order(df.menu.new$"수량", decreasing = TRUE),]


####문제3번
d2 = merge(df.menu, df.data, by = ("메뉴명"))
colnames(df.team) = c("본부", "소속팀")
d3 = merge(d2, df.team, by = "소속팀")

#자료형 확인
mode(d3[,3])
#단가.원.에 쉼표로 인해 문자 처리가 됨 -> 쉼표 없앰
d3[,3]=gsub(',','',d3[,3])

#문자형을 숫자로 바꿈 
d3[,3]=as.numeric(d3[,3])

#각 본부 별로 단가 합계를 구함
df1 =as.data.frame(tapply(d3$단가.원.,d3$본부,sum))
df1
colnames(df1)="금액원"
