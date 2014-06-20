.class Lcom/lge/camera/controller/SettingRotatableExpandableController$4;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingView()V
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
    .line 393
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$4$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$4$1;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$4;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 394
    return-void
.end method
