.class Lcom/lge/camera/controller/PreviewController$11;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$900(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/ShutterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V

    .line 1735
    const/4 v0, 0x0

    return v0
.end method
