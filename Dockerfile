FROM debian:9

RUN apt-get update 

# install git and maven (implicitly installing openjdk 1.8)
RUN apt-get install -y git openjdk-8-jdk maven
RUN java -version
RUN mvn -v

WORKDIR /tmp
RUN git clone https://gitlab.com/fintechlabs/fapi-conformance-suite.git
WORKDIR /tmp/fapi-conformance-suite
RUN mvn clean package

