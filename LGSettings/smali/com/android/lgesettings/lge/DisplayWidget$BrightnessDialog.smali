.class public Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;
.super Landroid/app/DialogFragment;
.source "DisplayWidget.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DisplayWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessDialog"
.end annotation


# static fields
.field private static MAXIMUM_BACKLIGHT:I

.field private static mAutomaticAvailable:Z

.field private static mCheckBox:Landroid/widget/CheckBox;

.field private static mContext:Landroid/content/Context;

.field private static mOldAutomatic:I

.field private static mOldBrightness:I

.field private static mRestoredOldState:Z

.field private static mScreenBrightnessDim:I

.field private static mSeekBar:Landroid/widget/SeekBar;


# instance fields
.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mSubTitle:Landroid/widget/TextView;

.field private mThermalMaxBrightness:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 531
    new-instance v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$3;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 540
    new-instance v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$4;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 376
    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->restoreOldState()V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 376
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->MAXIMUM_BACKLIGHT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getBrightness(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getBrightnessMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 376
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    return v0
.end method

.method private exceptionMultiALCModel()Z
    .locals 2

    .prologue
    .line 570
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "x2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBrightness(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 607
    move v0, p1

    .line 609
    .local v0, brightness:I
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 613
    :goto_0
    return v0

    .line 611
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 617
    move v0, p1

    .line 619
    .local v0, brightnessMode:I
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 624
    :goto_0
    return v0

    .line 621
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getThermalMaxBrightness()I
    .locals 9

    .prologue
    .line 579
    new-instance v1, Ljava/lang/String;

    const-string v6, "/sys/class/leds/lcd-backlight/max_brightness"

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, flag_read_path:Ljava/lang/String;
    const-string v2, ""

    .line 581
    .local v2, frag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 582
    .local v3, inFlagFile:Ljava/io/BufferedReader;
    sget v5, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->MAXIMUM_BACKLIGHT:I

    .line 585
    .local v5, nBrightness:I
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .local v4, inFlagFile:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 587
    const-string v6, "BrightnessDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thermal max bright -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 589
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 595
    if-eqz v4, :cond_0

    .line 596
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v3, v4

    .line 603
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return v5

    .line 599
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    throw v6

    .line 590
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "BrightnessDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thermal max bright read fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 595
    if-eqz v3, :cond_1

    .line 596
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 597
    :catch_1
    move-exception v6

    goto :goto_1

    .line 599
    :catchall_1
    move-exception v6

    throw v6

    .line 594
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    .line 595
    :goto_3
    if-eqz v3, :cond_2

    .line 596
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 599
    :cond_2
    :goto_4
    throw v6

    :catchall_3
    move-exception v6

    throw v6

    .line 597
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 594
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v6

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_3

    .line 590
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getUpdatedTitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 550
    sget-object v2, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    sget v3, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->MAXIMUM_BACKLIGHT:I

    sget v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int/2addr v3, v4

    div-int v0, v2, v3

    .line 551
    .local v0, percent:I
    sget-object v2, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f080396

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, title:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->exceptionMultiALCModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 554
    const-string v2, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    :cond_1
    :goto_0
    return-object v1

    .line 558
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;
    .locals 1
    .parameter "activity"

    .prologue
    .line 507
    new-instance v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;

    invoke-direct {v0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;-><init>()V

    return-object v0
.end method

.method private static restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 682
    sget-boolean v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 685
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 686
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldAutomatic:I

    invoke-static {v0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setMode(I)V

    .line 689
    :cond_1
    sget-boolean v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldAutomatic:I

    if-nez v0, :cond_3

    .line 690
    :cond_2
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    invoke-static {v0, v3}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setBrightness(IZ)V

    .line 696
    :goto_1
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    sget v2, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 698
    sput-boolean v3, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mRestoredOldState:Z

    goto :goto_0

    .line 692
    :cond_3
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 693
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setBrightness(IZ)V

    goto :goto_1
.end method

.method private static setBrightness(IZ)V
    .locals 7
    .parameter "brightness"
    .parameter "force"

    .prologue
    .line 702
    sget v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->MAXIMUM_BACKLIGHT:I

    sget v5, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int v1, v4, v5

    .line 704
    .local v1, seek_bar_range:I
    move v2, p0

    .line 705
    .local v2, temp:I
    const-string v4, "BrightnessDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBrightness() : Brightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 709
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 710
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 711
    sget v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int/2addr p0, v4

    .line 712
    int-to-float v4, p0

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 713
    .local v3, valf:F
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 714
    const-string v4, "BrightnessDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBrightness() : MultiALC="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v3           #valf:F
    :cond_0
    :goto_0
    return-void

    .line 717
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-interface {v0, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 718
    const-string v4, "BrightnessDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBrightness() : NoMultiALC="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 726
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 727
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sget v1, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setBrightness(IZ)V

    .line 731
    :goto_0
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 733
    return-void

    .line 729
    :cond_0
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "aStrID"

    .prologue
    .line 736
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 740
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mToast:Landroid/widget/Toast;

    .line 745
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 521
    sget-object v1, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 522
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 523
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 525
    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->restoreOldState()V

    .line 527
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 529
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 653
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setMode(I)V

    .line 656
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v2, 0x7f08039a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 663
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->exceptionMultiALCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v2, 0x7f080397

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 665
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 672
    :cond_0
    :goto_2
    if-nez p2, :cond_1

    .line 673
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sget v2, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    add-int/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setBrightness(IZ)V

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getUpdatedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 653
    goto :goto_0

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v2, 0x7f080399

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 668
    :cond_5
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    .line 397
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 398
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    .line 399
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v4

    sput v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    .line 400
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    sput v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->MAXIMUM_BACKLIGHT:I

    .line 402
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110018

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mAutomaticAvailable:Z

    .line 407
    invoke-direct {p0, v6}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getBrightness(I)I

    move-result v4

    sput v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    .line 408
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getThermalMaxBrightness()I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    .line 410
    invoke-static {v6}, Lcom/android/lgesettings/lge/DisplayWidget;->access$602(Z)Z

    .line 411
    const-string v4, "BrightnessDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mOldBrightness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v4, "BrightnessDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mThermalMaxBrightness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 416
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400e9

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 417
    .local v1, dialogView:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 418
    const v4, 0x104000a

    new-instance v7, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$1;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$1;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    const/high16 v4, 0x104

    new-instance v7, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$2;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    const v4, 0x102035c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    sput-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 456
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    sget v7, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->MAXIMUM_BACKLIGHT:I

    sget v8, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 457
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 459
    const v4, 0x7f0a01e7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    sput-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 461
    const v4, 0x7f0a00ea

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    .line 462
    iget-object v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v7, 0x7f0809d6

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 464
    sget v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    iget v7, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    if-le v4, v7, :cond_1

    .line 465
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    sget v8, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 470
    :goto_0
    sget-boolean v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mAutomaticAvailable:Z

    if-eqz v4, :cond_4

    .line 471
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 472
    invoke-direct {p0, v6}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getBrightnessMode(I)I

    move-result v4

    sput v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldAutomatic:I

    .line 473
    sget-object v7, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    sget v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldAutomatic:I

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 474
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 475
    iget-object v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v7, 0x7f08039a

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 483
    :goto_2
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->exceptionMultiALCModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v7, 0x7f080397

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 485
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 486
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 492
    :cond_0
    :goto_3
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 496
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    sput-boolean v6, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mRestoredOldState:Z

    .line 501
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getUpdatedTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 467
    :cond_1
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    sget v7, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mOldBrightness:I

    sget v8, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 473
    goto :goto_1

    .line 477
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSubTitle:Landroid/widget/TextView;

    const v7, 0x7f080399

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 480
    :cond_4
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 488
    :cond_5
    sget-object v4, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 512
    sget-object v1, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 514
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 516
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 517
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 628
    const-string v0, "BrightnessDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged###progress + mScreenBrightnessDim :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "BrightnessDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged###mThermalMaxBrightness :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    if-le v0, v1, :cond_1

    .line 632
    iget v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mThermalMaxBrightness:I

    sget v1, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 633
    const v0, 0x7f080c48

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->showToast(I)V

    .line 638
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getUpdatedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 641
    :cond_0
    return-void

    .line 635
    :cond_1
    sget v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->setBrightness(IZ)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 644
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 647
    sget-object v0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    sget-object v2, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    sget v3, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    return-void
.end method
