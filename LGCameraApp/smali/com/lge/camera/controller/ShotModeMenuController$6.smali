.class Lcom/lge/camera/controller/ShotModeMenuController$6;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 872
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 875
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "Main_CameraAppConfig"

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 876
    .local v5, pref:Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v8, :cond_0

    .line 880
    const-string v8, "mode_menu_view_list"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 882
    .local v1, currViewIsList:Z
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 883
    .local v0, contentsLayout:Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 884
    .local v4, listLayout:Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 886
    .local v3, gridLayout:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 887
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 888
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 890
    if-eqz v1, :cond_1

    .line 891
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput v6, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 892
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v6}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 898
    :goto_0
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v10, 0x7f0901cd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v10, v10, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V

    .line 900
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-ne v8, v6, :cond_2

    .line 901
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 902
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v8, v3, v6}, Lcom/lge/camera/controller/ShotModeMenuController;->showingAnimation(Landroid/view/View;Z)V

    .line 904
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0341

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 912
    :goto_1
    if-nez v1, :cond_3

    move v1, v6

    .line 913
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 914
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v6, "mode_menu_view_list"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 915
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 917
    .end local v0           #contentsLayout:Landroid/view/View;
    .end local v1           #currViewIsList:Z
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v3           #gridLayout:Landroid/view/View;
    .end local v4           #listLayout:Landroid/view/View;
    :cond_0
    return-void

    .line 894
    .restart local v0       #contentsLayout:Landroid/view/View;
    .restart local v1       #currViewIsList:Z
    .restart local v3       #gridLayout:Landroid/view/View;
    .restart local v4       #listLayout:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput v7, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 895
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v7}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    goto :goto_0

    .line 906
    :cond_2
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v8, v4, v6}, Lcom/lge/camera/controller/ShotModeMenuController;->showingAnimation(Landroid/view/View;Z)V

    .line 908
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v8, v0, v6}, Lcom/lge/camera/controller/ShotModeMenuController;->showingAnimation(Landroid/view/View;Z)V

    .line 909
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0342

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v1, v7

    .line 912
    goto :goto_2
.end method
