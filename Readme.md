# Introduction
 This repository provides a simple way to run two containers, ollama and open-webui, using Docker Compose.

# Prerequisites
 * A Linux or Windows machine with GPU support enabled  (NVIDIA) if you want to use the GPU-enabled containers.
 * Docker installed on your system.
 * Docker Compose installed on your system.

# Running the Containers
 To run the containers, simply execute the following command:
 ```
 make dev
 ```
 This will start both containers and attach to their logs. You can also use `make ps` to get a list of running containers, or `make build` to rebuild the containers from scratch.

# Install Models
 Connect to ollama container and run the following commands to install models:
 ```
 ollama run llama3:instruct
 ollama run startcoder2:3b
 ```
 After that you can exit the container.


 # Access chatbot: 
 Once the containers are running, you should be able to access the chatbot at http://localhost:3000

 # Copilot in VSCODE:
 1. Install [VSCODE](https://code.visualstudio.com/)
 2. Install [Continue](https://www.continue.dev)


# Other Commands
 * `make nodev`: Stop and remove all containers.
 * `make shell s={container}`: Open a shell session in one of the containers.
  * `make shell s=ollama`: Open a shell session in ollama container
  * `make shell s=open-webui`: Open a shell session in open-webui container
* `make logs s={container}`: Get logs from one of the containers.
  * `make logs s=ollama`: Get logs from ollama container
  * `make logs s=open-webui`: Get logs from open-webui container

# Notes
 This Makefile assumes that you have Docker Compose installed on your system. 

 You can also customize this Makefile to suit your specific needs by modifying the `docker-compose.yaml` file or adding additional targets.

I hope this helps! Let me know if you have any questions.