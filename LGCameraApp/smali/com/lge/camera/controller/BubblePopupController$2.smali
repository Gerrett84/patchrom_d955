.class Lcom/lge/camera/controller/BubblePopupController$2;
.super Ljava/lang/Object;
.source "BubblePopupController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/BubblePopupController;

.field final synthetic val$aniView:Landroid/view/View;

.field final synthetic val$mediator:Lcom/lge/camera/Mediator;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/BubblePopupController;Landroid/view/View;Lcom/lge/camera/Mediator;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lge/camera/controller/BubblePopupController$2;->this$0:Lcom/lge/camera/controller/BubblePopupController;

    iput-object p2, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$aniView:Landroid/view/View;

    iput-object p3, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$mediator:Lcom/lge/camera/Mediator;

    iput-boolean p4, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$show:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$aniView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$mediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$show:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$aniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController$2;->val$mediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/BubblePopupController$2$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/BubblePopupController$2$1;-><init>(Lcom/lge/camera/controller/BubblePopupController$2;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 215
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 214
    return-void
.end method
