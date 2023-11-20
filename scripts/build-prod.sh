#!/bin/sh
rm -rf dist
nest build --webpack --webpackPath ./webpack.config.js
# nest build
cp pnpm-lock.yaml package.json dist/

[[ -e 'prisma/schema.prisma' ]] && cp -r prisma/ dist/
[[ -e 'prisma/schema.prisma' ]] && cp prisma/schema.prisma dist/
[[ -e 'node_modules/prisma/query_engine-windows.dll.node' ]] && cp 'node_modules/prisma/query_engine-windows.dll.node' dist/
[[ -e 'node_modules/prisma/libquery_engine-linux-musl-openssl-3.0.x.so.node' ]] && cp 'node_modules/prisma/libquery_engine-linux-musl-openssl-3.0.x.so.node' dist/

exit 0