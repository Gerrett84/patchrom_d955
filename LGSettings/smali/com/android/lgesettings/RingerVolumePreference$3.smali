.class Lcom/android/lgesettings/RingerVolumePreference$3;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    const-string v3, "RingerVolumePreference"

    const-string v4, "### onReceive - RINGER_MODE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #getter for: Lcom/android/lgesettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/lgesettings/RingerVolumePreference;->access$100(Lcom/android/lgesettings/RingerVolumePreference;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #getter for: Lcom/android/lgesettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/lgesettings/RingerVolumePreference;->access$100(Lcom/android/lgesettings/RingerVolumePreference;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    const-string v6, "android.media.EXTRA_RINGER_MODE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #getter for: Lcom/android/lgesettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/lgesettings/RingerVolumePreference;->access$200(Lcom/android/lgesettings/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->getisInit()Z
    invoke-static {v1}, Lcom/android/lgesettings/RingerVolumePreference;->access$300(Lcom/android/lgesettings/RingerVolumePreference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->vibrateOn()V
    invoke-static {v1}, Lcom/android/lgesettings/RingerVolumePreference;->access$400(Lcom/android/lgesettings/RingerVolumePreference;)V

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->setisInit(Z)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/RingerVolumePreference;->access$500(Lcom/android/lgesettings/RingerVolumePreference;Z)V

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 385
    const-string v3, "RingerVolumePreference"

    const-string v4, "### onReceive - ACTION_HEADSET_PLUG"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v3, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    const-string v4, "state"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_3

    :goto_1
    #setter for: Lcom/android/lgesettings/RingerVolumePreference;->mHeadSetFlag:Z
    invoke-static {v3, v1}, Lcom/android/lgesettings/RingerVolumePreference;->access$602(Lcom/android/lgesettings/RingerVolumePreference;Z)Z

    .line 387
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->do_setMeidaIcon()V
    invoke-static {v1}, Lcom/android/lgesettings/RingerVolumePreference;->access$700(Lcom/android/lgesettings/RingerVolumePreference;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 386
    goto :goto_1

    .line 390
    :cond_4
    const-string v1, "voice_video_record_finish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    const-string v1, "RingerVolumePreference"

    const-string v2, "voice_video_record_finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$3;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    #calls: Lcom/android/lgesettings/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v1}, Lcom/android/lgesettings/RingerVolumePreference;->access$000(Lcom/android/lgesettings/RingerVolumePreference;)V

    goto :goto_0
.end method
