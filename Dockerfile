FROM openjdk:8-jdk

EXPOSE 8081

ADD target/fsd-kitchen-story.jar ecom-webservice-kitchenstory.jar

ENTRYPOINT ["java","-jar","ecom-webservice-kitchenstory.jar"]

RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

