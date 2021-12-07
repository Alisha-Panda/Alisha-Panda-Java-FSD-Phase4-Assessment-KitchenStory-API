FROM openjdk:8-jdk

ADD target/fsd-kitchen-story.jar ecom-webservice-kitchenstory.jar

ENTRYPOINT ["java","-jar","ecom-webservice-kitchenstory.jar"]

RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

