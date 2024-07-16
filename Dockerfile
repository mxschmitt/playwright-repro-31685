FROM mcr.microsoft.com/playwright/dotnet:v1.45.0-jammy

COPY . /app
WORKDIR /app

ENV BROWSER=firefox
ENV DEBUG=pw:browser

RUN chown -R pwuser /app
USER pwuser

ENTRYPOINT dotnet test --logger:"console;verbosity=detailed"
