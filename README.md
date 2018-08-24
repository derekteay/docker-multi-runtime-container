# docker-multi-runtime-container

A Docker image that uses Ubuntu 18.04 with working Python, Node.JS, Java, and .NET Core runtimes pre-installed.

# Usage

To build, run the following command: `docker build -t docker-multi-runtime-container .`

To run a test to ensure an environment is working, run one of the `.sh` files: `sh java_test.sh`

To run all tests to ensure all environments are working, run the following command: `sh test_all.sh`
