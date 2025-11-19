# declre waht image to use
#FROM image_name:latest
FROM python:latest

WORKDIR /app


#COPY local_folder container_folder

# same destination is /app
#COPY ./static_html /app
COPY ./src .


# RUN echo "hello" > index.html


# docker build -f Dockerfile -t pyapp .
# doceker run -it pyapp

# docker build -f Dockerfile -t hugoangueiraf/ai-py-app-test:latest .
# doceker run -it hugoangueiraf/ai-py-app-test: latest


# python -m http.server 8000
# docker run -it -p 3000:8000 pyapp
# docker run -it -p 8000:8000 pyapp
CMD ["python", "-m", "http.server", "8000"]
