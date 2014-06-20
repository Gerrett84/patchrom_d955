.class Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/lge/olaworks/library/AutoPanorama$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPanoramaCallback"
.end annotation


# instance fields
.field private mSetStartSyncForceDelay:Z

.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;)V
    .locals 1
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->mSetStartSyncForceDelay:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;)V

    return-void
.end method


# virtual methods
.method public onAlarmStartSync()V
    .locals 2

    .prologue
    .line 680
    const-string v0, "CameraApp"

    const-string v1, "height / width is too short, so synthesis begins with a forced !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const v1, 0x7f0b0326

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 682
    return-void
.end method

.method public onComplete([B)V
    .locals 3
    .parameter "jpegData"

    .prologue
    const/4 v2, 0x0

    .line 574
    const-string v0, "CameraApp"

    const-string v1, "onComplete jpegData"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B
    invoke-static {v0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3402(Lcom/lge/camera/controller/camera/PanoramaController;[B)[B

    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 579
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 580
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 582
    if-eqz p1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #calls: Lcom/lge/camera/controller/camera/PanoramaController;->onSynthesizeComplete()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3800(Lcom/lge/camera/controller/camera/PanoramaController;)V

    .line 588
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z
    invoke-static {v0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4002(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 589
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z
    invoke-static {v0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4102(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 590
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;-><init>(Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    :cond_0
    return-void

    .line 585
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "panorama shot jpegData is null -> MSG_GOTO_PREVIEW"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetThumbnailImage(Landroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter "thumbnail"
    .parameter "needGuideBox"

    .prologue
    .line 663
    if-eqz p1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const v1, 0x7f090113

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/PanoThumbView;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 666
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->mSetStartSyncForceDelay:Z

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.RunPanoramaStartSyncTask"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.RunPanoramaStartSyncTask"

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->mSetStartSyncForceDelay:Z

    .line 671
    :cond_1
    return-void
.end method

.method public onPanningSpeedWarning(Z)V
    .locals 2
    .parameter "warningFlag"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #calls: Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5200(Lcom/lge/camera/controller/camera/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;-><init>(Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 645
    :cond_0
    return-void
.end method

.method public onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 548
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2600(Lcom/lge/camera/controller/camera/PanoramaController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->direction:I

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2302(Lcom/lge/camera/controller/camera/PanoramaController;I)I

    .line 550
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v1

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$502(Lcom/lge/camera/controller/camera/PanoramaController;I)I

    .line 551
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/AutoPanorama;->setOrientation(I)V

    .line 553
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->initAutoPanoramaPlayUI(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z
    invoke-static {v0, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2602(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z
    invoke-static {v0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2902(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const v1, 0x7f090113

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->hRealDisp:I

    iget v2, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->vRealDisp:I

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/PanoThumbView;->setMovingRect(III)V

    .line 566
    iget v0, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z
    invoke-static {v0, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3202(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 568
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 570
    :cond_1
    return-void

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2900(Lcom/lge/camera/controller/camera/PanoramaController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$3000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z
    invoke-static {v0, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2902(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    goto :goto_0
.end method

.method public onSetStartSyncForceDelay()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->mSetStartSyncForceDelay:Z

    .line 676
    return-void
.end method

.method public onSynthesisProgressUpdate(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 605
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSynthesisProgressUpdate : progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    if-nez p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 608
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 613
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const v1, 0x7f090113

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/PanoThumbView;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 611
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    goto :goto_0
.end method

.method public onTakePicture(I)V
    .locals 5
    .parameter "frameCount"

    .prologue
    const/4 v4, 0x0

    .line 649
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 651
    .local v0, params:Landroid/hardware/Camera$Parameters;
    if-nez p1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setParameteredRotation(I)V

    .line 653
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameteredRotation()I

    move-result v2

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v1, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$502(Lcom/lge/camera/controller/camera/PanoramaController;I)I

    .line 654
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 658
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct {v2, v3, v4}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 659
    return-void
.end method
