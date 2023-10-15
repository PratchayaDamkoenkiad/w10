import 'package:flutter/material.dart';
import 'package:w010/booklist.dart';

class BookGrid extends StatelessWidget {
  final List<Book> Books = [
   Book(
      name: 'eightysix',
      Volume: 'เล่ม1',
      price: '275',
      img: 'lib/images/1.png',
    ),
     Book(
      name: 'eightysix',
      Volume: 'เล่ม2',
      price: '275',
      img: 'lib/images/2.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม3',
      price: '275',
      img: 'lib/images/3.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม4',
      price: '275',
      img: 'lib/images/4.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม5',
      price: '275',
      img: 'lib/images/5.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม6',
      price: '275',
      img: 'lib/images/6.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม7',
      price: '275',
      img: 'lib/images/7.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม8',
      price: '275',
      img: 'lib/images/8.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม9',
      price: '275',
      img: 'lib/images/9.png',
    ),
    Book(
      name: 'eightysix',
      Volume: 'เล่ม10',
      price: '275',
      img: 'lib/images/10.png',
    ),
  ];
  BookGrid({
    Key? key,
  }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'eightysix Book List',
          style: TextStyle(color: Colors.blue
            ),
          ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: GridView.builder(
          padding: EdgeInsets.all(6),
          itemCount: Books.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
          itemBuilder: ((context, index) {
            return Column(
              children: [

                Container(
                  width: 200,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    
                    image: DecorationImage(
                      image: AssetImage(Books[index].img),
                      fit: BoxFit.contain
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                  Books[index].name,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  ),
                ),
                SizedBox(width: 2),
                 Text(
                  Books[index].Volume,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  ),
                  
                ),
               
                  ],
                ),
               Column(
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                      "ราคา",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      ),
                      
                    ),
                    SizedBox(width: 2),
                      Text(
                      Books[index].price,
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      ),
                      
                    ),
                    SizedBox(width: 2),
                     Text(
                      "บาท",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      ),
                      
                    ),
                    ],
                   ),
                 ],
               )

              ],
            );
          })),
    );
  }
}