FROM openjdk:8-jdk
COPY target/Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory-0.0.1.jar Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory-0.0.1.jar
CMD ["java" ,"-jar","Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory-0.0.1.jar"]
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers