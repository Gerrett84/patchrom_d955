.class public Lcom/lge/camera/command/RunPanoramaStartSyncTask;
.super Lcom/lge/camera/command/Command;
.source "RunPanoramaStartSyncTask.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lcom/lge/olaworks/library/AutoPanorama;

    .line 18
    .local v0, panorama:Lcom/lge/olaworks/library/AutoPanorama;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/lge/olaworks/library/AutoPanorama;->runStartSynthesisTask()V

    .line 21
    :cond_0
    return-void
.end method
