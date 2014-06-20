#!/bin/bash
# $1: dir for miui
# $2: dir for original


APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext.jar.out"

function appendSmaliPart() {
	cd overlay
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="../out/$filepath/$filename"
        cat $file >> $dstfile
    done
	cd ..
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find framework_ext.jar.out -name *.smali`; do
            file=${file2/framework_ext.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

	rm -rf "$BUILD_OUT/framework/smali/com/google/android/mms"
	cp -f $1/smali/android/app/DownloadManager* $2/smali/android/app/
    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
	#mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
    #rm -rf $BUILD_OUT/$SEP_FRAME/smali/miui
	#mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/$SEP_FRAME/smali"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/cdma"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/gsm"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/cat"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/ims"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/uicc"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/sip"
	rm -rf "$BUILD_OUT/framework/smali/com/android/internal/telephony/test"
	rm  "$BUILD_OUT/framework/smali/com/android/internal/telephony/AdnRecord\$Injector.smali"
	rm  "$BUILD_OUT/framework/smali/com/android/internal/telephony/SpnOverride\$Injector.smali"
	rm  "$BUILD_OUT/framework/smali/com/android/internal/telephony/DataConnectionTracker\$Injector.smali"
	rm  "$BUILD_OUT/framework/smali/com/android/internal/telephony/IccCard\$State.smali"
	rm  "$BUILD_OUT/framework/smali/com/android/internal/telephony/MiuiAdnUtils.smali"
	rm  "$BUILD_OUT/framework/smali/com/android/internal/telephony/SMSDispatcher\$Injector.smali"

fi



if [ $2 = "$BUILD_OUT/framework_ext" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework_ext}
            echo "rm file: $file"
            rm -rf "$file"
    done

    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

	cp -rf "$BUILD_OUT/framework_miui/smali/com/google/android/mms" "$BUILD_OUT/framework_ext/smali/com/google/android"
	#mv "$BUILD_OUT/$SEP_FRAME/smali/miui/"  "$BUILD_OUT/framework_ext/smali/miui"

    for file in overlay/framework_ext/*.patch
    do
        cp $file out/
        cd out
        git.apply `basename $file`
        cd ..
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
    done
fi

if [ $2 = "$BUILD_OUT/android.policy" ]
then
	appendSmaliPart "android.policy"

    for file in overlay/android.policy/*.patch
    do
        cp $file out/
        cd out
        git.apply `basename $file`
        cd ..
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
    done
fi

if [ $2 = "$BUILD_OUT/telephony-common" ]
then

    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find telephony-common.jar.out/smali/com/android/internal/telephony/uicc -name *.smali`; do
            file=${file2/telephony-common.jar.out/smali/com/android/internal/telephony/uicc/$BUILD_OUT\/telephony-common.jar.out/smali/com/android/internal/telephony}
            echo "rm file: $file"
            rm -rf "$file"
    done

	appendSmaliPart "telephony-common"

    for file in overlay/telephony-common/*.patch
    do
        cp $file out/
        cd out
        git.apply `basename $file`
        cd ..
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
    done

    mv "$BUILD_OUT/telephony-common/smali/com/android/internal/telephony/AdnRecord\$Injector.smali" "$BUILD_OUT/telephony-common/smali/com/android/internal/telephony/uicc/"
    mv "$BUILD_OUT/telephony-common/smali/com/android/internal/telephony/gsm/SIMRecords\$Injector.smali" "$BUILD_OUT/telephony-common/smali/com/android/internal/telephony/uicc/"
    mv "$BUILD_OUT/telephony-common/smali/com/android/internal/telephony/gsm/SpnOverride\$Injector.smali" "$BUILD_OUT/telephony-common/smali/com/android/internal/telephony/uicc/"

fi

