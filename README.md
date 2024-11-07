# gymreklab-misc
Miscellaneous lab items

## Running hello.sh

This script prints the message "hello world" to the terminal.

### Steps to Run

1. **Clone the Repository**
First, clone this repository to your desired directory:
   ```bash
   git clone https://github.com/Vitali33/gymreklab-misc.git
   ```

2. **Navigate to the Repository**
   ```bash
   cd gymreklab-misc
   ```

3. **Run the Script** 
Run the following command to execute hello.sh:
   ```bash
   bash hello.sh
   ```
This will print "hello world" to the terminal.


## Using Dockerfile
The repository includes a Dockerfile to build a Docker image with samtools (version 1.21) and minigraph installed, which are useful for genomic analysis tasks.

### Steps to Build and Run the Docker Image

1. **Build the Docker Image** 
First, navigate to the directory containing the Dockerfile, then run the following command to build the Docker image:
   ```bash
   docker build -t bioinfo-tools .
   ```

2. **Run the Docker Container**
Start a container from the image using the following command:
   ```bash
   docker run -it bioinfo-tools
   ```

3. **Using samtools and minigraph**
Inside the container, you can use samtools and minigraph as follows:
   ```bash
   samtools
   minigraph
   ```

4. **Exit the Container**
   ```bash
   exit
   ```

