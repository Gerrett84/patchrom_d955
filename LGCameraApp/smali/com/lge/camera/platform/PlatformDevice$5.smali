.class final Lcom/lge/camera/platform/PlatformDevice$5;
.super Ljava/lang/Object;
.source "PlatformDevice.java"

# interfaces
.implements Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;


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
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Lcom/lge/filterpacks/SmartZoomFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 177
    const-string v0, "CameraApp"

    const-string v1, "PlatformDevice - onLearningDone callback is called in PlatformDevice - SmartZoomFilter"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->access$000()Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;->onLearningDoneProcess()V

    .line 180
    return-void
.end method
