.class public Lcom/lge/camera/listeners/CameraContinuousFocusCallback;
.super Ljava/lang/Object;
.source "CameraContinuousFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    .line 11
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    .line 12
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "focusedState"
    .parameter "camera"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;->callbackOnCAFocus(ZLandroid/hardware/Camera;)V

    .line 18
    :cond_0
    return-void
.end method
