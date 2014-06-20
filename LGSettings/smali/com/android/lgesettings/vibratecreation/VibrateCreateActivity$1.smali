.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VibrateCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "VibrateCreateActivity"

    const-string v1, "[onReceive] #####RINGER_MODE_CHANGED_ACTION#####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBefore_soundprofile:I
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 124
    const-string v0, "VibrateCreateActivity"

    const-string v1, "[onReceive] before sound profile != current sound profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isRingerMode_changed:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$202(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #calls: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->stateReset()V
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J

    .line 130
    :cond_0
    return-void
.end method
