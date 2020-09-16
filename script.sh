#!/usr/bin/env bash

if [[ "$NEVERCODE_BRANCH" =~ "qa" ]]; then
    cd android
    sed -i "" "s/APP_PRODUCTION = true/APP_PRODUCTION = false/g" ffile
    sed -i "" "s/ANALYTICS_PRODUCTION = true/ANALYTICS_PRODUCTION = false/g" ffile
    sed -i "" "s/API_ENVIRONMENT = 0/API_ENVIRONMENT = 1/g" ffile
    cat ffile
fi
