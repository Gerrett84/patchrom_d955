.class public Lcom/android/lgesettings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/BrightnessPreference$SavedState;
    }
.end annotation


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private isBinding:Z

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBatteryTemperature:I

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSubTitleGravity:I

.field private mSubTitleTV:Landroid/widget/TextView;

.field private mSubTitleText:Ljava/lang/CharSequence;

.field private mSubtitle:Landroid/widget/TextView;

.field private mThermalMaxBrightness:I

.field private mToast:Landroid/widget/Toast;

.field private seekBarRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v6, 0x7f0400ed

    const/4 v7, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    .line 93
    iput-boolean v7, p0, Lcom/android/lgesettings/BrightnessPreference;->isBinding:Z

    .line 95
    const/16 v4, 0x2710

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    .line 105
    iput v7, p0, Lcom/android/lgesettings/BrightnessPreference;->mBatteryTemperature:I

    .line 110
    new-instance v4, Lcom/android/lgesettings/BrightnessPreference$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/BrightnessPreference$1;-><init>(Lcom/android/lgesettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 119
    new-instance v4, Lcom/android/lgesettings/BrightnessPreference$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/BrightnessPreference$2;-><init>(Lcom/android/lgesettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 796
    new-instance v4, Lcom/android/lgesettings/BrightnessPreference$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/BrightnessPreference$3;-><init>(Lcom/android/lgesettings/BrightnessPreference;)V

    iput-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Lcom/android/lgesettings/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 135
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 136
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    .line 137
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    .line 138
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    .line 139
    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    .line 141
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/BrightnessPreference;->setLayoutResource(I)V

    .line 143
    sget-object v4, Lcom/android/lgesettings/R$styleable;->IconPreferenceScreen:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 147
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 148
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a00ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 153
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoCheck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const v4, 0x7f0400e9

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 160
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getThermalBrightMax()V

    .line 162
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/BrightnessPreference;->selectsetSubtitle(Z)V

    .line 163
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/BrightnessPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mBatteryTemperature:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/lgesettings/BrightnessPreference;->mBatteryTemperature:I

    return p1
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 429
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/lgesettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 430
    .local v1, mode:I
    const/4 v0, 0x0

    .line 437
    .local v0, brightness:F
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 440
    const-string v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrightness() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 446
    float-to-int v2, v0

    return v2

    .line 442
    :cond_0
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 4
    .parameter "defaultValue"

    .prologue
    .line 450
    move v0, p1

    .line 452
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 456
    :goto_0
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightnessMode(): brightnessMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v0

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPercent()I
    .locals 4

    .prologue
    .line 716
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekBar.getProgress() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPercent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getThermalBrightMax()V
    .locals 8

    .prologue
    .line 659
    new-instance v1, Ljava/lang/String;

    const-string v5, "/sys/class/leds/lcd-backlight/max_brightness"

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, flag_read_path:Ljava/lang/String;
    const-string v2, ""

    .line 661
    .local v2, frag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 665
    .local v3, inFlagFile:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 666
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .local v4, inFlagFile:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 667
    const-string v5, "BrightnessPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThermalBrightMax() : thermal max bright = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 669
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 679
    if-eqz v4, :cond_0

    .line 680
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 684
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-void

    .line 682
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 683
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_0

    .line 671
    :catch_1
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "BrightnessPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThermalBrightMax() : thermal max bright read fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iput v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    if-eqz v3, :cond_1

    .line 680
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 682
    :catch_2
    move-exception v5

    goto :goto_0

    .line 678
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 679
    :goto_2
    if-eqz v3, :cond_2

    .line 680
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 682
    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v6

    goto :goto_3

    .line 678
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_2

    .line 671
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private onBrightnessChanged()V
    .locals 4

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getBrightness()I

    move-result v0

    .line 462
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 463
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBrightnessChanged() : brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-direct {p0, v1}, Lcom/android/lgesettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 469
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 470
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBrightnessModeChanged() : checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 467
    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 511
    iget v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/BrightnessPreference;->setMode(I)V

    .line 513
    :cond_1
    iget v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    .line 514
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mRestoredOldState:Z

    .line 517
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 7
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 521
    iget-boolean v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 522
    sget-boolean v4, Lcom/android/lgesettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    .line 523
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 525
    .local v3, valf:F
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto brightness(valf) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 529
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 532
    :cond_0
    if-eqz p2, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 534
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    .line 542
    .local v1, range:I
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v4

    .line 544
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brightness2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 548
    .restart local v0       #power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 549
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 551
    :cond_3
    if-eqz p2, :cond_4

    .line 552
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    .line 553
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 554
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    const-string v4, "hong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBrightness() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 558
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 537
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setBrightnessTitle(I)V
    .locals 9
    .parameter "percent"

    .prologue
    const v8, 0x7f080396

    .line 687
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    move-result-object v0

    .line 699
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020269

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 702
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 704
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->noapplyMultiALC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 709
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 712
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_1
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightnessTitle() : title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 692
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 695
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 566
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticMode:Z

    .line 567
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 569
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "aStrID"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mToast:Landroid/widget/Toast;

    .line 767
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public getBrightnessPercent(ZZ)Ljava/lang/CharSequence;
    .locals 9
    .parameter "force"
    .parameter "summary"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 721
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getBrightness()I

    move-result v0

    .line 722
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 724
    .local v1, percent:I
    if-eqz p1, :cond_1

    .line 725
    mul-int/lit8 v3, v0, 0x64

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    div-int v1, v3, v4

    .line 737
    :goto_0
    if-eqz p2, :cond_4

    .line 738
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u200f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, str:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    const-string v3, "BrightnessPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessPercent() : str = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-object v2

    .line 727
    .end local v2           #str:Ljava/lang/CharSequence;
    :cond_1
    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2

    .line 728
    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    div-int v1, v3, v4

    .line 729
    const-string v3, "hong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPercent()_thermal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_2
    mul-int/lit8 v3, v0, 0x64

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    div-int v1, v3, v4

    .line 732
    const-string v3, "hong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPercent()_not_thermal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 741
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    .restart local v2       #str:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 747
    .end local v2           #str:Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #str:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 750
    .end local v2           #str:Ljava/lang/CharSequence;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #str:Ljava/lang/CharSequence;
    goto/16 :goto_1
.end method

.method public noapplyMultiALC()Z
    .locals 2

    .prologue
    .line 772
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

    .line 774
    :cond_0
    const/4 v0, 0x1

    .line 777
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const v8, 0x7f080398

    const/4 v7, 0x2

    const/high16 v6, 0x4190

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 258
    const-string v0, "BrightnessPreference"

    const-string v3, "onBindDialogView()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean v1, p0, Lcom/android/lgesettings/BrightnessPreference;->isBinding:Z

    .line 261
    invoke-static {p1}, Lcom/android/lgesettings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 262
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->seekBarRange:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 263
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    .line 264
    const-string v0, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const v0, 0x7f0a01e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v0, 0x7f0a00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    .line 273
    iget v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v4, v5

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    iget-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 286
    invoke-direct {p0, v2}, Lcom/android/lgesettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldAutomatic:I

    .line 287
    iget v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticMode:Z

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v1, 0x7f080fe8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->noapplyMultiALC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v1, 0x7f080397

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 324
    :cond_1
    :goto_3
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "l1v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7, v6}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 326
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :cond_2
    iput-boolean v2, p0, Lcom/android/lgesettings/BrightnessPreference;->isBinding:Z

    .line 329
    return-void

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 287
    goto :goto_1

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 299
    :cond_6
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v1, 0x7f080399

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 307
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 320
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindView(Landroid/view/View;)V

    .line 191
    const-string v0, "BrightnessPreference"

    const-string v1, "onBindView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const v0, 0x7f0a00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v3, 0x7f080398

    const/4 v1, 0x0

    .line 389
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/BrightnessPreference;->setMode(I)V

    .line 391
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 393
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v2, 0x7f080fe8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 409
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->noapplyMultiALC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v2, 0x7f080397

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 415
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 422
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    .line 423
    iget-boolean v0, p0, Lcom/android/lgesettings/BrightnessPreference;->isBinding:Z

    if-nez v0, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/BrightnessPreference;->setBrightnessTitle(I)V

    .line 426
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 389
    goto :goto_0

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 402
    :cond_5
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v2, 0x7f080399

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 419
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 127
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 476
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 478
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 480
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 483
    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    .line 487
    const-string v2, "screen_brightness_custom"

    iget-object v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 492
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode_custom"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_screen_brightness"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/BrightnessPreference;->selectsetSubtitle(Z)V

    .line 505
    .end local v0           #mode:I
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->restoreOldState()V

    .line 501
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/BrightnessPreference;->selectsetSubtitle(Z)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v6, 0x0

    .line 333
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getThermalBrightMax()V

    .line 334
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged() : progress + mScreenBrightnessDim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged() : mThermalMaxBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_2

    .line 338
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 341
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 342
    const-string v2, "hong"

    const-string v3, "turnOffThermald"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-interface {v1}, Landroid/os/IPowerManager;->turnOffThermald()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    const-string v2, "hong"

    const-string v3, "Toast popup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const v2, 0x7f080fd8

    invoke-direct {p0, v2}, Lcom/android/lgesettings/BrightnessPreference;->showToast(I)V

    .line 350
    invoke-direct {p0, p2, v6}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    .line 363
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getPercent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/BrightnessPreference;->setBrightnessTitle(I)V

    .line 364
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BrightnessPreference"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mThermalMaxBrightness:I

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    invoke-direct {p0, p2, v6}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    .line 357
    const v2, 0x7f080c48

    invoke-direct {p0, v2}, Lcom/android/lgesettings/BrightnessPreference;->showToast(I)V

    goto :goto_1

    .line 361
    :cond_2
    invoke-direct {p0, p2, v6}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/lgesettings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 604
    :goto_0
    return-void

    .line 597
    :cond_1
    check-cast p1, Lcom/android/lgesettings/BrightnessPreference$SavedState;

    .line 598
    invoke-virtual {p1}, Lcom/android/lgesettings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 599
    iget v0, p1, Lcom/android/lgesettings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    .line 600
    iget-boolean v0, p1, Lcom/android/lgesettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldAutomatic:I

    .line 601
    iget-boolean v0, p1, Lcom/android/lgesettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/lgesettings/BrightnessPreference;->setMode(I)V

    .line 602
    iget v0, p1, Lcom/android/lgesettings/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/BrightnessPreference;->setBrightness(IZ)V

    .line 603
    iget v0, p1, Lcom/android/lgesettings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 600
    goto :goto_1

    :cond_3
    move v1, v2

    .line 601
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 573
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 574
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 586
    :goto_0
    return-object v0

    .line 577
    :cond_1
    new-instance v0, Lcom/android/lgesettings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 578
    .local v0, myState:Lcom/android/lgesettings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/lgesettings/BrightnessPreference$SavedState;->automatic:Z

    .line 579
    iget-object v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/lgesettings/BrightnessPreference$SavedState;->progress:I

    .line 580
    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/lgesettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 581
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/lgesettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 582
    iget v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/lgesettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 585
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 580
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 368
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 373
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    return-void
.end method

.method public selectsetSubtitle(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 787
    invoke-static {}, Lcom/android/lgesettings/Utils;->isVeeModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const-string v0, "BrightnessPreference"

    const-string v1, "selectsetSubtitle() : vee model device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/BrightnessPreference;->getBrightnessPercent(ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/BrightnessPreference;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 794
    :goto_0
    return-void

    .line 791
    :cond_0
    const-string v0, "BrightnessPreference"

    const-string v1, "selectsetSubtitle() : No vee model device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/BrightnessPreference;->setSummary(Z)V

    goto :goto_0
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 198
    const-string v0, "BrightnessPreference"

    const-string v1, "setSubTitle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iput-object p1, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleText:Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference;->mSubTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public setSummary(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const v6, 0x7f0803ab

    const/4 v5, 0x1

    .line 212
    const-string v3, "BrightnessPreference"

    const-string v4, "setSummary()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/android/lgesettings/BrightnessPreference;->getBrightnessPercent(ZZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    .local v1, str:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/lgesettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    .line 223
    .local v0, checked:I
    if-ne v0, v5, :cond_2

    iget-boolean v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v3, :cond_2

    .line 224
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, summary:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/BrightnessPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summary:Ljava/lang/CharSequence;
    goto :goto_1

    .line 230
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_2
    move-object v2, v1

    .restart local v2       #summary:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 167
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-string v1, "BrightnessPreference"

    const-string v2, "showDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/BrightnessPreference;->mRestoredOldState:Z

    .line 184
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getPercent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/BrightnessPreference;->setBrightnessTitle(I)V

    .line 185
    return-void
.end method

.method public stopDialog()V
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/lgesettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 654
    :cond_0
    return-void
.end method

.method public updateThermalMAXBrightness()V
    .locals 1

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/lgesettings/BrightnessPreference;->getThermalBrightMax()V

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/BrightnessPreference;->selectsetSubtitle(Z)V

    .line 783
    return-void
.end method
