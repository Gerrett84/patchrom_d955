.class public Lcom/lge/camera/command/HideFreePanoramaGuide;
.super Lcom/lge/camera/command/Command;
.source "HideFreePanoramaGuide.java"


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
    .locals 2

    .prologue
    .line 14
    const-string v0, "CameraApp"

    const-string v1, "HideFreePanoramaGuide executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFreePanoramaTakingGuide()V

    .line 16
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 20
    const-string v0, "CameraApp"

    const-string v1, "TestCommand obj executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
