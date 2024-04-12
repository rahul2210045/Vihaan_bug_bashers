import 'package:flutter/material.dart';

class CommunityCard extends StatefulWidget {
  // final String profileImagePath;
  final String username;
  final String timeAgo;
  final String question;
  final int likesCount;

  const CommunityCard({
     Key? key,
    
    required this.username,
    required this.timeAgo,
    required this.question,
    required this.likesCount,
  }) : super(key: key);

  @override
  State<CommunityCard> createState() => _CommunityCardState();
}

class _CommunityCardState extends State<CommunityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 0.5,
      child: InkWell(
        onTap: () {},
        child: Container(
          color: Colors.green.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    'assest/Ellipse 2.png'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '   ${widget.username}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '   .  ${widget.timeAgo}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          '         ${widget.question}',
                          style: TextStyle(
                            // fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            color: Colors.green.shade700,
                          ),
                          SizedBox(width: 9),
                          Text(
                            '${widget.likesCount}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(width: 49),
                          Icon(Icons.message_outlined),
                          SizedBox(width: 49),
                          Icon(Icons.share_rounded),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
