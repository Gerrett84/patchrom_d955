.class Lcom/lge/camera/command/setting/SetVideoStabilization$1;
.super Ljava/lang/Object;
.source "SetVideoStabilization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoStabilization;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoStabilization;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoStabilization;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoStabilization$1;->this$0:Lcom/lge/camera/command/setting/SetVideoStabilization;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoStabilization$1;->this$0:Lcom/lge/camera/command/setting/SetVideoStabilization;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoStabilization$1;->this$0:Lcom/lge/camera/command/setting/SetVideoStabilization;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateStabilizationIndicator()V

    .line 33
    return-void
.end method
