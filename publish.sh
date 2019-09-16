#!/usr/bin/env bash

LIB_VERSION=1.20.0
CHROMIUM_VERSION=78.0.3882.0
LAYER_NAME='chrome-aws-lambda'

LAYER_VERSION=$(
  aws lambda publish-layer-version --region "$TARGET_REGION" \
    --layer-name $LAYER_NAME \
    --zip-file fileb://chrome_aws_lambda.zip \
    --description "chrome-aws-lambda v${LIB_VERSION} & Chromium v${CHROMIUM_VERSION}" \
    --query Version \
    --output text
)

aws lambda add-layer-version-permission \
  --region "$TARGET_REGION" \
  --layer-name $LAYER_NAME \
  --statement-id sid1 \
  --action lambda:GetLayerVersion \
  --principal '*' \
  --query Statement \
  --output text \
  --version-number "$LAYER_VERSION"
