# Todo List Manager

## Overview

This project is a simple command-line to-do list manager written in the D programming language. It allows users to add, remove, complete, and view tasks. The project is built and managed using `dub`, the D language's package manager and build tool.

## Features

- **Add Tasks**: Add new tasks to the to-do list.
- **Remove Tasks**: Remove tasks from the list.
- **Complete Tasks**: Mark tasks as completed.
- **View Tasks**: Display all tasks with their status.

## Getting Started

### Prerequisites

Make sure you have the D language compiler (e.g., `dmd`, `ldc`) and `dub` installed on your machine. You can install these tools from the [official D language website](https://dlang.org/download.html).

### Installation

Clone this repository or download the source code:

```bash
git clone https://github.com/shivani30v/todo_list_manager.git
cd todo_list_manager
```

### Building the Project

To build the project, run the following command in the project root directory:

```bash
dub build
```

### Running the Application

To start the application, use:

```bash
dub run
```

## Usage

After starting the application, you will be prompted with the following commands:

- `add`: Add a new task to the list.
- `remove`: Remove an existing task by its index.
- `complete`: Mark a task as completed by its index.
- `show`: Display all current tasks with their indices and status.
- `quit`: Exit the application.

Enter each command and follow the on-screen prompts to manage your tasks.

## Example

Here’s a quick run-through of adding and managing tasks:

1. **Add Tasks**:

  ```text
  Enter command (add, remove, complete, show, quit):
  add
  Enter task description:
  Buy milk
  ```

2. **Add Another Task**:

  ```text
  Enter command (add, remove, complete, show, quit):
  add
  Enter task description:
  Finish the D project
  ```

3. **Show Tasks**:

  ```text
  Enter command (add, remove, complete, show, quit):
  show
  Todo List:
  0: Buy milk - Pending
  1: Finish the D project - Pending
  ```

4. **Complete a Task**:

  ```text
  Enter command (add, remove, complete, show, quit):
  complete
  Enter task index to complete:
  0
  ```

5. **Show Updated Tasks**:
  ```text
  Enter command (add, remove, complete, show, quit):
  show
  Todo List:
  0: Buy milk - Completed
  1: Finish the D project - Pending
  ```

## Contributing

Contributions to this project are welcome! Please fork the repository and submit a pull request with your enhancements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


