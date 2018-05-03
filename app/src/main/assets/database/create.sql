CREATE TABLE users (
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE taskLists (
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    user INTEGER NOT NULL,
    FOREIGN KEY(user) REFERENCES users(_id)
)

CREATE TABLE tasks (
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    finished INTEGER NOT NULL,
    estimatedPomodoro INTEGER NOT NULL,
    totalPomodoro INTEGER NOT NULL,
    taskList INTEGER NOT NULL,
    FOREIGN KEY(taskList) REFERENCES taskLists(_id)
)

CREATE TABLE tags (
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    color INTEGER NOT NULL
)

CREATE TABLE tasks_tags (
    task INTEGER NOT NULL,
    tag INTEGER NOT NULL,
    FOREIGN KEY(task) REFERENCES tasks(_id),
    FOREIGN KEY(tag) REFERENCES tags(_id)
)