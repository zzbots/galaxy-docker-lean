# galaxy-docker-lean

A trimmed & updated version of the Meteor Galaxy default docker image.
* Starts from Ubuntu 20.04
* Adds only the node version specified in your Meteor build, no extra versions
* Removes nearly all extra apt-packages added in meteor:galaxy-app & meteor:ubuntu (leaves in curl, ca-certificates, jq, xz-utils & build-essential)
* Adds python2-minimal