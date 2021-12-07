FROM openjdk:8-jdk
COPY ./target/Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory-0.0.1-SNAPSHOT.jar Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory-0.0.1-SNAPSHOT.jar
CMD ["java" ,"-jar","Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory-0.0.1-SNAPSHOT.jar"]
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
