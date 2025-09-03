import 'package:flutter/material.dart';
import 'package:flutter_timetable_view/flutter_timetable_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TimeTable View Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Timetable View Demo'),
      ),
      body: TimetableView(
                laneEventsList: _buildLaneEvents(),
                onEventTap: (event){

                },
                timetableStyle: TimetableStyle(startHour: 4, endHour: 24),
              ),
            );
  }

  List<LaneEvents> _buildLaneEvents() {
    return [
      LaneEvents(
        lane: Lane(name: 'Track A', laneIndex: 1),
        events: [
          TableEvent(
            eventId: 1,
            title: 'An event 1',
            startTime: TableEventTime(hour: 8, minute: 0),
            endTime: TableEventTime(hour: 10, minute: 0),
            laneIndex: 1,
            data: 'An event 1',
          ),
          TableEvent(
            eventId: 2,
            title: 'An event 2',
            startTime: TableEventTime(hour: 12, minute: 0),
            endTime: TableEventTime(hour: 13, minute: 20),
            laneIndex: 2,
            data: 'An event 2',
          ),
        ],
      ),
      LaneEvents(
        lane: Lane(name: 'Track B', laneIndex: 2),
        events: [
          TableEvent(
            eventId: 3,
            title: 'An event 3',
            startTime: TableEventTime(hour: 10, minute: 0),
            endTime: TableEventTime(hour: 13, minute: 00),
            laneIndex: 3,
            data: 'An event 3',
          ),
        ],
      ),
    ];
  }
}
