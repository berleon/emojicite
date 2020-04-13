#! /usr/bin/env bash

latexmk -pdflua emojicite-doc.tex

working_dir=$PWD
tmp_dir=/tmp/emoji
tds_dir=$tmp_dir/tds
ctan_dir=$tmp_dir/emojicite
tex_dir=$tds_dir/tex/latex/emojicite
doc_dir=$tds_dir/doc/latex/emojicite

mkdir -p $tmp_dir
mkdir -p $tds_dir
mkdir -p $ctan_dir
mkdir -p $tex_dir
mkdir -p $doc_dir

cp *.sty                $ctan_dir
cp *.tex                $ctan_dir
cp emojicite-doc.pdf    $ctan_dir
cp *.md                 $ctan_dir

chmod 644 $ctan_dir/*.*

cp $ctan_dir/*.sty      $tex_dir
cp $ctan_dir/*.pdf      $doc_dir
cp $ctan_dir/*.md       $doc_dir

cd $tds_dir
zip -q -r -9 emojicite.tds.zip .

cp  $tds_dir/*.zip $tmp_dir
rm -r $tds_dir

cd $tmp_dir
zip -q -r -9 emojicite.zip .

cd $working_dir
mkdir -p ./release
cp -f $tmp_dir/emojicite.zip     ./release
cp -f $tmp_dir/emojicite.tds.zip     ./release

rm -r $tmp_dir
