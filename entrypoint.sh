#!/bin/sh -l

# echo "Hello $1"
# time=$(date)
# echo "time=$time" >> $GITHUB_OUTPUT

export CI_COMMIT_BRANCH=$1
export INT_ENV_HOST_IP=$2
export DEV_ENV_HOST_IP=$3

if [ "$CI_COMMIT_BRANCH" == "dev" ]; then
  echo "Setting Host IP to $DEV_ENV_HOST_IP for dev branch"
  export ENV_HOST_IP=$DEV_ENV_HOST_IP
elif [ "$CI_COMMIT_BRANCH" == "int" ]; then
  echo "Setting Host IP to $INT_ENV_HOST_IP for int branch"
fi

# Export the environment variables
echo "ENV_HOST_IP=$ENV_HOST_IP" >> $GITHUB_ENV