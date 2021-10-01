# Instalación de hadoop y datasets

Datasets utilizados para Big Data

## Instalar docker en linux-ami2 (m4.xlarge)

    sudo amazon-linux-extras install docker -y
    sudo yum install git -y

    sudo systemctl enable docker
    sudo systemctl start docker
    sudo usermod -a -G docker ec2-user

## Instalar docker-compose: https://docs.docker.com/compose/install/

    sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
 
    sudo chmod +x /usr/local/bin/docker-compose

    exit

## Iniciando a instalar hadoop:

    docker pull cloudera/quickstart
    
## Crear el archivo docker-compose.yml 
   ```
    version: '2'
 
	services:
	  cloudera:
	    image: cloudera/quickstart:latest
	    restart: always
	    privileged: true
	    hostname: quickstart.cloudera
	    command: /usr/bin/docker-quickstart
	    ports:
	      - "8020:8020"   # HDFS
	      - "8022:22"     # SSH
	      - "7180:7180"   # Cloudera Manager
	      - "21050:21050" # Impala
	      - "21000:21000" # Impala Thrift
	      - "10001:10001" # Hive
	      - "8888:8888"   # Hue
	      - "11000:11000" # Oozie
	      - "50070:50070" # HDFS Rest Namenode
	      - "50075:50075" # HDFS Rest Datanode
	      - "2181:2181"   # Zookeeper
	      - "8088:8088"   # YARN Resource Manager
	      - "19888:19888" # MapReduce Job History
	      - "50030:50030" # MapReduce Job Tracker
	      - "8983:8983"   # Solr
	      - "16000:16000" # Sqoop Metastore
	      - "8042:8042"   # YARN Node Manager
	      - "60010:60010" # HBase Master
	      - "60030:60030" # HBase Region
	      - "9090:9090"   # HBase Thrift
	      - "8081:8080"   # HBase Rest
	      - "7077:7077"   # Spark Master
	    tty: true
	    stdin_open: true
   ```
 
## Ejecutar el docker-compose:

    docker-compose up 
    
## Todo listo!!

    Abrir el puerto 8888 (en AWS) para el acceso a hadoop desde HUE a través del navegador. 




