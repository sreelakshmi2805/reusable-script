#!/bin/sh -l


eval dynamic_variable_name="\$${dev_env_host_ip}"
echo "ip is $dynamic_variable_name"

# dev_env_host_ip="$dev_env_host_ip"
# echo "ip is $dev_env_host_ip"

# while [[ $# -gt 0 ]]; do
#   case "$1" in
#     *=*)
#       varname="${1%%=*}"
#       value="${1#*=}"
#       export "$varname=$value"
#       ;;
#   esac
#   shift
# done

# dev_env_host_ip="$dev_env_host_ip"
# echo "ip is $dev_env_host_ip" 

# DEV_IP="dev_env_host_ip"
# DEV_ENV_IP="${inputs[$DEV_IP]}"
# echo "ip is $DEV_ENV_IP"



# time=$(date)
# echo "time=$time" >> $GITHUB_OUTPUT

# export DEV_ENV_HOST_IP=$1

# if [ "$CI_COMMIT_BRANCH" = "master" ]; then
#   echo "Setting Host IP to $DEV_ENV_HOST_IP for master branch"
#   export ENV_HOST_IP="$DEV_ENV_HOST_IP"
# elif [ "$CI_COMMIT_BRANCH" = "int" ]; then
#   echo "Setting Host IP to $INT_ENV_HOST_IP for int branch"
#   export ENV_HOST_IP="$INT_ENV_HOST_IP"
# fi

# echo "ip is $1"
# echo "Debug: ENV_HOST_IP=$ENV_HOST_IP"

# # Export the environment variables
echo "ENV_HOST_IP=$ENV_HOST_IP" >> $GITHUB_ENV

# echo "Debug: ENV_HOST_IP=$ENV_HOST_IP"