.class Lcom/lge/camera/controller/QuickFunctionController$18;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->slideQFLIn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0
    .parameter

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$18;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 1551
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$18;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1552
    .local v1, menu:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setClickable(Z)V

    .line 1553
    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1555
    .end local v1           #menu:Lcom/lge/camera/components/RotateImageButton;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$18;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v3, 0x0

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z
    invoke-static {v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$1402(Lcom/lge/camera/controller/QuickFunctionController;Z)Z

    .line 1556
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1549
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$18;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v1, 0x1

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$1402(Lcom/lge/camera/controller/QuickFunctionController;Z)Z

    .line 1546
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$18;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 1547
    return-void
.end method
