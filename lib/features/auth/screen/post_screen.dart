import 'package:flutter/material.dart';


class PostScreen extends StatefulWidget {
  const PostScreen({ Key? key }) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: GridView.builder(
              //itemCount: products!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                //final productData = products![index];
                return Column(
                  children: [
                    const SizedBox(
                      height: 140,
                      // child: SingleProduct(
                      //   image: productData.images[0],
                      // ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Expanded(
                        //   // child: Text(
                        //   //   productData.name,
                        //   //   overflow: TextOverflow.ellipsis,
                        //   //   maxLines: 2,
                        //   // ),
                        // ),
                        // IconButton(
                        //   onPressed: () => deleteProduct(productData, index),
                        //   icon: const Icon(
                        //     Icons.delete_outline,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: (){
                Navigator.pushNamed(context, '/add-service');
              },
              tooltip: 'Add a Product',
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}