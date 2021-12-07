FROM java:8

EXPOSE 8081

ADD target/ecom-webservice-kitchenstory.jar ecom-webservice-kitchenstory.jar

ENTRYPOINT ["java","-jar","ecom-webservice-kitchenstory.jar"]