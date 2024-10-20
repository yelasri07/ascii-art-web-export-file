# Download the latest version of Go using Alpine, a lightweight Linux version
FROM golang:alpine

# Labels to describe who worked on this image
LABEL maintainer1="Youssef El Asri <elasriyoussef604@gmail.com>"
LABEL maintainer2="Ismail Sayen <ismailsvn02@gmail.com>" 
LABEL maintainer3="Chakir Benlafkih <Chakir.Benlafkih@gmail.com>"  
LABEL version="1.0"
LABEL description="Application web to generate ascii art using golang." 

# Set the working directory inside the container
WORKDIR /app

# Copy all the files from your machine to the container
COPY . .

# Install Bash inside the container
RUN apk add bash

# Build your Go program and name the output file "main"
RUN go build -o main .

# Expose port 8080 to allow access from outside the container
EXPOSE 8080

# Run the Go program when the container starts
CMD ["./main"]