.class Lcom/lge/camera/module/ClearShot$3;
.super Ljava/lang/Object;
.source "ClearShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ClearShot;->removewClearShotView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ClearShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ClearShot;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    #getter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09013d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 261
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    #getter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 262
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    #getter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$3;->this$0:Lcom/lge/camera/module/ClearShot;

    const/4 v2, 0x0

    #setter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/lge/camera/module/ClearShot;->access$402(Lcom/lge/camera/module/ClearShot;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
