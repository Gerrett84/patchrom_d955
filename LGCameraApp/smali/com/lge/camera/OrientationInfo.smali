.class public Lcom/lge/camera/OrientationInfo;
.super Ljava/lang/Object;
.source "OrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

.field private mLastOrientation:I

.field private mLastOrientationBackup:I

.field private mOrientation:I

.field private mOrientationChangeEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    .line 21
    iput-object v1, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 22
    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 23
    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    .line 25
    iput-object v1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    .line 45
    iput-object p1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/OrientationInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/OrientationInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/OrientationInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/OrientationInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/OrientationInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/OrientationInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/OrientationInfo;->setSlimPortProperty(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/camera/OrientationInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/OrientationInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/OrientationInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lge/camera/OrientationInfo;->setOrientationDefault()V

    return-void
.end method

.method private changeOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0, p1}, Lcom/lge/camera/OrientationInfo;->setOrientation(I)V

    .line 208
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0, v2, v2}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->updateAudiozoom(ZI)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->setOrientationListenerRotate(I)V

    .line 214
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->setEffectRecorderOrientationHint()V

    .line 215
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->setEffectCameraOrientationHint()V

    .line 217
    :cond_2
    return-void
.end method

.method private setOrientationDefault()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 224
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    goto :goto_0

    .line 225
    :cond_2
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    if-nez v0, :cond_3

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    goto :goto_0

    .line 227
    :cond_3
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    .line 228
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    goto :goto_0
.end method

.method private setSlimPortProperty(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, strOrientation:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "sys.camera_orientation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set property done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public getDeviceDegree(I)I
    .locals 5
    .parameter "cameraId"

    .prologue
    .line 86
    iget v2, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 87
    .local v2, orientation:I
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v1

    .line 89
    .local v1, mDevicedegree:I
    iget-object v3, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v3}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->isConfigureLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v4}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    rsub-int v4, v4, 0x168

    add-int/2addr v3, v4

    rem-int/lit16 v1, v3, 0x168

    .line 95
    :cond_0
    iget v3, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 96
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 97
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 100
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 101
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 110
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v2

    .line 103
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v1

    rem-int/lit16 v2, v3, 0x168

    goto :goto_0

    .line 108
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    return v0
.end method

.method public getOrientationDegree()I
    .locals 6

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0x5a

    const/16 v2, 0x10e

    const/4 v1, 0x0

    .line 70
    iget-object v5, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v5}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->isConfigureLandscape()Z

    move-result v0

    .line 71
    .local v0, windowLand:Z
    iget v5, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 81
    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    return v1

    .line 73
    :pswitch_0
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 75
    :pswitch_1
    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    .line 77
    :pswitch_2
    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    goto :goto_0

    .line 79
    :pswitch_3
    if-eqz v0, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v1, v2

    .line 81
    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientationListener()Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method public getOrientationListenerEnable()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method public releaseOrientationListener()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 132
    return-void
.end method

.method public setLastOrientation(I)V
    .locals 0
    .parameter "lastOrientation"

    .prologue
    .line 63
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 64
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    .line 53
    return-void
.end method

.method public setOrientationListener()V
    .locals 3

    .prologue
    .line 142
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 148
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    .line 150
    new-instance v0, Lcom/lge/camera/OrientationInfo$1;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v1}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/camera/OrientationInfo$1;-><init>(Lcom/lge/camera/OrientationInfo;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 202
    return-void
.end method

.method public setOrientationListener(Landroid/view/OrientationEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 57
    return-void
.end method

.method public setOrientationListenerEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    .line 120
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 121
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 126
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationListener enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 42
    return-void
.end method
