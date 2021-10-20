#!/bin/bash
pushd /home/andreas_neumeier_org/buildbot
source ../env/bin/activate
exec buildbot start --nodaemon /home/andreas_neumeier_org/buildbot
popd
