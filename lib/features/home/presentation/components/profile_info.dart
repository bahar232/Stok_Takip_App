import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);


  TextStyle? getTitleStyle(BuildContext context){
    return  Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w400
    );
  }

  TextStyle? getContentStyle(BuildContext context){
    return Theme.of(context).textTheme.bodyMedium;
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.grey),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 3),
        child: Row(
          children: [
            const Icon(Icons.person,size: 60,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quantum Yazılım Ltd Şti",
                      style: getTitleStyle(context),
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      "Test",
                      style: getTitleStyle(context),
                    ),
                    const SizedBox(height: 4,),
                    getTimeRow(context),
                    getInfoRow(context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTimeRow(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "01",
          style: getTitleStyle(context),
        ),
        const SizedBox(width: 8,),
        Text(
          DateTime.now().toIso8601String(),
          style: getContentStyle(context)?.copyWith(
              color: Colors.blue
          ),
        )
      ],
    );
  }

  Widget getInfoRow(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "ip: 85.106.101.238",
          style: getContentStyle(context)?.copyWith(
              color: Colors.green
          ),
        ),
        const SizedBox(width: 8,),
        Text("Durum: Online",style: getContentStyle(context)?.copyWith(
            color: Colors.green
        ),)
      ],
    );
  }

}
