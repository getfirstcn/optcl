# docker build -t registry-vpc.cn-shenzhen.aliyuncs.com/axd/jenkins-jnlp-slave:alpine .
# http://jenkins.aixiangdao.tech/jnlpJars/agent.jar
from jenkinsci/jnlp-slave:alpine
user root
run apk update \
    && apk add maven nodejs