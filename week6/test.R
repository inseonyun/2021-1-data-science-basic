v1 = c(1, 2, 3)
v1

#슬라이스 연산자 :
v2 = 5:-5
v2

#순차 데이터 저장 seq()함수
v3 = seq(1,10); v3
seq(1, 10, 2) #2칸씩 띄면서 함 -> 홀수만 출력됨
seq(1,10,length=5) #1과 10의 수에서 5개만 나타냄냄
seq(1,10,length=10)

#문자 알파벳이 저장된 letters
letters[1:3]
letters[c(1,2,3)]
letters[length(letters)]

#대문자로변환해주는 함수 toupper 
toupper(letters[1:length(letters)])
#소문자로 변환해주는 함수 tolower
tolower(toupper(letters[1:length(letters)]))

#rep() 기존의 데이터는 있고, 그 데이터를 반복해서 저장
rep(1,times = 3) #반복해야하는 수 1, 반복하는 횟수 3
rep(c(1,4),3) #(1,4)를 3번 반복
rep(1:3,3) # (1,2,3)을 3번 반복
rep(1:3,each=3,times=3) #each는 반복 숫자 하나하나를 3번씩 반복, times는 그 세트를 3번 반복
rep(1:3,length=10) #반복숫자를 길이 10만큼 반복
rep('Hello', times=3) #문자열을 3번 반복

length('Hello') #벡터에 hello라는 하나가 들어있기 땜문에 출력은 1만 나옴
nchar('hello') #hello의 문자 개수를 알려줌
nchar(c(1,2,34)) #각 숫자를 문자로 인식하기 때문

letters[seq(2,length(letters), 2)] #짝수번째 알파벳 출력
toupper(letters[seq(2,length(letters), 2)])


  