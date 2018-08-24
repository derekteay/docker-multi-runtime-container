FROM ubuntu:18.04

# Install essential tools
RUN apt-get update
RUN apt-get install -y curl vim gnupg

# Setup to install .NET Core
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys EB3E94ADBE1229CF
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list

# Run another update after setting up requirements for .NET Core
RUN apt-get update

# Install .NET Core
RUN apt-get install -y dotnet-sdk-2.1.105

# Install IBM Cloud CLI
# Uncomment below to enable
#RUN curl -fsSL https://clis.ng.bluemix.net/install/linux | sh

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install -y nodejs

# Install Python
RUN apt-get install -y python3 python3-dev python3-pip

# Install Java 8
RUN apt-get install -y openjdk-8-jdk

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Copy test files to container
COPY python_test.sh /python_test.sh
COPY node_test.sh /node_test.sh
COPY java_test.sh /java_test.sh
COPY dotnet_test.sh /dotnet_test.sh
COPY test_all.sh /test_all.sh

