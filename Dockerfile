FROM openjdk:8-jdk
COPY ./target/ecom-webservice-kitchenstory-0.0.1.jar ecom-webservice-kitchenstory-0.0.1.jar
CMD ["java" ,"-jar","ecom-webservice-kitchenstory-0.0.1.jar"]
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
