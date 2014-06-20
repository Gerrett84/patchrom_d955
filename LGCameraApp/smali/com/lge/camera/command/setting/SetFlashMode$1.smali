.class Lcom/lge/camera/command/setting/SetFlashMode$1;
.super Ljava/lang/Object;
.source "SetFlashMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetFlashMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetFlashMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetFlashMode;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetFlashMode$1;->this$0:Lcom/lge/camera/command/setting/SetFlashMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetFlashMode$1;->this$0:Lcom/lge/camera/command/setting/SetFlashMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetFlashMode$1;->this$0:Lcom/lge/camera/command/setting/SetFlashMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 73
    return-void
.end method
