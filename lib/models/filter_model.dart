
class FilterModel {
  String label;
  

FilterModel({
    required this.label,
   
  });
}
  List<FilterModel> flist = [
    FilterModel(label: 'UX/UI'),
    FilterModel(label: 'Python'), 
    FilterModel(label: 'Marketing'),
    FilterModel(label: 'Game Dev'),
    FilterModel(label: 'Coding'),
     FilterModel(label: 'Java'),
    /*TaskModel(
      taskTitle: 'Client Presentation',
      date: '2024-06-17',
      startTime: '01:00 PM',
      endTime: '02:00 PM',
      description: 'Present project progress to the client.',
      statusText: 'Completed',
      color: Color(0xFFFFA726),
    ),*/
  ];
