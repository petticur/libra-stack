#!/usr/bin/env bash
source ${STACK_CONTAINER_BASE_DIR}/build-base.sh

docker build -t ${STACK_FULL_CONTAINER_IMAGE_TAG} -f ${STACK_REPO_CONTAINER_DIR}/container/Containerfile ${build_command_args} ${STACK_REPO_CONTAINER_DIR}
