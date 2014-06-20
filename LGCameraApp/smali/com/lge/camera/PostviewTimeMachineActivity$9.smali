.class Lcom/lge/camera/PostviewTimeMachineActivity$9;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineThumbAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$9;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$9;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$9;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1408
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$9;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1404
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1403
    return-void
.end method
