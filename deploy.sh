#!/usr/bin/env bash
eval "$(ssh-agent -s)" #start the ssh agent
chmod 600 .travis/deploy_key # this key should have push access
ssh-add .travis/deploy_key
git remote add upstream git@github.com:asgorobets/travis-sync-upstream.git
git push upstream ${TRAVIS_BRANCH}