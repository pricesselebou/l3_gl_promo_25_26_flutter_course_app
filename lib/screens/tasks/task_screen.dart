import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/task_provider.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final taskProvider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Task name",
              ),
            ),

            ElevatedButton(
              onPressed: (){
                taskProvider.addTask(controller.text);
              },
              child: const Text("Add Task"),
            ),

            const SizedBox(height:20),

            Expanded(
              child: ListView.builder(
                itemCount: taskProvider.tasks.length,
                itemBuilder: (context,index){

                  return ListTile(
                    title: Text(
                      taskProvider.tasks[index],
                    ),
                  );

                },
              ),
            )

          ],
        ),
      ),
    );
  }
}