import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.grey.shade100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.only(left: 12),
                      child: TextFormField(
                        //todo: add local validation
                        //  autofocus: true, // what does this do
                        decoration: InputDecoration(
                          //border: InputBorder.none,
                          hintText: 'Search Event',
                          prefixIcon: Icon(
                            Icons.search,
                            // color: Colors.green,
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          //ends here
//todo; add the focusBorder
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                            borderSide: BorderSide(
                              color: Colors.white70,
                              width: 2.0,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.green,
                          enabled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
