.class Lcom/lge/camera/command/setting/SetCameraFocusMode$5;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$5;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$5;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$5;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateFocusIndicator()V

    .line 241
    return-void
.end method
