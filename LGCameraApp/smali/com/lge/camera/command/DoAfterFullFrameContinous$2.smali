.class Lcom/lge/camera/command/DoAfterFullFrameContinous$2;
.super Ljava/lang/Object;
.source "DoAfterFullFrameContinous.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/DoAfterFullFrameContinous;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/DoAfterFullFrameContinous;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/DoAfterFullFrameContinous;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;->this$0:Lcom/lge/camera/command/DoAfterFullFrameContinous;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;->this$0:Lcom/lge/camera/command/DoAfterFullFrameContinous;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;->this$0:Lcom/lge/camera/command/DoAfterFullFrameContinous;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;->this$0:Lcom/lge/camera/command/DoAfterFullFrameContinous;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;->this$0:Lcom/lge/camera/command/DoAfterFullFrameContinous;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 34
    :cond_0
    return-void
.end method
