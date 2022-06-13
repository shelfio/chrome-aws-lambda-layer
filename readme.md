# Google Chrome for AWS Lambda as a layer

> 56 MB Google Chrome to fit inside AWS Lambda Layer compressed with Brotli

[chrome-aws-lambda](https://github.com/Sparticuz/chrome-aws-lambda) published as a Lambda Layer.

Works with Node.js 16x. Has Chromium v103.0.5058.0.

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:30
```

Current version: `@sparticuz/chrome-aws-lambda` v14.3.0 & Chromium v103.0.5058.0

## Available regions

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda:30`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda:30`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda:30`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda:30`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda:30`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda:30`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda:30`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda:30`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda:30`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda:30`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda:30`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda:30`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:30`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda:30`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda:30`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda:30`


## Update

1. Grab the latest artifact from https://github.com/Sparticuz/chrome-aws-lambda/actions/workflows/aws.yml?query=branch%3Amaster
2. Copy `chrome_aws_lambda.zip` to this repo
3. Optionally, remove junk files from the zip: `npx del-cli "nodejs/node_modules/**/@types/**" "nodejs/node_modules/**/*.d.ts" "nodejs/node_modules/**/.yarn-integrity" "nodejs/node_modules/**/.bin" "__MACOS/**" "nodejs/__MACOS/**" "nodejs/node_modules/**/README.md"`
4. Put proper version inside `publish.sh` & `README.md` (append `[ci skip]` suffix to the commit message to avoid republishing)
5. Push

## License

MIT © [Shelf](https://shelf.io)
