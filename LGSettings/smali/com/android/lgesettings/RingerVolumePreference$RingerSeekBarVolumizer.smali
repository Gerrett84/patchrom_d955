.class public Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;
.super Landroid/preference/VolumePreference$SeekBarVolumizer;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RingerSeekBarVolumizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RingerVolumePreference;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    .line 666
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    .line 667
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 681
    invoke-super {p0, p1, p2, p3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 682
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0a01fa

    if-ne v0, v1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->do_setMeidaIcon()V
    invoke-static {v0}, Lcom/android/lgesettings/RingerVolumePreference;->access$700(Lcom/android/lgesettings/RingerVolumePreference;)V

    .line 685
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 670
    invoke-super {p0, p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 671
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 675
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0a01fa

    if-ne v0, v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/lgesettings/RingerVolumePreference$RingerSeekBarVolumizer;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->do_setMeidaIcon()V
    invoke-static {v0}, Lcom/android/lgesettings/RingerVolumePreference;->access$700(Lcom/android/lgesettings/RingerVolumePreference;)V

    .line 678
    :cond_0
    return-void
.end method
