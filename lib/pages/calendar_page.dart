import 'package:flutter/material.dart';
import 'package:super_app/util/event.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime today = DateTime.now();
  DateTime selectedDay = DateTime.now();
  // Store the event created
  Map<DateTime, List<Event>> events = {};
  TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEvent;

  @override
  void initState() {
    super.initState();
    _selectedEvent = ValueNotifier([]);
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDay = day;
      _selectedEvent.value = _getEventsForDay(selectedDay);
    });
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Retrieve all events from the selected day
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0),
                      blurRadius: 0,
                    )
                  ],
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kalender Akademik",
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.8),
                            blurRadius: 15,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            calendar(),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: ValueListenableBuilder<List<Event>>(
                                valueListenable: _selectedEvent,
                                builder: (context, value, _) {
                                  return ListView.builder(
                                    itemCount: value.length,
                                    itemBuilder: (context, index) {
                                      return Dismissible(
                                        key: Key(value[index].toString()),
                                        onDismissed: (direction) {
                                          setState(() {
                                            events[selectedDay]!
                                                .removeAt(index);
                                            _selectedEvent.value =
                                                _getEventsForDay(selectedDay);
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: ListTile(
                                            onTap: () => print(""),
                                            title: Text(value[index].text),
                                            trailing: IconButton(
                                              icon: Icon(Icons.delete),
                                              onPressed: () {
                                                setState(() {
                                                  events[selectedDay]!
                                                      .removeAt(index);
                                                  _selectedEvent.value =
                                                      _getEventsForDay(
                                                          selectedDay);
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              blurRadius: 5,
                            ),
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: FloatingActionButton(
                          backgroundColor: Colors.indigo, // Set FAB color here
                          onPressed: () {
                            // Show a dialog for user to input event name
                            showDialog(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setState) {
                                    return AlertDialog(
                                      title: Text('Tambah Kegiatan', style: TextStyle(fontFamily: 'Poppins'),),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextField(
                                            controller: _eventController,
                                            decoration: InputDecoration(
                                              hintText: 'Masukan nama kegiatan',
                                            ),
                                          ),
                                          SizedBox(height: 16),
                                          ElevatedButton(
                                            onPressed: () {
                                              if (_eventController
                                                  .text.isNotEmpty) {
                                                setState(() {
                                                  // Add the event to the events map
                                                  events.update(selectedDay,
                                                      (value) {
                                                    // If events for the selected day already exist, add the new event to the list
                                                    value.add(Event(
                                                        _eventController.text));
                                                    return value;
                                                  },
                                                      ifAbsent: () => [
                                                            Event(
                                                                _eventController
                                                                    .text)
                                                          ]); // If events for the selected day don't exist, create a new list with the event
                                                  _selectedEvent.value =
                                                      _getEventsForDay(
                                                          selectedDay); // Update the list of events for the selected day
                                                });
                                                _eventController
                                                    .clear(); // Clear the text field
                                                Navigator.of(context)
                                                    .pop(); // Close the dialog
                                              }
                                            },
                                            child: Text('Tambahkan', style: TextStyle(fontFamily: 'Poppins'),),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors
                                                  .indigo, // Set button color here
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget calendar() {
    return TableCalendar(
      locale: 'en_US',
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      availableGestures: AvailableGestures.all,
      selectedDayPredicate: (day) => isSameDay(day, selectedDay),
      focusedDay: today,
      firstDay: DateTime.utc(2023, 06, 01),
      lastDay: DateTime.utc(2024, 05, 31),
      onDaySelected: _onDaySelected,
    );
  }
}
