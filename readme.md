# Google Chrome for AWS Lambda as a layer

> 58 MB Google Chrome to fit inside AWS Lambda Layer compressed with Brotli

[Sparticuz/chromium](https://github.com/Sparticuz/chromium) published as a Lambda Layer.

Tested with Node.js 16x/18x. Compatible with x86_64 only. Has Chromium v122.0.0

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:43
```

When importing the module within lambda, make sure you import `@sparticuz/chromium` not `chrome-aws-lambda`

```js
const chromium = require('@sparticuz/chromium');
```

**package.json**

- `@sparticuz/chromium` marked as a dependency
- `puppeteer-core` marked as a dependency

**lambda container settings**:

- x86_64 architecture
- > =1024mb memory
- `@sparticuz/chromium` marked as an externalModule in the bundling settings
- A lambda layer marked like so (this is CDK code, but convert to SAM or whatever at will):

```ts
layers: [LayerVersion.fromLayerVersionArn(this, 'chromium-lambda-layer',
  'arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:43'
)]
```

**In the deployed lambda code**
You can just use a regular ES6 or CommonJS import statement for `@sparticuz/chrome-aws-lambda`, and just use as
indicated.

## Available regions

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda:43`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda:42`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda:43`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda:43`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda:43`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda:43`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda:43`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda:43`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda:43`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda:43`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda:43`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda:43`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:43`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda:43`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda:43`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda:43`

## License

MIT © [Shelf](https://shelf.io)
