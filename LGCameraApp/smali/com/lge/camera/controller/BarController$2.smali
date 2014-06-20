.class Lcom/lge/camera/controller/BarController$2;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/BarController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/BarController;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/camera/controller/BarController$2;->this$0:Lcom/lge/camera/controller/BarController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/camera/controller/BarController$2;->this$0:Lcom/lge/camera/controller/BarController;

    #getter for: Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;
    invoke-static {v0}, Lcom/lge/camera/controller/BarController;->access$000(Lcom/lge/camera/controller/BarController;)Lcom/lge/camera/components/BarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lge/camera/controller/BarController$2;->this$0:Lcom/lge/camera/controller/BarController;

    #getter for: Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;
    invoke-static {v0}, Lcom/lge/camera/controller/BarController;->access$000(Lcom/lge/camera/controller/BarController;)Lcom/lge/camera/components/BarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 103
    return-void
.end method
