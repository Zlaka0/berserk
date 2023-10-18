import 'package:flutter/material.dart';
import 'package:flutter/src/painting/box_fit.dart';
class UserProfile extends StatelessWidget{
  const UserProfile ({Key? key}):super(key: key);

  @override 
  Widget build (BuildContext)
  {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 48, 44, 44),
      appBar: AppBar(
        backgroundColor: Colors.black,
        
        centerTitle: true,
        title: const Text ('BERSERK', style: TextStyle(color: Color.fromARGB(255, 146, 0, 0), fontSize: 30),),
        
      ),
      
      body: SingleChildScrollView(
        
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _ImageWidget(imagePath: 'assets/images/Glav.jpeg', width: 1520, height: 223),
            const SizedBox(height: 25),
            _TextTitle(text1: 'Практическая работа 1', fontSize: 22, color1: Colors.white),
            const SizedBox(height: 10),
            _TextTitle(text1: 'по дисциплине', fontSize: 14, color1: Colors.white),
            const SizedBox(height: 10),
            _TextTitle(text1: 'Разработка мобильных приложений', fontSize: 14, color1: Colors.white),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: _RowImages()),

               
                
            const SizedBox(height: 30),
            _TextTitle(text1: 'Индивидуальное задание', fontSize: 18, color1: Colors.white),
            const SizedBox(height: 30),
            _TextTitle(text1: 'Создать новый виджет.', fontSize: 14, color1: Colors.white),
            const SizedBox(height: 5),
            _TextTitle(text1: 'Изменить 6 текущих изображений', fontSize: 14, color1: Colors.white),


          ]
          ,
        ),
      ),
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget{
  String imagePath;
  
  double width;
  double height;
  _ImageWidget({required this.imagePath, required this.width, required this.height,});
  @override 
  Widget build(BuildContext context) 
  {
    return SizedBox(
      width: width,
      height: height,
      
      child: Image.asset(imagePath),

    ); 
  }
}
class _TextTitle extends StatelessWidget {
  String text1;
  double fontSize;
  Color color1;
  
  
  
  _TextTitle({required this.text1, required this.fontSize, required this.color1,});

  @override
  Widget build (BuildContext context)
  {
    
    return  Text(text1, style: TextStyle(fontSize: fontSize, color: color1,),);
  }
  }
 class _RowImages extends StatelessWidget {
   const _RowImages ({Key? key}):super(key: key);

    @override
    Widget build(BuildContext context)
    {
      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        const SizedBox(width: 10),
        _ImageWidget(imagePath: 'assets/images/Guts.png', width: 200, height: 200,),
        const SizedBox(width: 10),
        _ImageWidget(imagePath: 'assets/images/Griffit.jpg', width: 200, height: 200,),
        const SizedBox(width: 10),
        _ImageWidget(imagePath: 'assets/images/Kaska.jpg', width: 200, height: 200,),
        const SizedBox(width: 10),
        _ImageWidget(imagePath: 'assets/images/Cherep.jpg', width: 200, height: 200,),
        const SizedBox(width: 10),
        _ImageWidget(imagePath: 'assets/images/Zodd.jpg', width: 200, height: 200,),
        const SizedBox(width: 10),
        _ImageWidget(imagePath: 'assets/images/Judo.jpg', width: 200, height: 200,),
        const SizedBox(width: 10),
      ],);
    }
  }
 // P.S. sorry