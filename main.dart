void main() {
  //late final String name; // 처음에 변수에 데이터 없이 넣을수 있을 나중에 api 를 호출해서 데이터 를 넣기에 좋음
  // 그리고 값을 넣기전에는 접근을 할수 없기 떄문에 사전에 실수를 방지 할수 있음.
  // do something go to api
//  name = '태현';
  // 여전히 final 변수 이기 떄문에 딱 한번만 할당해줄수 있음
  //name = 'new';
  // const  dart 에서는 컴파일 타임 constant 를 만들어줌
  const name = '태현';
  // name = '태현2' 컴파일 이후 처음 설정 값이후로 절대로 바뀌지 않음
}
