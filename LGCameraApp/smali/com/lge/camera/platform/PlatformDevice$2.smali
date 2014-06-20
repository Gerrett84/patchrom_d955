.class final Lcom/lge/camera/platform/PlatformDevice$2;
.super Ljava/lang/Object;
.source "PlatformDevice.java"

# interfaces
.implements Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;


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
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 84
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->access$100()Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->access$100()Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 87
    :cond_0
    return-void
.end method
