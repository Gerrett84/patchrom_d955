.class public Lcom/android/lgesettings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;,
        Lcom/android/lgesettings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHeadSetFlag:Z

.field private mIsInit:Z

.field private mIsSoundException:Z

.field private mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/lgesettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 121
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 89
    nop

    :array_0
    .array-data 0x4
        0xf0t 0x1t 0xat 0x7ft
        0xf4t 0x1t 0xat 0x7ft
        0xf7t 0x1t 0xat 0x7ft
        0xfat 0x1t 0xat 0x7ft
        0xfft 0x1t 0xat 0x7ft
    .end array-data

    .line 97
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_2
    .array-data 0x4
        0xeft 0x1t 0xat 0x7ft
        0xf3t 0x1t 0xat 0x7ft
        0xf6t 0x1t 0xat 0x7ft
        0xf9t 0x1t 0xat 0x7ft
        0xfet 0x1t 0xat 0x7ft
    .end array-data

    .line 113
    :array_3
    .array-data 0x4
        0x64t 0x1t 0x2t 0x7ft
        0x62t 0x1t 0x2t 0x7ft
        0x40t 0x2t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x5ct 0x1t 0x2t 0x7ft
    .end array-data

    .line 121
    :array_4
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x41t 0x2t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x5ct 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mIsInit:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/lgesettings/RingerVolumePreference;->mIsSoundException:Z

    .line 129
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 130
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 132
    new-instance v0, Lcom/android/lgesettings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/RingerVolumePreference$1;-><init>(Lcom/android/lgesettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 254
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingerVolumePreference;->setStreamType(I)V

    .line 260
    :goto_0
    const v0, 0x7f0400eb

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 263
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    iput-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    .line 265
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 269
    const-string v0, "ro.lge.audio_soundexception"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mIsSoundException:Z

    .line 273
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->setItemImage()V

    .line 276
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mVibrator:Landroid/os/Vibrator;

    .line 277
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingerVolumePreference;->setStreamType(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/RingerVolumePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getisInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->vibrateOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/RingerVolumePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/lgesettings/RingerVolumePreference;->setisInit(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/lgesettings/RingerVolumePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/lgesettings/RingerVolumePreference;->mHeadSetFlag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->do_setMeidaIcon()V

    return-void
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 531
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 534
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->revertVolume()V

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->stop()V

    .line 539
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aput-object v4, v2, v1

    .line 531
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 543
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iput-object v4, p0, Lcom/android/lgesettings/RingerVolumePreference;->mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 547
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    iput-object v4, p0, Lcom/android/lgesettings/RingerVolumePreference;->mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    :cond_4
    return-void
.end method

.method private do_setMeidaIcon()V
    .locals 3

    .prologue
    const v2, 0x7f02015d

    const/4 v1, 0x3

    .line 216
    iget-boolean v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mHeadSetFlag:Z

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "p2"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f02015e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_2
    const-string v0, "p2"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getisInit()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mIsInit:Z

    return v0
.end method

.method private final setItemImage()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    const-string v0, "p2"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0201d2

    aput v1, v0, v2

    .line 283
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0201d0

    aput v1, v0, v3

    .line 284
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0201d6

    aput v1, v0, v4

    .line 285
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0201d4

    aput v1, v0, v5

    .line 286
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0201ce

    aput v1, v0, v6

    .line 288
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0201d1

    aput v1, v0, v2

    .line 289
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0201cf

    aput v1, v0, v3

    .line 290
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0201d7

    aput v1, v0, v4

    .line 291
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0201d4

    aput v1, v0, v5

    .line 292
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0201ce

    aput v1, v0, v6

    .line 294
    :cond_0
    return-void
.end method

.method private setisInit(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/android/lgesettings/RingerVolumePreference;->mIsInit:Z

    .line 431
    return-void
.end method

.method private updateSlidersAndMutedStates()V
    .locals 12

    .prologue
    const v6, 0x7f020166

    const v5, 0x7f020165

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v7, v7

    if-ge v0, v7, :cond_e

    .line 154
    sget-object v7, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v3, v7, v0

    .line 155
    .local v3, streamType:I
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 157
    .local v1, muted:Z
    const-string v7, "RingerVolumePreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[updateSlidersAndMutedStates] ##### ringerMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v7, "RingerVolumePreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[updateSlidersAndMutedStates] ##### vibrateMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v7, "RingerVolumePreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[updateSlidersAndMutedStates] stream type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "     mute :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    if-eqz v7, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    const/4 v7, 0x5

    if-ne v3, v7, :cond_4

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 166
    const-string v7, "p2"

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 168
    .local v2, res:I
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    .end local v2           #res:I
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v7, v7, v0

    if-eqz v7, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 194
    if-eq v0, v9, :cond_1

    .line 195
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v10, v7, v0

    if-eqz v1, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 205
    :cond_1
    :goto_4
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v7, v7, v0

    if-eqz v7, :cond_2

    .line 207
    if-eqz v1, :cond_d

    iget-boolean v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mIsSoundException:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    .line 210
    .local v4, volume:I
    :goto_5
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v7, v7, v0

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 153
    .end local v4           #volume:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    move v2, v6

    .line 166
    goto :goto_1

    .line 170
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v10, v7, v0

    if-eqz v1, :cond_5

    sget-object v7, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v7, v7, v0

    :goto_6
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->do_setMeidaIcon()V

    goto :goto_2

    .line 170
    :cond_5
    sget-object v7, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v7, v7, v0

    goto :goto_6

    .line 176
    :cond_6
    const/4 v7, 0x2

    if-ne v3, v7, :cond_8

    if-eqz v1, :cond_8

    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 179
    const-string v7, "p2"

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    .line 181
    .restart local v2       #res:I
    :goto_7
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .end local v2           #res:I
    :cond_7
    move v2, v6

    .line 179
    goto :goto_7

    .line 183
    :cond_8
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v10, v7, v0

    if-eqz v1, :cond_9

    sget-object v7, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v7, v7, v0

    :goto_8
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->do_setMeidaIcon()V

    goto/16 :goto_2

    .line 183
    :cond_9
    sget-object v7, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v7, v7, v0

    goto :goto_8

    :cond_a
    move v7, v9

    .line 195
    goto :goto_3

    .line 198
    :cond_b
    if-eqz v0, :cond_1

    .line 199
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v10, v7, v0

    if-eqz v1, :cond_c

    move v7, v8

    :goto_9
    invoke-virtual {v10, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_4

    :cond_c
    move v7, v9

    goto :goto_9

    .line 207
    :cond_d
    iget-object v7, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    goto :goto_5

    .line 213
    .end local v1           #muted:Z
    .end local v3           #streamType:I
    :cond_e
    return-void
.end method

.method private vibrateOn()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 435
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f08059d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 142
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingerVolumePreference;->setNegativeButtonText(I)V

    .line 143
    return-void
.end method

.method public onActivityStop()V
    .locals 6

    .prologue
    .line 461
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 462
    const-string v4, "RingerVolumePreference"

    const-string v5, "onActivityStop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    .local v0, arr$:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 464
    .local v3, vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->stopSample()V

    .line 463
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v3           #vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/16 v12, 0x8

    .line 299
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 301
    const v8, 0x7f0a01ed

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 302
    .local v5, layout_ringtone:Landroid/widget/LinearLayout;
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    .end local v5           #layout_ringtone:Landroid/widget/LinearLayout;
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v8, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 306
    sget-object v8, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v8, v8, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 307
    .local v6, seekBar:Landroid/widget/SeekBar;
    iget-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v6, v8, v4

    .line 315
    iget-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    new-instance v9, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v11, v11, v4

    invoke-direct {v9, p0, v10, v6, v11}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;-><init>(Lcom/android/lgesettings/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v9, v8, v4

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    .end local v6           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mode_ringer_streams_affected"

    const/16 v10, 0x24

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 324
    .local v7, silentableStreams:I
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 325
    sget-object v8, Lcom/android/lgesettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v8, v8, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 326
    .local v0, checkbox:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v0, v8, v4

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 330
    .end local v0           #checkbox:Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 332
    iget-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v8, :cond_3

    .line 333
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v8, "file"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 338
    new-instance v8, Lcom/android/lgesettings/RingerVolumePreference$2;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/RingerVolumePreference$2;-><init>(Lcom/android/lgesettings/RingerVolumePreference;)V

    iput-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/RingerVolumePreference;->mExternalStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v8, :cond_4

    .line 366
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v8, "voice_video_record_finish"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    new-instance v8, Lcom/android/lgesettings/RingerVolumePreference$3;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/RingerVolumePreference$3;-><init>(Lcom/android/lgesettings/RingerVolumePreference;)V

    iput-object v8, p0, Lcom/android/lgesettings/RingerVolumePreference;->mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 403
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/RingerVolumePreference;->mValueUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_4
    const v8, 0x7f0a01fd

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 420
    .local v2, hidealarm:Landroid/view/View;
    const v8, 0x7f0a01fc

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 421
    .local v3, hidealarmtext:Landroid/view/View;
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 422
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 423
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/lgesettings/RingerVolumePreference;->setisInit(Z)V

    .line 424
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 577
    invoke-super {p0}, Landroid/preference/VolumePreference;->onClick()V

    .line 579
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 445
    const-string v4, "RingerVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDialogClosed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-nez p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    .local v0, arr$:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 448
    .local v3, vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v3}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->stopSample()V

    .line 452
    invoke-virtual {v3}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->revertVolume()V

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v0           #arr$:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->cleanup()V

    .line 457
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 471
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 472
    .local v0, isdown:Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 518
    :cond_0
    :goto_1
    return v1

    .end local v0           #isdown:Z
    :cond_1
    move v0, v2

    .line 471
    goto :goto_0

    .line 474
    .restart local v0       #isdown:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 475
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_1

    .line 479
    :cond_2
    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v3, v2

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_1

    .line 486
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 487
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 489
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 490
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->startSample()V

    goto :goto_1

    .line 496
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_1

    .line 500
    :cond_4
    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 501
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 502
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 503
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->startSample()V

    goto/16 :goto_1

    .line 509
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v3, v2

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->changeVolumeBy(I)V

    goto/16 :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/lgesettings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 586
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 599
    :cond_1
    return-void

    .line 590
    :cond_2
    check-cast p1, Lcom/android/lgesettings/RingerVolumePreference$SavedState;

    .line 591
    invoke-virtual {p1}, Lcom/android/lgesettings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 592
    sget-object v0, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/lgesettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 593
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v2, v2, v0

    .line 595
    if-eqz v2, :cond_3

    .line 596
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 593
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 525
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    .local v0, arr$:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 526
    .local v3, vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->stopSample()V

    .line 525
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v3           #vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 554
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 555
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 568
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 560
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/lgesettings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/lgesettings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 561
    .local v1, myState:Lcom/android/lgesettings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 562
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/lgesettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 563
    iget-object v5, p0, Lcom/android/lgesettings/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;

    aget-object v3, v5, v0

    .line 564
    .local v3, vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 565
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 562
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 568
    goto :goto_0
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/lgesettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lge.settings.intent.action.NOTI_RESUME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/android/lgesettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
