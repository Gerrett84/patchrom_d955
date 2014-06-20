.class Lcom/android/lgesettings/SoundSettings$8;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SoundSettings;->showSoundProfileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "_dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1811
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    iget-object v1, v1, Lcom/android/lgesettings/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I
    invoke-static {v2, v1}, Lcom/android/lgesettings/SoundSettings;->access$1002(Lcom/android/lgesettings/SoundSettings;I)I

    .line 1812
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I
    invoke-static {v1}, Lcom/android/lgesettings/SoundSettings;->access$1000(Lcom/android/lgesettings/SoundSettings;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/lgesettings/SoundSettings;->access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1827
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1828
    return-void

    .line 1815
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I
    invoke-static {v1}, Lcom/android/lgesettings/SoundSettings;->access$1000(Lcom/android/lgesettings/SoundSettings;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1816
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/lgesettings/SoundSettings;->access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1820
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/SoundSettings;->access$900(Lcom/android/lgesettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1821
    .local v0, mVibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 1824
    .end local v0           #mVibrator:Landroid/os/Vibrator;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings$8;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/lgesettings/SoundSettings;->access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
