.class Lcom/lge/camera/controller/SettingRotatableController$1;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->removeSettingView()V
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
    .line 227
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x4

    .line 235
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901bc

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 237
    .local v1, rlP:Lcom/lge/camera/components/RotateLayout;
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901c0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 239
    .local v0, rlC:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 241
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$1$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$1$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController$1;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    .end local v0           #rlC:Lcom/lge/camera/components/RotateLayout;
    .end local v1           #rlP:Lcom/lge/camera/components/RotateLayout;
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 229
    return-void
.end method
