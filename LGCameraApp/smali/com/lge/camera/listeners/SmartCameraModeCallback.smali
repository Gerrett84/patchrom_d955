.class public Lcom/lge/camera/listeners/SmartCameraModeCallback;
.super Ljava/lang/Object;
.source "SmartCameraModeCallback.java"

# interfaces
.implements Landroid/hardware/Camera$CameraDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mGet:Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;

.field private statsdata:[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/SmartCameraModeCallback;->mGet:Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/SmartCameraModeCallback;->statsdata:[I

    .line 17
    iput-object p1, p0, Lcom/lge/camera/listeners/SmartCameraModeCallback;->mGet:Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;

    .line 18
    return-void
.end method


# virtual methods
.method public onCameraData([ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 21
    const-string v0, "CameraApp"

    const-string v1, "SmartCameraModeCallback, get Object callback"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/lge/camera/listeners/SmartCameraModeCallback;->statsdata:[I

    const/16 v1, 0xa

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v0, p0, Lcom/lge/camera/listeners/SmartCameraModeCallback;->mGet:Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;

    iget-object v1, p0, Lcom/lge/camera/listeners/SmartCameraModeCallback;->statsdata:[I

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;->doSmartCameraModeCallback([I)V

    .line 24
    return-void
.end method
