FROM java:8

EXPOSE 8081

ADD target/fsd-kitchen-story.jar fsd-kitchen-story.jar

ENTRYPOINT ["java","-jar","fsd-kitchen-story.jar"]
