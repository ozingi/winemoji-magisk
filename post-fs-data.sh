MODDIR=${0%/*}

rm -rf /data/fonts

if getprop ro.product.system.manufacturer |
        grep -qE -e "^samsung"; then
		cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/SamsungColorEmoji.ttf
fi

if getprop ro.product.system.manufacturer |
        grep -qE -e "^LGE"; then
		cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/LGNotoColorEmoji.ttf
fi

if getprop ro.product.system.manufacturer |
        grep -qE -e "^HTC"; then
		cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/HTC_ColorEmoji.ttf
fi
