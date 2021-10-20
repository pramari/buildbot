#!/bin/bash
pushd /home/andreas_neumeier_org/buildbot
git -c 'core.sshCommand=ssh -o "BatchMode=yes" -i "/home/andreas_neumeier_org/.ssh/id_rsa_buildbot"' pull
source ../env/bin/activate
exec buildbot start --nodaemon /home/andreas_neumeier_org/buildbot
popd
