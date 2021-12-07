FROM openjdk:8-jdk

COPY target/ecom-webservice-kitchenstory.jar ecom-webservice-kitchenstory.jar

CMD ["java","-jar","ecom-webservice-kitchenstory.jar"]

RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

