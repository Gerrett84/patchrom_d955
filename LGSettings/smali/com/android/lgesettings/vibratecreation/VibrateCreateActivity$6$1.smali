.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;
.super Ljava/util/TimerTask;
.source "VibrateCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 317
    const-string v0, "VibrateCreateActivity"

    const-string v1, "onAnimationEnd - Button enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isRingerMode_changed:Z
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isRingerMode_changed:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$202(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z

    .line 320
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    iget-object v1, v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    iget-object v1, v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
