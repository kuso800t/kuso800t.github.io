#!/bin/bash

set -eu

cat <<'!'
Search Console で https://kuso800t.github.io のサイトマップを消して再送信しても
「ステータスが取得できませんでした」となります。

このサイトのコンテンツの一部は以下のとおりです:
!
root=https://kuso800t.github.io

function block ()
{
    echo "## curl -i $1"
    echo '```'
    curl -i $1
    echo '```'
    echo ''
}


block $root/sitemap.xml
block $root/robots.txt
block $root

cat <<'!'
どのようにしたらステータスが取得できるのでしょうか?