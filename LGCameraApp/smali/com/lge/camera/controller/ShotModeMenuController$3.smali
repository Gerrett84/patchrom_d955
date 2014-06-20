.class Lcom/lge/camera/controller/ShotModeMenuController$3;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ShotModeMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "abslistview"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totlaItemCount"

    .prologue
    .line 738
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "abslistview"
    .parameter "scrollState"

    .prologue
    .line 710
    if-nez p1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput p2, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollState:I

    .line 714
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-boolean v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShowAnimation:Z

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShowAnimation:Z

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStateIdle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 719
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStarted:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$3;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStateIdle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
