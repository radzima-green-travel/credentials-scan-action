#!/bin/sh -l

git secrets --register-aws
git secrets --scan -r
