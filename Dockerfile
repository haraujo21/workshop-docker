FROM python:3.13.5
RUN pip install uv
COPY . /src
WORKDIR /src
RUN uv sync
EXPOSE 8501
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]