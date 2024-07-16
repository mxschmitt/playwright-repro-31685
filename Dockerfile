FROM mcr.microsoft.com/playwright/dotnet:v1.45.0-jammy

COPY . /app
WORKDIR /app

ENV BROWSER=firefox
ENV DEBUG=pw:browser

RUN adduser jenkins --disabled-password
RUN chown -R jenkins /app
USER jenkins

ENTRYPOINT dotnet test --logger:"console;verbosity=detailed"
