FROM openjdk:8-jdk

EXPOSE 8081

COPY target/ecom-webservice-kitchenstory.jar ecom-webservice-kitchenstory.jar

ENTRYPOINT ["java","-jar","ecom-webservice-kitchenstory.jar"]