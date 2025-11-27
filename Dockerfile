FROM europe-north1-docker.pkg.dev/cgr-nav/pull-through/nav.no/jre:openjdk-21@sha256:b6e101c54501b27c39c47541e2d9f73c502be74c42ff4ba12c4d13972d0eff83
COPY build/libs/*-all.jar app.jar
ENV JAVA_OPTS='-XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp'
ENV LANG='nb_NO.UTF-8' LANGUAGE='nb_NO:nb' LC_ALL='nb:NO.UTF-8' TZ="Europe/Oslo"
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8080
