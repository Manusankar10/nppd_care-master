
import '../models/lifecycle_model.dart';

class Utils {
  static List<LifecycleModel> getMockedCategories() {
    return [
      LifecycleModel(
        topicName: 'Timeline',
        statusName: 'Stage-2',
        drName: '',
        drName2: '',
        routineDay: '',
        routineTime: '',
        routineDetail: '',
        subLifecycleModel: [],
        icon: '',
      ),
      LifecycleModel(
        topicName: 'Your consultants',
        statusName: 'Stage-3',
        drName: 'RM: Dr. Preeti Ranade',
        drName2: 'Doctor: Dr. Srikant tiwari',
        routineDay: '',
        routineTime: '',
        routineDetail: '',
        subLifecycleModel: [],
        icon: '',
      ),
      LifecycleModel(
        topicName: 'Your routine',
        statusName: 'Stage-1',
        drName: '',
        drName2: '',
        routineDay: 'Wednesday',
        routineTime: 'Morning 10-12AM:',
        routineDetail: 'Take 2 glasses of ajwain water',
        subLifecycleModel: [],
        icon: '',
      )
    ];
  }
}
