#! /usr/bin/env bash

latexmk -pdflua emojicite-doc.tex

working_dir=$PWD
tmp_dir=/tmp/emoji
ctan_dir=$tmp_dir/emojicite

mkdir -p $tmp_dir
mkdir -p $ctan_dir

cp *.sty                $ctan_dir
cp *.tex                $ctan_dir
cp *.txt                $ctan_dir
cp emojicite-doc.pdf    $ctan_dir
cp *.md                 $ctan_dir

chmod 644 $ctan_dir/*.*


cd $tmp_dir
zip -q -r -9 emojicite.zip .

cd $working_dir
mkdir -p ./release
cp -f $tmp_dir/emojicite.zip     ./release

rm -r $tmp_dir
