.class public Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;
.super Ljava/lang/Object;
.source "ObjectTrackingFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$CameraDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;

.field private statsdata:[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->mGet:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->statsdata:[I

    .line 15
    iput-object p1, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->mGet:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;

    .line 16
    return-void
.end method


# virtual methods
.method public onCameraData([ILandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 19
    iget-object v2, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->statsdata:[I

    monitor-enter v2

    .line 20
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    .line 22
    .local v0, length:I
    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->statsdata:[I

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v1, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->mGet:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;

    iget-object v3, p0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;->statsdata:[I

    invoke-interface {v1, v3}, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;->doObjectTrackingFocusCallback([I)V

    .line 24
    monitor-exit v2

    .line 25
    return-void

    .line 20
    .end local v0           #length:I
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
