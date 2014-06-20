.class Lcom/lge/camera/controller/ShotModeMenuController$4;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 762
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 768
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "mode_menu_command"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 769
    const/4 v4, 0x0

    .line 770
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-nez v5, :cond_2

    .line 771
    move v3, p3

    .line 772
    .local v3, pos:I
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v5, :cond_0

    .line 773
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v1

    .line 774
    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 776
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 777
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 778
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 779
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getCommand()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 798
    .end local v3           #pos:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/ShotModeMenuController;->hide()V

    .line 800
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 801
    if-eqz v4, :cond_1

    .line 802
    move-object v2, v4

    .line 803
    .local v2, menuTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v6, Lcom/lge/camera/controller/ShotModeMenuController$4$1;

    invoke-direct {v6, p0, v2}, Lcom/lge/camera/controller/ShotModeMenuController$4$1;-><init>(Lcom/lge/camera/controller/ShotModeMenuController$4;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 810
    .end local v2           #menuTitle:Ljava/lang/String;
    :cond_1
    return-void

    .line 784
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v5, :cond_0

    .line 785
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, p3}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v1

    .line 786
    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 788
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, p3}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->isSelectedItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 789
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    #calls: Lcom/lge/camera/controller/ShotModeMenuController;->updateGridView(I)V
    invoke-static {v5, p3}, Lcom/lge/camera/controller/ShotModeMenuController;->access$000(Lcom/lge/camera/controller/ShotModeMenuController;I)V

    .line 790
    const-string v5, "fromGridView"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 791
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 792
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getCommand()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
