.class Lcom/android/lgesettings/deviceinfo/Status$10;
.super Ljava/lang/Thread;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/Status;->getSIDCH()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 2788
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$10;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2790
    const/4 v2, 0x0

    .line 2791
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2792
    .local v1, SID:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2795
    .local v0, CH:Ljava/lang/String;
    const/16 v3, 0xd

    :try_start_0
    invoke-static {v3}, Lcom/android/lgesettings/lge/OverlayUtils;->LgSvcCmd_getCmdValue(I)Ljava/lang/String;

    move-result-object v2

    .line 2797
    if-eqz v2, :cond_0

    .line 2798
    const/16 v3, 0xc8

    const/16 v4, 0xfa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2799
    const/16 v3, 0xfa

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2802
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status$10;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/Status;->access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/Status$10;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/Status;->access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    :goto_0
    return-void

    .line 2803
    :catch_0
    move-exception v3

    goto :goto_0
.end method
