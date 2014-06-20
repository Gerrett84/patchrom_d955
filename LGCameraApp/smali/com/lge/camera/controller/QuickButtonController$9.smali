.class Lcom/lge/camera/controller/QuickButtonController$9;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$enable:Z

.field final synthetic val$rib:Lcom/lge/camera/components/RotateImageButton;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;ZLcom/lge/camera/components/RotateImageButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$enable:Z

    iput-object p3, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$rib:Lcom/lge/camera/components/RotateImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1247
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$enable:Z

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$rib:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->clearColorFilter()V

    .line 1252
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$rib:Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getQuickButtonDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
