.class final Lcom/lge/camera/platform/PlatformDevice$4;
.super Ljava/lang/Object;
.source "PlatformDevice.java"

# interfaces
.implements Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;


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
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetBitmapDone(Lcom/lge/filterpacks/DualRecorderFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 155
    const-string v0, "CameraApp"

    const-string v1, "SetBitmapDone callback triggered"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "CameraApp"

    const-string v1, "PlatformDevice - onSetBitmapDone callback is called in PlatformDevice"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->access$000()Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;->onSetBitmapDoneProcess()V

    .line 159
    return-void
.end method
