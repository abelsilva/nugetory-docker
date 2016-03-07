FROM mono:4.2

ENV NUGETORY_VERSION 0.1.3

RUN nuget install nugetory -Version $NUGETORY_VERSION \
    -NonInteractive -ExcludeVersion \
    -NoCache -OutputDirectory /opt/

WORKDIR /opt/nugetory/

CMD mono nugetory.exe -d
