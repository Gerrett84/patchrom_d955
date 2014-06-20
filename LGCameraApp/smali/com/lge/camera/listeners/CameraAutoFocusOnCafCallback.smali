.class public Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;
.super Ljava/lang/Object;
.source "CameraAutoFocusOnCafCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    .line 13
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    .line 14
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;->callbackAutoFocusOnCaf(ZLandroid/hardware/Camera;)V

    .line 21
    :cond_0
    return-void
.end method
