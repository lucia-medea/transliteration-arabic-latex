#!/bin/bash

dir="rom"
if [[ ! -d "${dir}" ]]; then
  mkdir ${dir}
fi

sed -E '
1,$s/(.)ّ/\1\1/g
1,$s/،/,/g
1,$s/؛/;/g
1,$s/؟/?/g
1,$s/ء/\\textsecstress{}/g
1,$s/(^| )ال/ \\Alif{}al/g
1,$s/(^| )لا($| )/ la\\Alif{} /g
1,$s/آ/\\Alif{}\\^{a}/g
1,$s/أ/\\Alif{}\\textprimstress{}a/g
1,$s/ؤ/w\\textprimstress{}/g
1,$s/إ/\\Alif{}\\textsecstress{}i/g
1,$s/ئ/\\`{y}\\textprimstress{}/g
1,$s/ا/\\Alif{}/g
1,$s/ب/b/g
1,$s/ة/\\"{t}/g
1,$s/ت/t/g
1,$s/ث/\\b{t}/g
1,$s/ج/\\v{g}/g
1,$s/ح/\\d{h}/g
1,$s/خ/\\b{h}/g
1,$s/د/d/g
1,$s/ذ/\\b{d}/g
1,$s/ر/r/g
1,$s/ز/z/g
1,$s/س/s/g
1,$s/ش/\\v{s}/g
1,$s/ص/\\d{s}/g
1,$s/ض/\\d{d}/g
1,$s/ط/\\d{t}/g
1,$s/ظ/\\d{z}/g
1,$s/ع/\\Ayn{}/g
1,$s/غ/\\.{g}/g
1,$s/ـ/…/g
1,$s/ف/f/g
1,$s/ق/q/g
1,$s/ك/k/g
1,$s/ل/l/g
1,$s/م/m/g
1,$s/ن/n/g
1,$s/ه/h/g
1,$s/(^| )وو/ ww/g
1,$s/(^| )وَو/ waw/g
1,$s/(^| )و/ w/g
1,$s/و/w/g
1,$s/ى/\\`{a}/g
1,$s/(^| )ي/ y/g
1,$s/ي/y/g
1,$s/ٖ/a/g
1,$s/٠/0/g
1,$s/١/1/g
1,$s/٢/2/g
1,$s/٣/3/g
1,$s/٤/4/g
1,$s/٥/5/g
1,$s/٦/6/g
1,$s/٧/7/g
1,$s/٨/8/g
1,$s/٩/9/g
1,$s/٪/%/g
1,$s/٫/[[,]]/g
1,$s/٬/[[.]]/g
1,$s/۔/¶/g
1,$s/ً/\\’{a}/g
1,$s/ٍ/\\’{i}/g
1,$s/ٌ/\\’{u}/g
1,$s/َ/a/g
1,$s/ِ/i/g
1,$s/ُ/u/g
1,$s/ّ/²/g
1,$s/ْ//g
1,$s/ٓ/˜/g
1,$s/ٔ/ʾ/g
1,$s/ٕ/˒/g
1,$s/^ //g
' "$1" > ${dir}/"$1"


