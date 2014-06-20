.class Lcom/android/providers/telephony/MakeMmsPreviewService$1;
.super Ljava/lang/Object;
.source "MakeMmsPreviewService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MakeMmsPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MakeMmsPreviewService;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$1;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    .line 80
    :try_start_0
    const-string v4, "MakeMmsPreviewService"

    const-string v5, "Processing messages."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$1;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$000(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$1;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mStack:Lcom/android/providers/telephony/UniqueValuedStack;
    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$100(Lcom/android/providers/telephony/MakeMmsPreviewService;)Lcom/android/providers/telephony/UniqueValuedStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/telephony/UniqueValuedStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .local v3, msgId:Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsUtils;->getPrevousOpTime()J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 86
    .local v1, interval:J
    cmp-long v4, v1, v8

    if-gez v4, :cond_0

    .line 88
    const-string v4, "MakeMmsPreviewService"

    const-string v5, "Not long enough interval. Sleep."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sub-long v4, v8, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$1;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    #calls: Lcom/android/providers/telephony/MakeMmsPreviewService;->makePreview(J)V
    invoke-static {v4, v5, v6}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$200(Lcom/android/providers/telephony/MakeMmsPreviewService;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 94
    .end local v1           #interval:J
    .end local v3           #msgId:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MakeMmsPreviewService"

    const-string v5, "Failed to make preview."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "MakeMmsPreviewService"

    const-string v5, "Interrupted."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
