unzip chromium.zip

npx del-cli "nodejs/node_modules/**/@types/**" \
  "nodejs/node_modules/**/*.d.ts" \
  "nodejs/node_modules/**/.yarn-integrity" \
  "nodejs/node_modules/**/.bin" \
  "__MACOS/**" \
  "nodejs/__MACOS/**" \
  "nodejs/node_modules/**/README.md" \
  "nodejs/node_modules/agent-base/src/*.ts" \
  "nodejs/**/.DS_Store"

rm chromium.zip
zip -r chromium.zip -9 nodejs
