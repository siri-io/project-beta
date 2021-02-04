set -e
git config user.email "action@github.com"
git config user.name "Bot"
npm i
npm run release -- --ci minor
echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" > .npmrc
npm publish --access public
