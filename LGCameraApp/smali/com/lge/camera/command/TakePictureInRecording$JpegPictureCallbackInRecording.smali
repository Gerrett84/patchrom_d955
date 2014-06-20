.class Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;
.super Ljava/lang/Object;
.source "TakePictureInRecording.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/TakePictureInRecording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JpegPictureCallbackInRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/TakePictureInRecording;


# direct methods
.method public constructor <init>(Lcom/lge/camera/command/TakePictureInRecording;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 101
    const-string v1, "CameraApp"

    const-string v2, "#### TIME_CHECK JpegPictureCallbackInRecording()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, isSuccessSave:Z
    if-nez p1, :cond_1

    .line 108
    const-string v1, "CameraApp"

    const-string v2, "error!! onPictureTaken (jpegData == null)"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jpegData size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v4, v3}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    .line 114
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveLiveSnapshot Queue count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v3, v3, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-nez v0, :cond_2

    .line 118
    const-string v1, "CameraApp"

    const-string v2, "savePicture() fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b018f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 120
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 121
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    goto/16 :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SnapshotEffect"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 126
    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 127
    const-string v1, "CameraApp"

    const-string v2, "JpegPictureCallbackInRecording()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
