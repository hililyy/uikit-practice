# 텍스트필드 프로젝트 🪄
> 델리게이트 패턴 연습을 위한 텍스트필드의 다양한 기능을 사용해봅니다.
</br>

## 기능 정의
1. 텍스트 필드에 내용을 입력할 수 있습니다.
2. 10글자 이상 입력은 불가능합니다.
3. 엔터를 누르거나 텍스트 필드 밖 화면을 터치하면 키보드가 사라집니다.

</br>

## 미리 보기
![Mar-17-2023 18-44-53](https://user-images.githubusercontent.com/76806444/225871614-e610c6ab-a5bf-4143-a4dd-9220a8f0fca1.gif)


</br>

## 학습내용
- 델리게이트 패턴 
=> 왜 프로토콜을 사용할 수 밖에 없을까?
1. 뷰 컨트롤러에게 상황에 대한 판단(동작)을 위임 가능
2. 객체간 쌍방향 커뮤니케이션 가능 (데이터를 주고 받는 것도 가능) ex) 리턴값에 따라 텍스트 필드는 동작할지 말지 판단
3. 텍스트필드의 내부 구현을 숨길 수 있음

[Blog] 델리게이트 패턴 (https://hilily.tistory.com/69)
