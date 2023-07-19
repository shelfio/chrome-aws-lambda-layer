# Google Chrome for AWS Lambda as a layer

> 58 MB Google Chrome to fit inside AWS Lambda Layer compressed with Brotli

[Sparticuz/chromium](https://github.com/Sparticuz/chromium) published as a Lambda Layer.

Works with Node.js 16x. Has Chromium v109.0.0.0.

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:32
```

Current version: `@sparticuz/chrome-aws-lambda` & Chromium v109.0.0

When importing the module within lambda, make sure you import `@sparticuz/chromium` not `chrome-aws-lambda`

```js
const chromium = require('@sparticuz/chromium');
```

## Available regions

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda:32`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda:32`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda:32`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda:32`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda:32`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda:32`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda:32`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda:32`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda:32`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda:32`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda:32`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda:32`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:32`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda:32`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda:32`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda:32`


## Update

1. Grab the latest artifact from https://github.com/Sparticuz/chromium/actions/workflows/aws.yml
2. Copy `chromium.zip` to this repo
3. Run `create-zip.sh` to reduce the zip size
4. Put proper version inside `publish.sh` & `README.md` (append `[ci skip]` suffix to the commit message to avoid republishing)
5. Push

## License

MIT © [Shelf](https://shelf.io)
