#!/bin/bash

#
#    SPDX-License-Identifier: Apache-2.0
#

docker-compose -f docker-explorer/compose/docker-compose.yml down -v

rm -rf logs/