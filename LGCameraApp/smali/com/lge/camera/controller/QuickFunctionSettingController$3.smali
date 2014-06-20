.class Lcom/lge/camera/controller/QuickFunctionSettingController$3;
.super Ljava/lang/Object;
.source "QuickFunctionSettingController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionSettingController;->qflSettingAnimation(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

.field final synthetic val$aniView:Landroid/view/View;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionSettingController;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iput-object p2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->val$aniView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->val$show:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->val$aniView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 354
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->val$show:Z

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->val$aniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->val$aniView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 358
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionSettingController$3$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$3$1;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController$3;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 351
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 350
    return-void
.end method
