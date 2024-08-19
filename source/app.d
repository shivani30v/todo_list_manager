
import std.stdio;
import std.array;
import std.string;
import std.conv;

struct Task {
    string description;
    bool completed;
}

class TodoListManager {
    private Task[] tasks;

    void addTask(string desc) {
        Task newTask = Task(desc, false);
        tasks ~= newTask;  // Append to the tasks array
    }

    void removeTask(int index) {
        if (index >= 0 && index < tasks.length) {
            tasks = tasks[0 .. index] ~ tasks[index + 1 .. $];
        } else {
            writeln("Task index out of range.");
        }
    }

    void completeTask(int index) {
        if (index >= 0 && index < tasks.length && !tasks[index].completed) {
            tasks[index].completed = true;
        } else {
            writeln("Task index out of range or task already completed.");
        }
    }

    void showTasks() {
        writeln("Todo List:");
        foreach (index, task; tasks) {
            string status = task.completed ? "Completed" : "Pending";
            writeln(index, ": ", task.description, " - ", status);
        }
    }
}

void main() {
    TodoListManager manager = new TodoListManager();
    bool running = true;

    while (running) {
        writeln("Enter command (add, remove, complete, show, quit):");
        auto command = readln().strip();

        switch (command) {
            case "add":
                writeln("Enter task description:");
                auto desc = readln().strip();
                manager.addTask(desc);
                break;
            case "remove":
                writeln("Enter task index to remove:");
                int indexRemove = readln().strip().to!int;
                manager.removeTask(indexRemove);
                break;
            case "complete":
                writeln("Enter task index to complete:");
                int indexComplete = readln().strip().to!int;
                manager.completeTask(indexComplete);
                break;
            case "show":
                manager.showTasks();
                break;
            case "quit":
                running = false;
                break;
            default:
                writeln("Invalid command.");
                break;
        }
    }
}
