import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
     
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Points Counter",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              const SizedBox(height: 22),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          "${state.teamAPoints}",
                          style: const TextStyle(fontSize: 200),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(160, 45),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamCounter(team: 'A', buttonNumber: 1);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(160, 45),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamCounter(team: 'A', buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 Points",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(160, 45),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamCounter(team: 'A', buttonNumber: 3);
                          },
                          child: const Text(
                            "Add 3 Points",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(255, 174, 174, 174),
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                    ),
                    // Team B Section
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          "${state.teamBPoints}",
                          style: const TextStyle(fontSize: 200),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(160, 45),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamCounter(team: 'B', buttonNumber: 1);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(160, 45),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamCounter(team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 Points",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(160, 45),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamCounter(team: 'B', buttonNumber: 3);
                          },
                          child: const Text(
                            "Add 3 Points",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(200, 60),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetPoints();
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        );
      },
    );
  }
}
