.class Lcom/lge/camera/Mediator$1;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/Mediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1769
    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    const-string v0, "on"

    iget-object v3, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    const-string v4, "key_smart_mode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    .line 1777
    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPIPFrameDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1778
    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->refreshQuickButton()V

    .line 1783
    :cond_1
    :goto_1
    return-void

    .line 1776
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1780
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/Mediator$1;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, v1, v1}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    goto :goto_1
.end method
