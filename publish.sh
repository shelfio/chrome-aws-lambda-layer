#!/usr/bin/env bash

LIB_VERSION=1.19.0
CHROMIUM_VERSION=77.0.3844.0
LAYER_NAME='chrome-aws-lambda'
REGIONS='
ap-northeast-1
ap-northeast-2
ap-south-1
ap-southeast-1
ap-southeast-2
ca-central-1
eu-north-1
eu-central-1
eu-west-1
eu-west-2
eu-west-3
sa-east-1
us-east-1
us-east-2
us-west-1
us-west-2
'

for region in $REGIONS; do
  LAYER_VERSION=$(
      aws lambda publish-layer-version --region "$region" \
        --layer-name $LAYER_NAME \
        --zip-file fileb://chrome_aws_lambda.zip \
        --description "chrome-aws-lambda v${LIB_VERSION} & Chromium v${CHROMIUM_VERSION}" \
        --query Version \
        --output text
    )

  aws lambda add-layer-version-permission \
    --region "$region" \
    --layer-name $LAYER_NAME \
    --statement-id sid1 \
    --action lambda:GetLayerVersion \
    --principal '*' \
    --version-number "$LAYER_VERSION"
done
