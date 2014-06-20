.class Lcom/lge/camera/module/PanoramaShot$1;
.super Ljava/lang/Object;
.source "PanoramaShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/PanoramaShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/PanoramaShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/PanoramaShot;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaUIShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showPanoramaView()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startPanorama()V

    .line 28
    return-void
.end method
