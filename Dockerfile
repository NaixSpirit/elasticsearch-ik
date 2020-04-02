ARG ES_VERSION=7.6.2

FROM elasticsearch:${ES_VERSION}

ARG IK_VERSION=7.6.2

MAINTAINER Xuanyu "neverlandxy.naix@gmail.com"

RUN mkdir /usr/share/elasticsearch/plugins/ik && \
    curl --output /tmp/elasticsearch-analysis-ik.zip -LJO https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${IK_VERSION}/elasticsearch-analysis-ik-${IK_VERSION}.zip && \
    unzip /tmp/elasticsearch-analysis-ik.zip -d /usr/share/elasticsearch/plugins/ik && \
    rm -rf /tmp/elasticsearch-analysis-ik.zip
