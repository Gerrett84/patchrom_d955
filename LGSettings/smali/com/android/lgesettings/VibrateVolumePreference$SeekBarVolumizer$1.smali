.class Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VibrateVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->access$000(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;
    invoke-static {v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->access$200(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mVibrateType:I
    invoke-static {v2}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->access$100(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v0

    .line 383
    .local v0, volume:I
    if-ltz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->access$000(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 387
    .end local v0           #volume:I
    :cond_0
    return-void
.end method
