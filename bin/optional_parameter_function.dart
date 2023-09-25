

void calculate( int startValue , int endValue , Function fn){
  for( int i = startValue ; i<= endValue; i++){
    fn(i);
  }
}
void square(int i){
  print( i * i);
}
var myFuc = (int i) => print(i*i*i);
// class qube{
//   Function calculateQube =(int i){
//     print(i*i*i);
//   };
//
//   qube(int i);
// }


void main(){



  // List myQube = <int>[2,3,4];
  // myQube.forEach((element) { element * element * element;});

  // qube(int i){
  //   print(i*i*i) ;
  // }
  calculate(1, 5, square);
  // calculate(1, 5,(int x) {
  //   print(x*x*x);
  // });
  calculate(1, 6, myFuc );


}