FROM ubi8/nodejs-20

RUN yum -y update && \
    yum -y install glibc


# Add application sources
ADD src .

# Install the dependencies
RUN npm install

# Run script uses standard ways to run the application
CMD npm run -d start
