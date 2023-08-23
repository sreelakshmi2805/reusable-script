#!/bin/sh -l
CI_COMMIT_BRANCH="$CI_COMMIT_BRANCH"
DEV_ENV_HOST_IP="$DEV_ENV_HOST_IP"
DEV_MONGODB__DATABASE_NAME="$MONGODB__DATABASE_NAME"
DEV_AZURESTORAGE__CONTAINER_NAME="$AZURESTORAGE__CONTAINER_NAME"
INT_ENV_HOST_IP="$INT_ENV_HOST_IP"
INT_MONGODB__DATABASE_NAME="$INT_MONGODB__DATABASE_NAME"
INT_AZURESTORAGE__CONTAINER_NAME="$INT_AZURESTORAGE__CONTAINER_NAME"
PROD_ENV_HOST_IP="$PROD_ENV_HOST_IP"
PROD_MONGODB__DATABASE_NAME="$PROD_MONGODB__DATABASE_NAME"
PROD_AZURESTORAGE__CONTAINER_NAME="$PROD_AZURESTORAGE__CONTAINER_NAME"
STAGING_ENV_HOST_IP="$STAGING_ENV_HOST_IP"
STAGING_MONGODB__DATABASE_NAME="$STAGING_MONGODB__DATABASE_NAME"
STAGING_AZURESTORAGE__CONTAINER_NAME="$STAGING_AZURESTORAGE__CONTAINER_NAME"

# export CI_COMMIT_BRANCH=$CI_COMMIT_BRANCH
if [ "$CI_COMMIT_BRANCH" == "master" ]; then
    echo "Setting Host IP to $DEV_ENV_HOST_IP for dev branch"
    export ENV_HOST_IP= $DEV_ENV_HOST_IP          
    export MONGODB__DATABASE_NAME= $DEV_MONGODB__DATABASE_NAME         
    export AZURESTORAGE__CONTAINER_NAME= $DEV_AZURESTORAGE__CONTAINER_NAME
elif [ "$CI_COMMIT_BRANCH" == "int" ]; then
    echo "Setting Host IP to  $INT_ENV_HOST_IPfor int branch"
    export ENV_HOST_IP= $INT_ENV_HOST_IP
    export MONGODB__DATABASE_NAME= $INT_MONGODB__DATABASE_NAME
    export AZURESTORAGE__CONTAINER_NAME= $INT_AZURESTORAGE__CONTAINER_NAME
elif [ "$CI_COMMIT_BRANCH" == "master" ]; then
    echo "Setting Host IP to  $PROD_ENV_HOST_IPfor master branch"
    export ENV_HOST_IP= $PROD_ENV_HOST_IP
    export MONGODB__DATABASE_NAME= $PROD_MONGODB__DATABASE_NAME
    export AZURESTORAGE__CONTAINER_NAME= $PROD_AZURESTORAGE__CONTAINER_NAME
elif [ "$CI_COMMIT_BRANCH" == "staging" ]; then
    echo "Setting Host IP to  $STAGING_ENV_HOST_IPfor staging branch"
    export ENV_HOST_IP= $STAGING_ENV_HOST_IP
    export MONGODB__DATABASE_NAME= $STAGING_MONGODB__DATABASE_NAME
    export AZURESTORAGE__CONTAINER_NAME= $STAGING_AZURESTORAGE__CONTAINER_NAME
fi
echo "ENV_HOST_IP=$ENV_HOST_IP" >> $GITHUB_ENV
echo "MONGODB__DATABASE_NAME=$MONGODB__DATABASE_NAME" >> $GITHUB_ENV
echo "AZURESTORAGE__CONTAINER_NAME=$AZURESTORAGE__CONTAINER_NAME" >> $GITHUB_ENV