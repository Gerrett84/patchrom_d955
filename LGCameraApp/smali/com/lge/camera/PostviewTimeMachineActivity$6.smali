.class Lcom/lge/camera/PostviewTimeMachineActivity$6;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$6;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$6;->val$action:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$6;->val$action:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$6;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$6;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1202(Lcom/lge/camera/PostviewTimeMachineActivity;Z)Z

    .line 1095
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1089
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1088
    return-void
.end method
