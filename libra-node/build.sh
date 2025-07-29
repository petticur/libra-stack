#!/usr/bin/env bash
source ${STACK_CONTAINER_BASE_DIR}/build-base.sh

FULL_REPO_PATH=${STACK_REPO_BASE_DIR}/github.com/petticur/libra-framework/

docker build --target dind-rootless -t ${STACK_IMAGE_NAME}:${STACK_IMAGE_LOCAL_TAG} -f ${FULL_REPO_PATH}/container/Containerfile ${build_command_args} ${FULL_REPO_PATH}
