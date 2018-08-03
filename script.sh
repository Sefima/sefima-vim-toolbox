#!/bin/bash

echo "[sefima-dev-toolbox] Lancement des serveurs vue-language-server et javascript-typescript-langserver..."
# import du env
export $(egrep -v '^#' env | xargs)
echo "node version is : $node_version"

node ~/.nvm/versions/node/v$node_version/lib/node_modules/javascript-typescript-langserver/lib/language-server.js 2>&1 > logs/js.log &
# démarre vue server language
~/.nvm/versions/node/v$node_version/lib/node_modules/vue-language-server/bin/vls --stdio 2>&1 logs/vls.log &
