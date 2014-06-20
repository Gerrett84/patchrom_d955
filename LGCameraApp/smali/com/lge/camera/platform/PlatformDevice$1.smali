.class final Lcom/lge/camera/platform/PlatformDevice$1;
.super Ljava/lang/Object;
.source "PlatformDevice.java"

# interfaces
.implements Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/platform/PlatformDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Lcom/lge/filterpacks/DualRecorderFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 74
    const-string v0, "CameraApp"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "CameraApp"

    const-string v1, "PlatformDevice - onLearningDone callback is called in PlatformDevice"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->access$000()Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;->onLearningDoneProcess()V

    .line 78
    return-void
.end method
