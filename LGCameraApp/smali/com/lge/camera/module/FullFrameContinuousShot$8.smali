.class Lcom/lge/camera/module/FullFrameContinuousShot$8;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot;->processJpegCallbackAfter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/FullFrameContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->waitAvailableQueueCount(I)V

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$8$1;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot$8;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 490
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$8;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    goto :goto_0
.end method
