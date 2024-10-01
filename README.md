# minitalk [42Cursus]

## Overview

**Minitalk** is a simple inter-process communication (IPC) program that utilizes Unix signals. This project is part of the 42 curriculum and focuses on understanding how processes can communicate and share data in a Unix environment.

## Features

- Allows sending messages between a client and a server using Unix signals.
- Implements a custom protocol for message formatting.
- Supports sending and receiving messages in real-time.
- Written in **C** and adheres to the 42 coding standards.

## How to Use

To use **minitalk** in your project:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/minitalk.git

2. Compile the server and client:
   ```bash
   make

3. Start the server in one terminal:
   ```bash
   ./server

4. In another terminal, run the client:
   ```bash
   ./client [PID] "[message]"

## License

This project is for educational purposes as part of the 42Cursus and adheres to the rules of the 42 school. Feel free to review and adapt the code, but do not copy it directly for personal submissions.
