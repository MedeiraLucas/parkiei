class ParkingSpot {
  final String name;
  final String distance;
  final String note;
  final bool selected;

  const ParkingSpot({
    required this.name,
    required this.distance,
    required this.note,
    this.selected = false,
  });
}
