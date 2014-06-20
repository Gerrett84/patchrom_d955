.class Lcom/lge/camera/module/FullFrameContinuousShot$8$1;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FullFrameContinuousShot$8;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 463
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 469
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    #setter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I
    invoke-static {v0, v1}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$102(Lcom/lge/camera/module/FullFrameContinuousShot;I)I

    .line 470
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-virtual {v0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 471
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 472
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 474
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteSavingProgressDialog()V

    .line 476
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 478
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v1, v1, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;->this$1:Lcom/lge/camera/module/FullFrameContinuousShot$8;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteSavingProgressDialog()V

    goto/16 :goto_0
.end method
