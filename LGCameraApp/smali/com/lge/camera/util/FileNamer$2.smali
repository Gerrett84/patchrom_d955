.class Lcom/lge/camera/util/FileNamer$2;
.super Ljava/lang/Object;
.source "FileNamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamera(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/FileNamer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dir:Ljava/lang/String;

.field final synthetic val$storage:I


# direct methods
.method constructor <init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    iput-object p2, p0, Lcom/lge/camera/util/FileNamer$2;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/util/FileNamer$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/lge/camera/util/FileNamer$2;->val$storage:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 435
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z
    invoke-static {v5, v10}, Lcom/lge/camera/util/FileNamer;->access$602(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 436
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName image with thread : file count ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v7}, Lcom/lge/camera/util/FileNamer;->access$700(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 439
    .local v3, startTime:J
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$700(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v1

    .line 440
    .local v1, imageFileNumber:J
    #calls: Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lge/camera/util/FileNamer;->access$800(J)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, fileName:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/camera/util/FileNamer$2;->val$dir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 443
    #calls: Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lge/camera/util/FileNamer;->access$800(J)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v5, v10}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 450
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v5, v1, v2}, Lcom/lge/camera/util/FileNamer;->access$702(Lcom/lge/camera/util/FileNamer;J)J

    .line 452
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 453
    const-string v5, "CameraApp"

    const-string v6, "startCheckFileName thread interrupted!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z
    invoke-static {v5, v9}, Lcom/lge/camera/util/FileNamer;->access$602(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 455
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v5, v9}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 467
    :cond_3
    :goto_0
    return-void

    .line 458
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/lge/camera/util/FileNamer;->access$902(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I
    invoke-static {v5, v10}, Lcom/lge/camera/util/FileNamer;->access$1002(Lcom/lge/camera/util/FileNamer;I)I

    .line 460
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image file is ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/camera/util/FileNamer;->access$900(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName is finished with thread (elapse time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #setter for: Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z
    invoke-static {v5, v9}, Lcom/lge/camera/util/FileNamer;->access$602(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 464
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->val$context:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 465
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$2;->val$context:Landroid/content/Context;

    iget v6, p0, Lcom/lge/camera/util/FileNamer$2;->val$storage:I

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    #getter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v7}, Lcom/lge/camera/util/FileNamer;->access$700(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    goto :goto_0
.end method
