FROM mcr.microsoft.com/mssql/server:2022-latest

# Create a config directory
RUN mkdir -p /usr/config
WORKDIR /usr/config

# Bundle config source
COPY . /usr/config

# Grant permissions for to our scripts to be executable
RUN chmod +x ./
# RUN chmod +x entrypoint.sh
# RUN chmod +x configure-db.sh

ENTRYPOINT ["sh","entrypoint.sh"]
