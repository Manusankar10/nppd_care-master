class LifecycleModel {
  String topicName;
  String statusName;
  String drName;
  String drName2;
  String routineDay;
  String routineTime;
  String routineDetail;
  String icon;
  List<LifecycleModel> subLifecycleModel;

  LifecycleModel({
    required this.topicName,
    required this.statusName,
    required this.drName,
    required this.drName2,
    required this.routineDay,
    required this.routineTime,
    required this.routineDetail,
    required this.icon,
    required this.subLifecycleModel,
  });
}
