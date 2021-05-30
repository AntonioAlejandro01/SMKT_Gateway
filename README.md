# SMKT_Gateway

Gateway for SmartKitchen App

![JAVA](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white) ![Spring](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white) 

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[![Build Dev](https://github.com/AntonioAlejandro01/SMKT_Gateway/actions/workflows/buildDevVersion.yml/badge.svg?branch=develop)](https://github.com/AntonioAlejandro01/SMKT_Gateway/actions/workflows/buildDevVersion.yml) [![Build Snapshot](https://github.com/AntonioAlejandro01/SMKT_Gateway/actions/workflows/BuildSnapshot.yml/badge.svg)](https://github.com/AntonioAlejandro01/SMKT_Gateway/actions/workflows/BuildSnapshot.yml)  [![Build Stable Version](https://github.com/AntonioAlejandro01/SMKT_Gateway/actions/workflows/BuildRelease.yml/badge.svg)](https://github.com/AntonioAlejandro01/SMKT_Gateway/actions/workflows/BuildRelease.yml)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=AntonioAlejandro01_SMKT_Gateway&metric=alert_status)](https://sonarcloud.io/dashboard?id=AntonioAlejandro01_SMKT_Gateway)


## Use With Docker

Use this Service with Docker as Docker container. The Repo have 3 types of images. 

### Types

- **Stable**: These are the images that in her tag have a specific version ex.: ```antonioalejandro01/smkt-gateway:vX.X.X```. the last tag version have latest tag. 
```bash
    docker pull antonioalejandro01/smkt-gateway:v1.0.0
    # The last stable version
    docker pull antonioalejandro01/smkt-gateway:latest
 ```

- **Snapshot**: This is the image that in her tag have snapshot word ex.: ```antonioalejandro01/smkt-gateway:snapshot```
```bash 
    docker pull antonioalejandro01/smkt-gateway:snapshot
```

- **Dev**: This image is only for developers and in her tag have dev word ```antonioalejandro01/smkt-gateway:dev```
```bash
    docker pull antonioalejandro01/smkt-gateway:dev
 ```

### Environment variables for Docker image

<table align="center" width="100%" style="margin:1em;">
<thead>
    <tr>
        <th>Name</th>
        <th>Default Value</th>
        <th>Description</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>PORT</td>
        <td>8090</td>
        <td>Micro service port</td>
    </tr>
    <tr>
        <td>EUREKA_URL</td>
        <td>http://127.0.0.1:8761/eureka</td>
        <td>The url where the smkt-eureka be</td>
    </tr>
</tbody>
</table>


#### Docker command

```bash
    docker run -d -p8090:8090 -ePORT=8090 -eEUREKA_URL=http://127.0.0.1:8761/eureka -t antonioalejandro01/smkt-gateway:latest
 ```

## Use in Docker Compose

```yaml
    gateway:
        image: antonioalejandro01/smkt-gateway:latest
        container_name: smkt-gateway
        environment:
            PORT: 8090
            EUREKA_URL: http://smkt-eureka:8761/eureka
        expose:
            - "8090"
        ports: 
            - "8090:8090"
```



