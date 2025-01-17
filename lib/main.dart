import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:basketball_app/widgets/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child:  MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
