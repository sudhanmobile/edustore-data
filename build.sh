#!/bin/bash
git config --global --add safe.directory /repo
git config --global --add safe.directory '/repo/*'
fdroid build org.edustore.app:1023050 -v