.class public Lcom/lge/camera/listeners/AudioRecogEngineCallback;
.super Ljava/lang/Object;
.source "AudioRecogEngineCallback.java"

# interfaces
.implements Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    .line 19
    iput-object p1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    .line 20
    return-void
.end method


# virtual methods
.method public onAudioEngineStartCallback(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 23
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioEngineStartCallback(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 30
    :pswitch_0
    return-void

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioEngineStopCallback(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 33
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioEngineStopCallback(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 40
    :pswitch_0
    return-void

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRecogErrorCallback(I)V
    .locals 3
    .parameter "error_type"

    .prologue
    .line 43
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRecogStateCallback(), ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-wide/16 v0, 0x19

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRecogResultCallback(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 64
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRecogResultCallback() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;->audioCallbackTakePicture()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public restartEngine()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "CameraApp"

    const-string v1, "restartEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;->audioCallbackRestartEngine()V

    .line 61
    :cond_0
    return-void
.end method
