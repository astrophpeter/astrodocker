source env.public
docker build . -t snana:$SNANA_VERSION --build-arg SNANA_VERSION=$SNANA_VERSION --build-arg SNANA_LIB_SDIR=$SNANA_LIB_SDIR