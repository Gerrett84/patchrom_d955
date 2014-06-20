.class public Lcom/lge/camera/listeners/CameraAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraAutoFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    .line 11
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    .line 12
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;->callbackOnAutoFocus(ZLandroid/hardware/Camera;)V

    .line 26
    :cond_0
    return-void
.end method
