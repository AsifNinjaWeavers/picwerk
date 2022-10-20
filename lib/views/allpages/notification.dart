import 'package:flutter/material.dart';
import 'package:picwerk/models/notification_models.dart';
import '../../constant/all_text.dart';
import '../../utility/colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AllColor.backgroundcolor,
        title: Text(AllText.notication,textAlign: TextAlign.start,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontSize: 30, color: Color(0xff1FFFFFF))),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
      ),
      backgroundColor: AllColor.backgroundcolor,
      body: ListView.builder(
        itemCount: NotifiactionModel.alllist().length,
        itemBuilder: (BuildContext context, int index) {  
          return NotificationCard(notification:NotifiactionModel.alllist().elementAt(index) );
        },
        
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final NotifiactionModel notification;
  const NotificationCard({
    required this.notification,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding:EdgeInsets.all(20),
      padding: const EdgeInsets.only(top:10.0,left: 25,right: 25),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right:30.0,left: 20.0),
            child: Divider(thickness: 0.3,color: Color(0xff1777777),),
          ),
         ListTile(leading: CircleAvatar(
                radius: 30, // Image radius
                backgroundImage: AssetImage(
                  notification.image,
                ),
              ),
              contentPadding: EdgeInsets.all(8),
              title: Text(notification.title,style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff1FFFFFF),fontSize: 18),),
              subtitle:Text(notification.subcontent,style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff1CCCCCC),fontSize: 12),) ,
              trailing: Text(notification.datetime,style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 10)),
      
              ),
        ],
      ),
    );
  }
}