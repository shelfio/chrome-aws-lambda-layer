# Google Chrome for AWS Lambda as a layer

> 43 MB Google Chrome to fit inside AWS Lambda Layer compressed with Brotli

[chrome-aws-lambda](https://github.com/alixaxel/chrome-aws-lambda) published as a Lambda Layer.

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:20
```

Current version: chrome-aws-lambda v5.2.0 & Chromium v85.0.4182.0

## Available regions

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda:18`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda:18`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda:18`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda:18`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda:18`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda:18`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda:18`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda:18`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda:18`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda:18`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda:18`
* me-south-1: `arn:aws:lambda:me-south-1:764866452798:layer:chrome-aws-lambda:2` (lib version 2)
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda:18`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:20`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda:18`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda:18`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda:18`


## Update

1. Follow steps at https://github.com/alixaxel/chrome-aws-lambda#aws-lambda-layer
2. Copy `chrome_aws_lambda.zip` to this repo
3. Put proper version inside `publish.sh` & `README.md`
4. Push

## License

MIT © [Shelf](https://shelf.io)
