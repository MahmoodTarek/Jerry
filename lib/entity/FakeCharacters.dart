import 'package:jerry_store/entity/Character.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

List<Character> characters = [
  Character(backgroundColor: ColorManager.orange,
      name: 'Tom',
      title: 'Failed stalker',
      image: 'episode_tom'),
  Character(backgroundColor: ColorManager.red,
      name: 'Jerry',
      title: 'A scammer mouse',
      image: 'episode_jerry'),
  Character(
      backgroundColor: ColorManager.green,
      name: 'Jerry Baby',
      title: 'Hungry mouse',
      image: 'episode_jerry_baby'),
];