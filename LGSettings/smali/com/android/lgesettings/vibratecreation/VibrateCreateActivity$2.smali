.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 133
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBePlayThreadStop:Z
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #calls: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->imageChanger()V
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 147
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
