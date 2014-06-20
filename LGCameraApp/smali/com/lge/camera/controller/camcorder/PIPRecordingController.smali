.class public Lcom/lge/camera/controller/camcorder/PIPRecordingController;
.super Lcom/lge/camera/controller/PIPController;
.source "PIPRecordingController.java"


# instance fields
.field private mIsObjectTrackingEnabledForSmartZoom:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PIPController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V

    .line 10
    sget v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 14
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->initSmartZoomFocusViewMode()V

    .line 15
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V
    .locals 2
    .parameter "function"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/controller/PIPController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    .line 10
    sget v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 19
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->initSmartZoomFocusViewMode()V

    .line 20
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSmartZoomFocusViewMode()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    if-eqz v0, :cond_0

    .line 24
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public disableObjectTrackingForSmartZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    .line 48
    invoke-static {v1}, Lcom/lge/camera/platform/PlatformDevice;->SmartZoom_setObjectTrackingMode(Z)V

    .line 49
    return-void
.end method

.method public enableObjectTrackingForSmartZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    .line 41
    invoke-static {v2}, Lcom/lge/camera/platform/PlatformDevice;->SmartZoom_setObjectTrackingMode(Z)V

    .line 42
    return-void
.end method

.method public isObjectTrackingEnabledForSmartZoom()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    return v0
.end method
