
# Simple interaction with HDFS using Python

This repository provides a simple way to interact with HDFS using Python and the hdfs library


## Run Locally

Clone the repository

```bash
  git clone https://github.com/quangphamDE/Simple-interaction-with-HDFS-using-Python.git
```

Change directory to Simple-interaction-with-HDFS-using-Python
```bash
  cd Simple-interaction-with-HDFS-using-Python
```
Install libraries

```bash
  pip install -r "./requirements.txt"
```


Run docker-compose
```bash
docker-compose up -d
```

Run changeIP.ps1 if you use Windows
``` bash
changeIP.ps1
```

Run changeIP.ps1 if you use Linux/MacOS
```bash
I will update later :D
```

Then you can run file hadoop-python-tutorial.ipynb to see how it work


## FAQ

#### Why do you need to run the changeIP script?

Because it will change extra_hosts in docker-compose.yml. This will avoid HTTPConnectionPool error 

#### Why I run docker-compose first, then run changeIP, and finally restart the Docker container?

Because I'm new to Bash and Docker, I don't know how to change extra_hosts automatically, so I do it this way :D
