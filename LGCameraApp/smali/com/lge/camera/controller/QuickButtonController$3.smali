.class Lcom/lge/camera/controller/QuickButtonController$3;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setAlphaAnimation(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$start:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$3;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput-object p2, p0, Lcom/lge/camera/controller/QuickButtonController$3;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/lge/camera/controller/QuickButtonController$3;->val$start:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 1042
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$3;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1044
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$3;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/lge/camera/controller/QuickButtonController$3;->val$start:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$3;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #setter for: Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$902(Lcom/lge/camera/controller/QuickButtonController;Z)Z

    .line 1047
    :cond_0
    return-void

    .line 1044
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1039
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$3;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v1, 0x1

    #setter for: Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$902(Lcom/lge/camera/controller/QuickButtonController;Z)Z

    .line 1036
    return-void
.end method
