# Google Chrome for AWS Lambda as a layer

> 68 MB (x64) / 66 MB (arm64) Chromium layer for AWS Lambda compressed with Brotli

[Sparticuz/chromium](https://github.com/Sparticuz/chromium) published as a Lambda Layer.

Tested with Node.js 16x/18x/20x/22x. Compatible with x86_64 and arm64 architectures. Has Chromium v153.0.0

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version ARN" and enter one of the ARNs below based on your Lambda architecture.

**For x86_64 (Intel/AMD)**:
```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:117
```

**For arm64 (Graviton2)**:
```
arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda-arm64:11
```

When importing the module within lambda, make sure you import `@sparticuz/chromium` not `chrome-aws-lambda`

```js
const chromium = require('@sparticuz/chromium');
```

**package.json**

- `@sparticuz/chromium` marked as a dependency
- `puppeteer-core` marked as a dependency

**lambda container settings**:

- x86_64 or arm64 architecture
- >=1024mb memory
- `@sparticuz/chromium` marked as an externalModule in the bundling settings
- A lambda layer marked like so (this is CDK code, but convert to SAM or whatever at will):

**For x86_64**:
```ts
layers: [LayerVersion.fromLayerVersionArn(this, 'chromium-lambda-layer',
  'arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:117'
)]
```

**For arm64**:
```ts
layers: [LayerVersion.fromLayerVersionArn(this, 'chromium-lambda-layer',
  'arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda-arm64:11'
)]
```

**In the deployed lambda code**
You can just use a regular ES6 or CommonJS import statement for `@sparticuz/chromium`, and just use as indicated.

## Available regions

### x86_64 (Intel/AMD)

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda:117`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda:116`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda:117`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda:117`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda:117`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda:117`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda:117`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda:117`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda:117`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda:117`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda:117`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda:117`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:117`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda:117`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda:117`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda:117`

### arm64 (Graviton2)

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:chrome-aws-lambda-arm64:11`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:chrome-aws-lambda-arm64:11`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:chrome-aws-lambda-arm64:11`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:chrome-aws-lambda-arm64:11`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:chrome-aws-lambda-arm64:11`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:chrome-aws-lambda-arm64:11`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:chrome-aws-lambda-arm64:11`

## License

MIT © [Shelf](https://shelf.io)
