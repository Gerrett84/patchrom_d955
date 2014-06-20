.class Lcom/lge/camera/controller/PreviewPanelController$12$1;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController$12;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewPanelController$12;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController$12;)V
    .locals 0
    .parameter

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2601
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2602
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->val$galleryWindowViewImage:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->val$blackCover:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2603
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-boolean v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->val$open:Z

    if-nez v1, :cond_2

    .line 2604
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-boolean v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->val$deleteImage:Z

    if-eqz v1, :cond_1

    .line 2605
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900a0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    .line 2606
    .local v0, trash:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2607
    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2609
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #calls: Lcom/lge/camera/controller/PreviewPanelController;->deleteImageAndUpdateThumbnail()V
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1200(Lcom/lge/camera/controller/PreviewPanelController;)V

    .line 2622
    .end local v0           #trash:Lcom/lge/camera/components/RotateImageButton;
    :cond_0
    :goto_0
    return-void

    .line 2611
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #calls: Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1300(Lcom/lge/camera/controller/PreviewPanelController;)V

    goto :goto_0

    .line 2614
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2615
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->val$blackCover:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2617
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2618
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$12$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$12;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$12;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v2, 0x3

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->access$1102(Lcom/lge/camera/controller/PreviewPanelController;I)I

    goto :goto_0
.end method
