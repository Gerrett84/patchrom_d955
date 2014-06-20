.class Lcom/lge/camera/module/Module$2;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/Module;->jpegPictureCallbackError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/Module;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/Module;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/lge/camera/module/Module$2;->this$0:Lcom/lge/camera/module/Module;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/camera/module/Module$2;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/lge/camera/module/Module$2;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    .line 274
    return-void
.end method
