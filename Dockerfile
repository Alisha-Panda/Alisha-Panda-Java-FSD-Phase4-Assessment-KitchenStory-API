FROM openjdk:8-jdk
COPY ./target/java-fsd-phase4-assessment-ecommerce-kitchenstory-0.0.1-SNAPSHOT.jar java-fsd-phase4-assessment-ecommerce-kitchenstory-0.0.1-SNAPSHOT.jar
CMD ["java" ,"-jar","java-fsd-phase4-assessment-ecommerce-kitchenstory-0.0.1-SNAPSHOT.jar"]
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
