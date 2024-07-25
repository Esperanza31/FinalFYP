import 'package:flutter/material.dart';

class News_Announcement extends StatefulWidget {
  final bool isDarkMode;

  const News_Announcement({required this.isDarkMode});

  @override
  State<News_Announcement> createState() => _News_AnnouncementState();
}

class _News_AnnouncementState extends State<News_Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.isDarkMode ? Colors.lightBlue[600] : Colors.lightBlue[100],
        title: Text(
          'NP News Announcements',
          style: TextStyle(
            color: widget.isDarkMode ? Colors.white : Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: widget.isDarkMode ? Colors.lightBlue[900]: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      5.0, 5.0, 5.0, 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment
                            .center,
                        children: [
                          Icon(Icons.announcement,
                              color: Colors.blueAccent),
                          SizedBox(width: 5.0),
                          Text(
                            'NP News Announcement',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Announcements news here',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
