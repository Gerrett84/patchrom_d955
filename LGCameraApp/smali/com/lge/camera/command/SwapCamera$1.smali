.class Lcom/lge/camera/command/SwapCamera$1;
.super Ljava/lang/Object;
.source "SwapCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SwapCamera;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SwapCamera;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SwapCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 124
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 125
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 126
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isLiveEffectDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 132
    return-void
.end method
