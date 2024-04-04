import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        alignment:Alignment.center,
        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Image.asset("assets/verification.jpg",
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),


              Text("Phone Verification",style:TextStyle(fontSize: 22,fontWeight:FontWeight.bold) ,
              ),
              SizedBox(
                height: 10,

              ),
              Text("we need to register your phone",
                style:TextStyle(
                  fontSize: 16,
                ),
                textAlign:TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border:Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(border:InputBorder.none),
                      ),
                    ),

                    Text("|",style:TextStyle(
                        fontSize: 33,color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField( decoration: InputDecoration(border:InputBorder.none,
                          hintText: "phone"),),
                    ),
                  ],

                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child:   ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "otp");
                  },
                  child:Text("Send the code"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade600,shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10))),

              ),

              )
            ],
          ),
        ),
      ),
    );

  }
}
