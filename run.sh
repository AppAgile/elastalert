#!/bin/bash
export ELASTALERT_CONFIG=${ELASTALERT_CONFIG:-config/config.yaml}
export ELASTALERT_PARAMETER=${ELASTALERT_PARAMETER:-''}
python elastalert/elastalert.py --config $ELASTALERT_CONFIG $ELASTALERT_PARAMETER
