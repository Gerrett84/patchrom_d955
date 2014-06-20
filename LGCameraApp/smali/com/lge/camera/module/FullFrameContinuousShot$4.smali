.class Lcom/lge/camera/module/FullFrameContinuousShot$4;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot;->stopByUserAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/FullFrameContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$4;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$4;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$4;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 374
    return-void
.end method
