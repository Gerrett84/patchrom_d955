.class public Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VibrateVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/VibrateVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalVibrateVolume:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mServiceContext:Lcom/lge/systemservice/core/LGContext;

.field private mVibrateType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

.field final synthetic this$0:Lcom/android/lgesettings/VibrateVolumePreference;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/VibrateVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "type"

    .prologue
    const/4 v1, -0x1

    .line 394
    iput-object p1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 371
    iput v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 373
    iput v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 374
    iput v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    .line 375
    new-instance v0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;-><init>(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 395
    iput-object p2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 396
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 397
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "volumevibrator"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    .line 398
    iput-object p3, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 399
    iput p4, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    .line 400
    invoke-direct {p0, p3}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 404
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 406
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    iget v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    .line 414
    :goto_0
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 415
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 420
    return-void

    .line 410
    :cond_0
    const-string v0, "VibrateVolumePreference"

    const-string v1, "[initSeekBar] mVolumeVibrator null case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sample()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/VibrateVolumePreference;->onSampleStarting(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)V

    .line 492
    const-string v0, "VibrateVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ldh mSeekBar.getProgress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const-wide/16 v1, 0x1e

    iget-object v3, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->vibrate(JI)V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const-wide/16 v1, 0x3e8

    iget-object v3, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->vibrate(JI)V

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 513
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->sample()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 517
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 518
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 454
    if-nez p3, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 528
    iget v0, p1, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 529
    iget v0, p1, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    .line 530
    iget v0, p1, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 531
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 533
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 521
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 522
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->volume:I

    .line 523
    iget v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    iput v0, p1, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->originalVolume:I

    .line 525
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 470
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->sample()V

    .line 476
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 462
    iput p1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 463
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method

.method public revertVolume()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    iget v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/android/lgesettings/Utils;->isVu2Model()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 482
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 483
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    iget v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I

    iget v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 424
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 425
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 426
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->cancel()V

    .line 504
    :cond_0
    return-void
.end method
