.class Lcom/lge/camera/controller/SettingRotatableExpandableController$2;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 261
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$000(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #calls: Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 272
    if-nez p2, :cond_1

    .line 273
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->scrollTo(II)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #calls: Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 278
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideSettingExpandParentScrollbar"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideSettingExpandParentScrollbar"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 283
    :cond_1
    return-void
.end method
