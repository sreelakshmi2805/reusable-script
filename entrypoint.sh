# #!/bin/sh -l

# echo "Goodbye"

# CI_COMMIT_BRANCH="$CI_COMMIT_BRANCH"
# DEV_ENV_HOST_IP="$DEV_ENV_HOST_IP"
# DEV_MONGODB__DATABASE_NAME="$DEV_MONGODB__DATABASE_NAME"
# DEV_AZURESTORAGE__CONTAINER_NAME="$DEV_AZURESTORAGE__CONTAINER_NAME"
# INT_ENV_HOST_IP="$INT_ENV_HOST_IP"
# INT_MONGODB__DATABASE_NAME="$INT_MONGODB__DATABASE_NAME"
# INT_AZURESTORAGE__CONTAINER_NAME="$INT_AZURESTORAGE__CONTAINER_NAME"
# PROD_ENV_HOST_IP="$PROD_ENV_HOST_IP"
# PROD_MONGODB__DATABASE_NAME="$PROD_MONGODB__DATABASE_NAME"
# PROD_AZURESTORAGE__CONTAINER_NAME="$PROD_AZURESTORAGE__CONTAINER_NAME"
# STAGING_ENV_HOST_IP="$STAGING_ENV_HOST_IP"
# STAGING_MONGODB__DATABASE_NAME="$STAGING_MONGODB__DATABASE_NAME"
# STAGING_AZURESTORAGE__CONTAINER_NAME="$STAGING_AZURESTORAGE__CONTAINER_NAME"

# ENV_HOST_IP="$DEV_ENV_HOST_IP"
# MONGODB__DATABASE_NAME="$DEV_MONGODB__DATABASE_NAME"
# AZURESTORAGE__CONTAINER_NAME="$DEV_AZURESTORAGE__CONTAINER_NAME"
# echo "ENV_HOST_IP=$ENV_HOST_IP" >> $GITHUB_ENV
# echo "MONGODB__DATABASE_NAME=$MONGODB__DATABASE_NAME" >> $GITHUB_ENV
# echo "AZURESTORAGE__CONTAINER_NAME=$AZURESTORAGE__CONTAINER_NAME" >> $GITHUB_ENV

# if [ "$CI_COMMIT_BRANCH" == "master" ]; then
#     ENV_HOST_IP="$DEV_ENV_HOST_IP"
#     MONGODB__DATABASE_NAME="$DEV_MONGODB__DATABASE_NAME"
#     AZURESTORAGE__CONTAINER_NAME="$DEV_AZURESTORAGE__CONTAINER_NAME"
# elif [ "$CI_COMMIT_BRANCH" == "int" ]; then
#     ENV_HOST_IP="$INT_ENV_HOST_IP"
#     MONGODB__DATABASE_NAME="$INT_MONGODB__DATABASE_NAME"
#     AZURESTORAGE__CONTAINER_NAME="$INT_AZURESTORAGE__CONTAINER_NAME"
# elif [ "$CI_COMMIT_BRANCH" == "prod" ]; then
#     ENV_HOST_IP="$PROD_ENV_HOST_IP"
#     MONGODB__DATABASE_NAME="$PROD_MONGODB__DATABASE_NAME"
#     AZURESTORAGE__CONTAINER_NAME="$PROD_AZURESTORAGE__CONTAINER_NAME"
# elif [ "$CI_COMMIT_BRANCH" == "staging" ]; then
#     ENV_HOST_IP="$STAGING_ENV_HOST_IP"
#     MONGODB__DATABASE_NAME="$STAGING_MONGODB__DATABASE_NAME"
#     AZURESTORAGE__CONTAINER_NAME="$STAGING_AZURESTORAGE__CONTAINER_NAME"
# fi

# echo "ENV_HOST_IP=$ENV_HOST_IP" >> $GITHUB_ENV
# echo "MONGODB__DATABASE_NAME=$MONGODB__DATABASE_NAME" >> $GITHUB_ENV
# echo "AZURESTORAGE__CONTAINER_NAME=$AZURESTORAGE__CONTAINER_NAME" >> $GITHUB_ENV