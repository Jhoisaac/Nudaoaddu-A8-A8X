#!/bin/bash
echo "**** Saving iOS 12.4 SHSH2 using DFU apnonce collision at A8 (DFU defect) ****"
if [ $# -gt 3 ]; then
  echo "[ERROR] Too many arguments"
  exit
fi

if [ $# -lt 2 ]; then
  echo "**HOW TO USE"
  echo "./get.sh <device> <boardconfig>"
  exit
fi

## A8
ApNonce='
9ce35ff297c7b56aba09253888c85d77229ef8ae
0a18ee3bdabeff6ed3dc79e29c803756720039db
3a1c72d426bc0e7f19191cffe6ec0b9ae39bc2cd
6e137dcb67d1fc04b3f447150698befb327713cb
61f38fc6b53921c639da93d6d7f6e5e66d61ca9f
0a18ee3bdabeff6ed3dc79e29c803756720039db
72d41d45661d4108ab49a743701b4203862e1651
0c06af333df4b406858dbbc8b24af852cf880b9c
c4599fe542c13957182bc8a1380f34ead3ca38be
4c710909a78e178c1dba6d74383ca39f4467e676
0f6659bf46effdbcaf6f61c2882c9a0f982709be
a5a7582eba9b470af97bab7c8b160718cb03927c
f1004bbced2756e53826ba705be22686dc8050d3
cdb3fb2b5106e7961c9573eec6a2b73c0990125c
8c011fc9010cc80366ee1e1e3bf5f7c2dcd00e64
84b3a2300f99bc0aeff7f8fab1c7c3f41bd2a3af
ff2a4b80cf9d873688bdd7d209401f30aa1f01d8
0c485dfec8a5856ef0f51f003cf29ac0e8e548b7
627d5eec3db0dadc4196cb719268ea5d11da92d5
8dacdbfa471770a6e675c4c9f1430a6decfc86ee
50582fac20237ccb3940ce7d34a04b8e58f62ad8
e59f9e1fbc009a4101b7232bab12da37a23e13f2
288dc4fa678ecfb53f935509bf8f900503804244
31f8840ca668f9eecf8c9bd112532a5a1a626bc9
a44dbde6cb070e5ab46787eee521142825442ae9
f72d17dca95268929845efd4e4fedc48540c6766
2310b20a5705d10f5403cb37d08f96e883d25940
e1443fe1f74455bb9010eb58c507e55d0cc3994f
868df9e85d9493db765fd221a464a45949c486ea
375c94df7ac91d6b606709fc81420484eb25bed6
9415f114318d9a4ca8c00b99ea36c9276f1d12c2
bc80c7fcef33c87bd372b945e04e373f93063760
2b93a4b2621b329307e3a87759b0914d422ce8e9
9aba353c1b40c59b2ee6db9eba94f1232ad22020
7262f34f431dc122e67ad246e2c1a8755013dc1f
1f06e0b5e5687b34e0aec5dcfabc7ef53bae12f2
1771b0b0a45dc31c5bce9523374be3312c010434
9415f114318d9a4ca8c00b99ea36c9276f1d12c2
cf328f27165ec42cc3c504ba4f41d9a9b6d82b8e
66d3fddd6c5b147b030fe0e5e7ab2ab94ae3f00b
ca76a7c080d21b85fd75b6c27b5c04c70a539afe
4cd4ff8a4049ba854d5917bc6e917059cfd78fc0
6163365a138d55a419f8ed3ccd7e87fd60e0baaa
3ee3a01929b5a97c3a5b146360ddfc250a3fc310
e69ac0394a939d484c264a6dcfeff3222f7c9f8e
ca76a7c080d21b85fd75b6c27b5c04c70a539afe
6a80ec36a94e7fd5e87e3de583c82711b76e6907
45b2cd65be54a27952a4d7e3004cf3a903455311
d43d64264d0dea5950a8af3acff0ca1a318faab9
79febc9d8e400fa1cafa2d94296a11563f3a81f9
0c6ec8eb454c40870cd4ef4d89d8c9ccb81d398c
b91316535f0405d909bd2fe18217edce90283c1f
3b5e66073e316271ca6b889efcd6ccdafddf24b9
b35589c97a79816dd089fe04cdc20d6faea01a75
479ba9df45be3f1ee3dbbbfde3a02f47a31755f8
3f8d4e3aa587d3a5a5cb34c869ac3bbe66fc8579
1f7c3e8951fbd16a4feaaa91de88fb6c398eb96b
458ae255c8abde8850e898e1e11463195b7eea4b
a0793456ff986ba3401f2fd445562554faf52730
a44dbde6cb070e5ab46787eee521142825442ae9
b30488506ebefce0fdb6f4efa862acb01c15304d
'

if [ $1 = "iPhone7,2" ]&&[ $2 = "n61ap" ];then
echo "iPhone 6"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86577/9E2ACCF8-A743-11E9-A35C-D2077EC3910A/iPhone_4.7_12.4_16G77_Restore.ipsw"
fi

if [ $1 = "iPhone7,1" ]&&[ $2 = "n56ap" ];then
echo "iPhone 6 Plus"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86579/9E26E61A-A743-11E9-87D6-F185B65480B0/iPhone_5.5_12.4_16G77_Restore.ipsw"
fi

if [ $1 = "iPad5,3" ]&&[ $2 = "j81ap" ];then
echo "iPad Air 2"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86554/9E08736A-A743-11E9-B479-F4141D08E641/iPad_64bit_TouchID_12.4_16G77_Restore.ipsw"
fi

if [ $1 = "iPad5,4" ]&&[ $2 = "j82ap" ];then
echo "iPad Air 2"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86554/9E08736A-A743-11E9-B479-F4141D08E641/iPad_64bit_TouchID_12.4_16G77_Restore.ipsw"
fi

if [ $1 = "iPad5,1" ]&&[ $2 = "j96ap" ];then
echo "iPad Mini 4"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86554/9E08736A-A743-11E9-B479-F4141D08E641/iPad_64bit_TouchID_12.4_16G77_Restore.ipsw"
fi

if [ $1 = "iPad5,2" ]&&[ $2 = "j97ap" ];then
echo "iPad Mini 4"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86554/9E08736A-A743-11E9-B479-F4141D08E641/iPad_64bit_TouchID_12.4_16G77_Restore.ipsw"
fi

if [ $1 = "iPod7,1" ]&&[ $2 = "n102ap" ];then
echo "iPod Touch 6"
url="http://updates-http.cdn-apple.com/2019SummerFCS/fullrestores/041-86563/9E4DEC4C-A743-11E9-87E4-CD93DBB619B1/iPodtouch_12.4_16G77_Restore.ipsw"
fi

# pzb
if [ -e "fw/"$1"_"$2"_12.4.plist" ]; then
  echo "[SKIP] Already exist BuildManifest"
else
  bin/partialZipBrowser -g BuildManifest.plist $url
  if [ ! -e "BuildManifest.plist" ]; then
    echo "[ERROR] Failed download BuildManifest.plist"
    exit
  fi
  mv -v BuildManifest.plist "fw/"$1"_"$2"_12.4.plist"
fi

#igetnonce
ret=$(bin/igetnonce 2>/dev/null | grep ECID)
ecidhex=$(echo $ret | cut -d '=' -f 2 )
ecidhex2=$(echo $ecidhex | tr '[:lower:]' '[:upper:]')
echo $ecidhex2 >/dev/null
ecid=$(echo "obase=10; ibase=16; $ecidhex2" | bc)
echo $ecid

#tsschecker
#./tsschecker -d $1 -B $2 -s -e $ecid -m ""$1"_"$2"_12.4.plist"
echo "** NonceList"
for nonce in ${ApNonce}
do
  #echo "saving apnonce = "$nonce"..."
  if [ -e "shsh2/"$ecid"_"$1"_"$2"_12.4-16G77_"$nonce".shsh2" ]; then
    echo "[SKIP] Already exist shsh2 (apnonce = "$nonce")"
  else
    ./tsschecker -d $1 -B $2 -s -e $ecid -m "fw/"$1"_"$2"_12.4.plist" --save-path shsh2/ --apnonce $nonce 2>/dev/null >/dev/null
    if [ -e "shsh2/"$ecid"_"$1"_"$2"_12.4-16G77_"$nonce".shsh2" ]; then
      echo "[SUCCESS] saved apnonce = "$nonce""
    else
      echo "[FAILED] not saved apnonce = "$nonce""
    fi
  fi

done

./tsschecker -d $1 -B $2 -s -e $ecid -m "fw/"$1"_"$2"_12.4.plist" --save-path shsh2/ --generator 0x1111111111111111 2>/dev/null >/dev/null
./tsschecker -d $1 -B $2 -s -e $ecid -m "fw/"$1"_"$2"_12.4.plist" --save-path shsh2/ --generator 0xbd34a880be0b53f3 2>/dev/null >/dev/null

echo "Done"
