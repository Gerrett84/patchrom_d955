.class Lcom/lge/camera/controller/camera/FreePanoramaController$2;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v1

    const-string v2, "mMorphoImageStitcher.end error ret:"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 593
    const-string v0, "CameraApp"

    const-string v1, "complete_Free_Panorama"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$600(Lcom/lge/camera/controller/camera/FreePanoramaController;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 595
    const-string v0, "CameraApp"

    const-string v1, "stop onComplete by pausing"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #calls: Lcom/lge/camera/controller/camera/FreePanoramaController;->saveResultImage()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    const-string v0, "CameraApp"

    const-string v1, "success saving"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #calls: Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$800(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    goto :goto_0

    .line 603
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "fail saving"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const v1, 0x7f0b018f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 605
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartToStartupPreview()V

    .line 606
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    goto :goto_0
.end method
