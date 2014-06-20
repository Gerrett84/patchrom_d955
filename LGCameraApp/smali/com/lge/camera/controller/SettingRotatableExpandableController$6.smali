.class Lcom/lge/camera/controller/SettingRotatableExpandableController$6;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$400(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$202(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 725
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 713
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$400(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;

    move-result-object v1

    #setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$502(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 714
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$600(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$700(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 715
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$600(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 717
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateSetting()V

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollBarFadeDuration(I)V

    .line 719
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$202(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 721
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #calls: Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 722
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideSettingExpandParentScrollbar"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideSettingExpandParentScrollbar"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 702
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const/16 v1, 0xd

    #setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$202(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 698
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 699
    return-void
.end method
