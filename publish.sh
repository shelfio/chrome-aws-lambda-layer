#!/usr/bin/env bash

aws configure set default.region "$TARGET_REGION" --profile default

LIB_VERSION=109.0.0
CHROMIUM_VERSION=109.0.0.0
LAYER_NAME='chrome-aws-lambda'
LAYER_DESCRIPTION="@sparticuz/chromium v${LIB_VERSION} & Chromium v${CHROMIUM_VERSION}"
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
