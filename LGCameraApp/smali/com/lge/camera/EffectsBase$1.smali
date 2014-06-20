.class Lcom/lge/camera/EffectsBase$1;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkTextureSourceAndState(Landroid/graphics/SurfaceTexture;)Z
    .locals 7
    .parameter "source"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 871
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-nez v2, :cond_1

    .line 875
    const-string v2, "CameraApp"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_0
    :goto_0
    return v1

    .line 878
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v2, v5, :cond_2

    .line 881
    const-string v2, "CameraApp"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_2
    if-nez p1, :cond_7

    .line 885
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v2, v4, :cond_0

    .line 892
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v2, v4, :cond_6

    .line 893
    const-string v2, "CameraApp"

    const-string v3, "### effectrecorder PlatformDevice.DualRec_stopPIPPreview() and return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v2, v5, :cond_5

    .line 895
    :cond_4
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->DualRec_stopPIPPreview()V

    .line 904
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    invoke-virtual {v1, v2, v6}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 907
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to disconnect camera from effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 897
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_1

    .line 900
    :cond_6
    const-string v2, "CameraApp"

    const-string v3, "### effectrecorder state is STATE_RECORD, do nothing"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 913
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setPreviewSizeByModel(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Ljava/lang/String;)V
    .locals 6
    .parameter "params"
    .parameter "oldSizeOnDevice"
    .parameter "recordSize"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 862
    invoke-static {p3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 863
    .local v0, previewSizeOnDevice:[I
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    aget v2, v0, v4

    if-ne v1, v2, :cond_0

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    aget v2, v0, v5

    if-eq v1, v2, :cond_1

    .line 865
    :cond_0
    aget v1, v0, v4

    aget v2, v0, v5

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 866
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### reset Preview size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_1
    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 10
    .parameter "source"

    .prologue
    const/4 v8, 0x6

    const/4 v9, 0x5

    .line 788
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- onsurfaceTextureSourceReady callback (DualRecorderSourceReadyCallback) received: state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v7, v7, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    if-eqz p1, :cond_0

    .line 790
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    #calls: Lcom/lge/camera/EffectsBase;->awaitLatch()V
    invoke-static {v5}, Lcom/lge/camera/EffectsBase;->access$000(Lcom/lge/camera/EffectsBase;)V

    .line 792
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    monitor-enter v6

    .line 793
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    #getter for: Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v5}, Lcom/lge/camera/EffectsBase;->access$100(Lcom/lge/camera/EffectsBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 794
    const-string v5, "CameraApp"

    const-string v7, "source is same with mTextureSource, return."

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    monitor-exit v6

    .line 859
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    #setter for: Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v5, p1}, Lcom/lge/camera/EffectsBase;->access$102(Lcom/lge/camera/EffectsBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 799
    invoke-direct {p0, p1}, Lcom/lge/camera/EffectsBase$1;->checkTextureSourceAndState(Landroid/graphics/SurfaceTexture;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 800
    if-nez p1, :cond_2

    .line 801
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    #calls: Lcom/lge/camera/EffectsBase;->countDownLatch()V
    invoke-static {v5}, Lcom/lge/camera/EffectsBase;->access$200(Lcom/lge/camera/EffectsBase;)V

    .line 803
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 807
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    .line 808
    const-string v5, "CameraApp"

    const-string v7, "----- START : Changing the target display of mCameraDevice (SurfaceView -> SurfaceTexture)"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v5, "CameraApp"

    const-string v7, "### EffectBase - mCameraDevice.stopPreview()"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, v5, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, v5, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    #getter for: Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v7}, Lcom/lge/camera/EffectsBase;->access$100(Lcom/lge/camera/EffectsBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 813
    const-string v5, "CameraApp"

    const-string v7, "### EffectBase - mCameraDevice.setPreviewTexture()"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 818
    :try_start_3
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, v5, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 819
    .local v2, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 820
    .local v1, oldSizeOnDevice:Landroid/hardware/Camera$Size;
    if-nez v1, :cond_4

    .line 821
    const-string v5, "CameraApp"

    const-string v7, "oldSizeOnDevice is Null"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    monitor-exit v6

    goto :goto_0

    .line 814
    .end local v1           #oldSizeOnDevice:Landroid/hardware/Camera$Size;
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v7, v7, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v8, 0x6

    invoke-virtual {v5, v7, v8}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 816
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "Unable to connect camera to effect input"

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 826
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #oldSizeOnDevice:Landroid/hardware/Camera$Size;
    .restart local v2       #params:Landroid/hardware/Camera$Parameters;
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v5, v5, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v5, v5, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v5, v8, :cond_7

    .line 827
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v7, v7, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v7, v7, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, profileVideoSize:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, recordSize:Ljava/lang/String;
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProfile.video size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "record size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .end local v3           #profileVideoSize:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2, v1, v4}, Lcom/lge/camera/EffectsBase$1;->setPreviewSizeByModel(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Ljava/lang/String;)V

    .line 839
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### EffectBase - mCameraDevice.setParameters, Set video-size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v5, "video-size"

    invoke-virtual {v2, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v5, v5, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v5, v9, :cond_6

    .line 842
    const-string v5, "CameraApp"

    const-string v7, "Min FPS is set to 30000 Max FPS is set to 30000"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/16 v5, 0x7530

    const/16 v7, 0x7530

    invoke-virtual {v2, v5, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 847
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, v5, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 849
    const-string v5, "CameraApp"

    const-string v7, "### EffectBase - mCameraDevice.startPreview()"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, v5, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 853
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    .line 855
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v7, 0x3

    iput v7, v5, Lcom/lge/camera/EffectsBase;->mState:I

    .line 856
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v7, v7, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v8, 0x5

    invoke-virtual {v5, v7, v8}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 857
    const-string v5, "CameraApp"

    const-string v7, "----- END : Changing the target display of mCameraDevice (SurfaceView -> SurfaceTexture)"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    monitor-exit v6

    goto/16 :goto_0

    .line 833
    .end local v4           #recordSize:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/lge/camera/EffectsBase$1;->this$0:Lcom/lge/camera/EffectsBase;

    iget v5, v5, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    invoke-static {v5}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .restart local v4       #recordSize:Ljava/lang/String;
    goto :goto_1
.end method
