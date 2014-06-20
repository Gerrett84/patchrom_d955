.class Lcom/lge/camera/controller/PreviewPanelController$13$1;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewPanelController$13;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController$13;)V
    .locals 0
    .parameter

    .prologue
    .line 2675
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2678
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$100(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2680
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v2, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2681
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    .line 2682
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 2684
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0175

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 2688
    :cond_0
    return-void

    .line 2682
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
