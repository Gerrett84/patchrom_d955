.class public Lcom/lge/camera/command/HideLiveEffectSubMenuDrawer;
.super Lcom/lge/camera/command/Command;
.source "HideLiveEffectSubMenuDrawer.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 18
    const-string v2, "CameraApp"

    const-string v3, "HideLiveEffectSubMenuDrawer executed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900e7

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 21
    .local v1, slidingDrawer:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->close()V

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900e6

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, liveEffectSlidingMenuView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 27
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return-void
.end method
