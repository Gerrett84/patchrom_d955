.class Lcom/lge/camera/controller/PreviewController$6$1;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewController$6;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$6$1;->this$1:Lcom/lge/camera/controller/PreviewController$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$6$1;->this$1:Lcom/lge/camera/controller/PreviewController$6;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$6$1;->this$1:Lcom/lge/camera/controller/PreviewController$6;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraErrorAndFinish()V

    .line 1070
    return-void
.end method
