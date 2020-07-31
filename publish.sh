#!/usr/bin/env bash

LIB_VERSION=3.1.1
CHROMIUM_VERSION=83.0.4103.0
LAYER_NAME='chrome-aws-lambda'
LAYER_DESCRIPTION="chrome-aws-lambda v${LIB_VERSION} & Chromium v${CHROMIUM_VERSION}"
S3_BUCKET_NAME=shelf-lambda-layers-"$TARGET_REGION"

aws s3 cp \
  /home/circleci/project/chrome_aws_lambda.zip \
  s3://"$S3_BUCKET_NAME"/chrome_aws_lambda.zip

aws lambda add-layer-version-permission \
  --region "$TARGET_REGION" \
  --layer-name "$LAYER_NAME" \
  --statement-id sid1 \
  --action lambda:GetLayerVersion \
  --principal '*' \
  --version-number "$(
    aws lambda publish-layer-version \
      --region "$TARGET_REGION" \
      --layer-name "$LAYER_NAME" \
      --description "$LAYER_DESCRIPTION" \
      --query Version \
      --output text \
      --content S3Bucket="$S3_BUCKET_NAME",S3Key=chrome_aws_lambda.zip
  )"
