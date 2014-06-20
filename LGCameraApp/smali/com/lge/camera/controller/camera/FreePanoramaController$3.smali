.class Lcom/lge/camera/controller/camera/FreePanoramaController$3;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete()V
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
    .line 626
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #calls: Lcom/lge/camera/controller/camera/FreePanoramaController;->restartPanorama()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1400(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 634
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method
