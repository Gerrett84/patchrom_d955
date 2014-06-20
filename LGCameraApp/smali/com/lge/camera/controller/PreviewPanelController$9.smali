.class Lcom/lge/camera/controller/PreviewPanelController$9;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v7, 0x1388

    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    .line 2412
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v9, :cond_0

    .line 2413
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2414
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput-boolean v11, v9, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2415
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v9, v11, v11}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    .line 2417
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_auto_review"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, autoReview:Ljava/lang/String;
    const-string v9, "on_delay_2sec"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v3, 0x7d0

    .line 2419
    .local v3, duration:J
    :goto_0
    const-string v9, "on_delay_5sec"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-wide v1, v7

    .line 2420
    .local v1, autoReviewDuration:J
    :goto_1
    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimemachineHasPictures()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2421
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$9;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x1

    invoke-interface {v5, v11, v7, v8, v6}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 2424
    .end local v0           #autoReview:Ljava/lang/String;
    .end local v1           #autoReviewDuration:J
    .end local v3           #duration:J
    :cond_0
    return-void

    .restart local v0       #autoReview:Ljava/lang/String;
    :cond_1
    move-wide v3, v5

    .line 2418
    goto :goto_0

    .restart local v3       #duration:J
    :cond_2
    move-wide v1, v3

    .line 2419
    goto :goto_1
.end method
