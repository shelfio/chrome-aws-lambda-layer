# Google Chrome for AWS Lambda as a layer

> 36 MB Google Chrome to fit inside AWS Lambda Layer compressed with Brotli

[chrome-aws-lambda](https://github.com/alixaxel/chrome-aws-lambda) published as a Lambda Layer.

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:3
```

## Available regions

* ap-northeast-1
* ap-northeast-2
* ap-south-1
* ap-southeast-1
* ap-southeast-2
* ca-central-1
* eu-north-1
* eu-central-1
* eu-west-1
* eu-west-2
* eu-west-3
* sa-east-1
* us-east-1
* us-east-2
* us-west-1
* us-west-2

## Update

1. Follow steps at https://github.com/alixaxel/chrome-aws-lambda#aws-lambda-layer
2. Copy `chrome_aws_lambda.zip` to this repo
3. Put proper version inside `publish.sh`
4. Push

## License

MIT © [Shelf](https://shelf.io)
