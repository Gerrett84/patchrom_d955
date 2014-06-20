.class Lcom/lge/camera/command/setting/SetVideoImageSize$3;
.super Ljava/lang/Object;
.source "SetVideoImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoImageSize;->showFocusAndUpdateSizeIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$3;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$3;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$3;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 207
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$3;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$3;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$3;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 211
    :cond_0
    return-void
.end method
