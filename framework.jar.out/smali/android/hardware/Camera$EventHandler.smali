.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 792
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 793
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 794
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 795
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 799
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 948
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown message type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 801
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 802
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v13

    invoke-interface {v13}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 807
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 808
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v13, v15}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 813
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v13, v15}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 819
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v8

    .line 820
    .local v8, pCb:Landroid/hardware/Camera$PreviewCallback;
    if-eqz v8, :cond_0

    .line 821
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v13}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 825
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v14, 0x0

    #setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v13, v14}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 832
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v8, v13, v14}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 826
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v13}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v14, 0x1

    const/4 v15, 0x0

    #calls: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v13, v14, v15}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 837
    .end local v8           #pCb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v13, v15}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 843
    :sswitch_5
    const/4 v2, 0x0

    .line 844
    .local v2, cb:Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 845
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v2

    .line 846
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    if-eqz v2, :cond_0

    .line 848
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_3

    const/4 v12, 0x0

    .line 849
    .local v12, success:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v12, v13}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 846
    .end local v12           #success:Z
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 848
    :cond_3
    const/4 v12, 0x1

    goto :goto_2

    .line 854
    .end local v2           #cb:Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v13, v0}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 860
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 861
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [Landroid/hardware/Camera$Face;

    check-cast v13, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v13, v15}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 866
    :sswitch_8
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 868
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v13, v14, v15}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 873
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v14

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_5

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v13, v15}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x1

    goto :goto_4

    .line 879
    :sswitch_a
    const/16 v13, 0x101

    new-array v11, v13, [I

    .line 880
    .local v11, statsdata:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    const/16 v13, 0x101

    if-ge v5, v13, :cond_6

    .line 881
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    mul-int/lit8 v14, v5, 0x4

    #calls: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v13, v14}, Landroid/hardware/Camera;->access$1400([BI)I

    move-result v13

    aput v13, v11, v5

    .line 880
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 883
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 884
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v13, v11, v14}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 889
    .end local v5           #i:I
    .end local v11           #statsdata:[I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v13, v15}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([ILandroid/hardware/Camera;)V

    .line 893
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 896
    const/4 v13, 0x5

    new-array v6, v13, [S

    .line 897
    .local v6, obt_data:[S
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    move-object v1, v13

    check-cast v1, [B

    .line 905
    .local v1, byteData:[B
    const/4 v13, 0x0

    const/4 v14, 0x1

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    .line 906
    const/4 v13, 0x1

    const/4 v14, 0x3

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    const/4 v15, 0x2

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    .line 907
    const/4 v13, 0x2

    const/4 v14, 0x5

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    const/4 v15, 0x4

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    .line 908
    const/4 v13, 0x3

    const/4 v14, 0x7

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    const/4 v15, 0x6

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    .line 909
    const/4 v13, 0x4

    const/16 v14, 0x9

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    const/16 v15, 0x8

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    .line 913
    const/4 v13, 0x5

    new-array v7, v13, [I

    .line 914
    .local v7, obt_data_i:[I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    const/4 v13, 0x5

    if-ge v5, v13, :cond_8

    .line 915
    aget-short v13, v6, v5

    aput v13, v7, v5

    .line 914
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 919
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v13, v7, v14}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 927
    .end local v1           #byteData:[B
    .end local v5           #i:I
    .end local v6           #obt_data:[S
    .end local v7           #obt_data_i:[I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mOisDataListener:Landroid/hardware/Camera$OisDataListener;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisDataListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 928
    new-instance v3, Landroid/hardware/Camera$OisData;

    invoke-direct {v3}, Landroid/hardware/Camera$OisData;-><init>()V

    .line 929
    .local v3, data:Landroid/hardware/Camera$OisData;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    move-object v1, v13

    check-cast v1, [B

    .line 930
    .restart local v1       #byteData:[B
    const/4 v9, 0x0

    .line 931
    .local v9, ptr:I
    add-int/lit8 v10, v9, 0x1

    .end local v9           #ptr:I
    .local v10, ptr:I
    aget-byte v13, v1, v9

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v9, v10, 0x1

    .end local v10           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v14, v1, v10

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int v4, v13, v14

    .line 932
    .local v4, dim:I
    const/4 v13, 0x3

    if-gt v4, v13, :cond_9

    if-gez v4, :cond_a

    :cond_9
    const/4 v4, 0x0

    .line 933
    :cond_a
    new-array v13, v4, [I

    iput-object v13, v3, Landroid/hardware/Camera$OisData;->gyro:[I

    .line 934
    new-array v13, v4, [I

    iput-object v13, v3, Landroid/hardware/Camera$OisData;->lens_target:[I

    .line 935
    new-array v13, v4, [I

    iput-object v13, v3, Landroid/hardware/Camera$OisData;->lens_position:[I

    .line 936
    const/4 v5, 0x0

    .restart local v5       #i:I
    move v10, v9

    .end local v9           #ptr:I
    .restart local v10       #ptr:I
    :goto_7
    if-ge v5, v4, :cond_b

    .line 938
    iget-object v13, v3, Landroid/hardware/Camera$OisData;->gyro:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v14, v1, v10

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v9, 0x1

    .end local v9           #ptr:I
    .restart local v10       #ptr:I
    aget-byte v15, v1, v9

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput v14, v13, v5

    .line 939
    iget-object v13, v3, Landroid/hardware/Camera$OisData;->lens_target:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v14, v1, v10

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v9, 0x1

    .end local v9           #ptr:I
    .restart local v10       #ptr:I
    aget-byte v15, v1, v9

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput v14, v13, v5

    .line 940
    iget-object v13, v3, Landroid/hardware/Camera$OisData;->lens_position:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v14, v1, v10

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v9, 0x1

    .end local v9           #ptr:I
    .restart local v10       #ptr:I
    aget-byte v15, v1, v9

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput v14, v13, v5

    .line 936
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 942
    :cond_b
    add-int/lit8 v9, v10, 0x1

    .end local v10           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v13, v1, v10

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v10, v9, 0x1

    .end local v9           #ptr:I
    .restart local v10       #ptr:I
    aget-byte v14, v1, v9

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    if-lez v13, :cond_c

    const/4 v13, 0x1

    :goto_8
    iput-boolean v13, v3, Landroid/hardware/Camera$OisData;->is_valid:Z

    .line 943
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mOisDataListener:Landroid/hardware/Camera$OisDataListener;
    invoke-static {v13}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisDataListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v13, v3, v14}, Landroid/hardware/Camera$OisDataListener;->onDataListen(Landroid/hardware/Camera$OisData;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 942
    :cond_c
    const/4 v13, 0x0

    goto :goto_8

    .line 799
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
    .end sparse-switch
.end method
