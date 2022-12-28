# Google Chrome for AWS Lambda as a layer

> 53 MB Google Chrome to fit inside AWS Lambda Layer compressed with Brotli

[chrome-aws-lambda](https://github.com/Sparticuz/chrome-aws-lambda) published as a Lambda Layer.

Works with Node.js 16x. Has Chromium v103.0.5058.0.

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:31
```

Current version: `@sparticuz/chrome-aws-lambda` v14.3.0 & Chromium v103.0.5058.0

When importing the module within lambda, make sure you import `@sparticuz/chrome-aws-lambda` not `chrome-aws-lambda`

```
const chromium = require("@sparticuz/chrome-aws-lambda");
```

## Available regions

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda:31`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda:31`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda:31`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda:31`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda:31`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda:31`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda:31`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda:31`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda:31`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda:31`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda:31`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda:31`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:31`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda:31`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda:31`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda:31`


## Update

1. Grab the latest artifact from https://github.com/Sparticuz/chromium/actions/workflows/aws.yml
2. Copy `chromium.zip` to this repo
3. Run `create-zip.sh` to reduce the zip size
4. Put proper version inside `publish.sh` & `README.md` (append `[ci skip]` suffix to the commit message to avoid republishing)
5. Push

## License

MIT © [Shelf](https://shelf.io)
