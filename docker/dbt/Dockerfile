# Dockerfile
FROM python:3.8

WORKDIR /usr/dbt

COPY requirements.txt ./

# Install Python Dependencies
RUN pip install -U pip
RUN pip install --no-cache-dir -r requirements.txt

# Create alias for dbt-set-profile
RUN echo "alias dbt-set-profile='unset DBT_PROFILES_DIR && export DBT_PROFILES_DIR=\$PWD'" >> ~/.bashrc

CMD ["dbt", "--version"]