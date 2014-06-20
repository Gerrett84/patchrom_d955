.class Lcom/lge/camera/util/FileNamer$3;
.super Ljava/lang/Object;
.source "FileNamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/FileNamer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    iput-object p2, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 529
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z
    invoke-static {v3, v8}, Lcom/lge/camera/util/FileNamer;->access$1102(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 530
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF with thread : file count ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 533
    .local v1, startTime:J
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v3}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1400(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v5

    #calls: Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lcom/lge/camera/util/FileNamer;->access$1500(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, fileName:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 538
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #calls: Lcom/lge/camera/util/FileNamer;->addDCFCount()V
    invoke-static {v3}, Lcom/lge/camera/util/FileNamer;->access$1600(Lcom/lge/camera/util/FileNamer;)V

    .line 539
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v3}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1400(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v5

    #calls: Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lcom/lge/camera/util/FileNamer;->access$1500(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v3}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v3, v8}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 547
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v3}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 548
    const-string v3, "CameraApp"

    const-string v4, "startCheckFileName_DCF thread interrupted!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z
    invoke-static {v3, v7}, Lcom/lge/camera/util/FileNamer;->access$1102(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 550
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v3, v7}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 566
    :cond_4
    :goto_0
    return-void

    .line 553
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1800(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lge/camera/util/FileNamer;->access$1702(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/lge/camera/util/FileNamer;->access$1802(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I
    invoke-static {v3, v8}, Lcom/lge/camera/util/FileNamer;->access$1902(Lcom/lge/camera/util/FileNamer;I)I

    .line 556
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next dcf file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1700(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1800(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF is finished with thread (elapse time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z
    invoke-static {v3, v7}, Lcom/lge/camera/util/FileNamer;->access$1102(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 561
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    if-eqz v3, :cond_4

    .line 562
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 563
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 564
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1400(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
