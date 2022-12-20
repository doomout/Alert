# 알림 프로젝트
얼럿(Alert)은 경고 메시지를 표시하는 기능
-스위프트 문법-
익명 함수를 작성 할 수 있는 구문 예. 

//completWork 함수는 Bool 타입의 finished 매개변수를 받아 출력하는 함수이며 리턴 타입은 없다.  
func completWork(finished: Bool) -> () {  
  print("complete : \(finished)")  
}  
//위를 익명 함수로 바꾸면  
{  
  (finished: Bool) -> () in  
  print("complete : \(finished)")  
}  
//위의 함수를 컴파일러가 반환 타입을 미리 알고 있다면 반환 타입을 생략할 수 있다.  
{  
  (finished: Bool) in  
  print("complete : \(finished)")  
}  
//컴파일러가 매개 변수의 파라미터 타입을 알고 있다면 생략할 수 있다.  
{  
  (finished) in  
  print("complete : \(finished)")  
}  
//파라미터 타입이 생략된 경우 매개변수의 소괄호를 생략할 수 있다.  
{  
  finished in  
  print("complete : \(finished)")  
}  
