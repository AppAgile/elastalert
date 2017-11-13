#!/bin/bash
export ELASTALERT_CONFIG=${ELASTALERT_CONFIG:-config/config.yaml}
export ELASTALERT_PARAMETER=${ELASTALERT_PARAMETER:-''}

python elastalert/create_index.py --config config/config.yaml --index .kibana

exec python elastalert/elastalert.py --config $ELASTALERT_CONFIG $ELASTALERT_PARAMETER
