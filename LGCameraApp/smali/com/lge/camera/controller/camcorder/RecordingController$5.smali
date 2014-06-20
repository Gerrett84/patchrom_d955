.class Lcom/lge/camera/controller/camcorder/RecordingController$5;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

.field final synthetic val$degree:I

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->val$start:Z

    iput p3, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->val$degree:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1255
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #calls: Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3100(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1257
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    .line 1258
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->val$start:Z

    if-eqz v0, :cond_3

    .line 1259
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->val$degree:I

    const/16 v3, 0x8

    invoke-interface {v0, v1, v7, v2, v3}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;III)V

    .line 1262
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->val$degree:I

    const/4 v4, 0x7

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;III)V

    .line 1268
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 1272
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFlashOffByHighTemperature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v7, v5, v6}, Lcom/lge/camera/ControllerFunction;->setButtonRemainEnabled(IZZ)V

    .line 1280
    :cond_2
    return-void

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeQuickButtonAll()V

    goto :goto_0
.end method
