.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$7;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->onClick(Landroid/view/View;)V
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
    .line 477
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$7;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 482
    const-string v0, "VibrateCreateActivity"

    const-string v1, "Seekbar animation start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 485
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$7;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$7;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method
