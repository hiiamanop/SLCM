class Event {
  final String text; // Define a text property

  Event(this.text); // Constructor to initialize the text property

  @override
  String toString() {
    return text; // Return the text property when the object is converted to a string
  }
}
