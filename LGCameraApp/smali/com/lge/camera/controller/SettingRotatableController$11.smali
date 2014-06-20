.class Lcom/lge/camera/controller/SettingRotatableController$11;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1147
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wheel itemIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1153
    const-string v2, "CameraApp"

    const-string v3, "return because of recording staus"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v2

    if-ne v2, p3, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 1159
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 1160
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1162
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView(Z)V

    .line 1163
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    goto :goto_0

    .line 1166
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p3}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 1168
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    #calls: Lcom/lge/camera/controller/SettingRotatableController;->setChildViewPattern(I)V
    invoke-static {v2, p3}, Lcom/lge/camera/controller/SettingRotatableController;->access$100(Lcom/lge/camera/controller/SettingRotatableController;I)V

    .line 1170
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1171
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 1173
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1174
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_5

    .line 1175
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, key:Ljava/lang/String;
    const-string v2, "key_help_guide"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1177
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 1178
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setSelected(Z)V

    .line 1179
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$11$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$11$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController$11;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1191
    .end local v0           #key:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$11$2;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$11$2;-><init>(Lcom/lge/camera/controller/SettingRotatableController$11;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
