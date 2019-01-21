FROM ballerina/ballerina-runtime:0.983.0
LABEL maintainer="agustin.bua@vatrox.com"

COPY service.balx /home/ballerina 

COPY ojdbc7.jar /ballerina/runtime/bre/lib/ojdbc7.jar
COPY service.toml /home/ballerina/conf/service.toml
EXPOSE  9090

CMD ballerina run  --config /home/ballerina/conf/service.toml service.balx
