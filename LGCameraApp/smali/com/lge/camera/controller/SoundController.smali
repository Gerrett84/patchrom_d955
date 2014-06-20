.class public Lcom/lge/camera/controller/SoundController;
.super Lcom/lge/camera/controller/Controller;
.source "SoundController.java"


# static fields
.field public static MAX_BURST_SHOT_SOUND:I = 0x0

.field public static MAX_CONTINUOUS_SHOT_SOUND:I = 0x0

.field public static final SHUTTER_SOUND_COUNT:I = 0x4


# instance fields
.field private final completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private final completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mClearSoundResultID:I

.field private mContinuousSoundResultID:I

.field private mMusicSoundSampleIDLoadedMaskID:I

.field private mShutter:[I

.field private mShutterSoundLoaded:Z

.field private mSoundBuildThread:Ljava/lang/Thread;

.field private mSoundSampleIDBeforeLoaded:I

.field private mSoundSampleIDLoadedMaskID:I

.field private mSoundSampleIDRegisteredMaskID:I

.field private mSound_Timer1sec:I

.field private mSound_TimerLast:I

.field private mSound_afFail:I

.field private mSound_afSuccess:I

.field private mSound_clearshot_delay:I

.field private mSound_clearshot_snap:I

.field private mSound_continuous_shutter:I

.field private mSound_pool:Landroid/media/SoundPool;

.field private mSound_pool_music:Landroid/media/SoundPool;

.field private mSound_shutter:I

.field private mSound_startRecording:I

.field private mSound_stopRecording:I

.field private mSound_voiceShutter_LG:I

.field private mSound_voiceShutter_cheese:I

.field private mSound_voiceShutter_kimchi:I

.field private mSound_voiceShutter_smile:I

.field private mSound_voiceShutter_torimasu:I

.field private mSound_voiceShutter_whisky:I

.field private msound_capture:I

.field private voiceCommandStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x5

    sput v0, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    .line 25
    const/16 v0, 0x27

    sput v0, Lcom/lge/camera/controller/SoundController;->MAX_BURST_SHOT_SOUND:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 42
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 43
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 44
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 45
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 46
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 47
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 49
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    .line 50
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    .line 52
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 54
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 55
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    .line 56
    iput-boolean v1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 59
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    .line 139
    new-instance v0, Lcom/lge/camera/controller/SoundController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController$1;-><init>(Lcom/lge/camera/controller/SoundController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 172
    new-instance v0, Lcom/lge/camera/controller/SoundController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController$2;-><init>(Lcom/lge/camera/controller/SoundController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 663
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 849
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setLoadedSoundMaskID(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->getSoundIDPlayedBeforeLoaded()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    return p1
.end method

.method static synthetic access$1402(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    return p1
.end method

.method static synthetic access$1502(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunnedInCamcorder()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunned()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceInCamcorder()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSource()V

    return-void
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/SoundController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->checkShutterSoundLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->checkAllSoundLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setLoadedMusicSoundMaskID(I)V

    return-void
.end method

.method private buildSoundPoolSoundSource()V
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 427
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/SoundController$7;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SoundController$7;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 468
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private checkAllSoundLoaded()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShutterSoundLoaded()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, result:Z
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 82
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v2, v5}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 88
    .local v1, shutterSoundID:I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 103
    :goto_1
    invoke-direct {p0, v1, v5}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_clear_shot"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    goto :goto_1

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    :cond_4
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    goto :goto_1

    .line 100
    :cond_5
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto :goto_1
.end method

.method private checkSoundLoaded(IZ)Z
    .locals 4
    .parameter "soundID"
    .parameter "isMusicStream"

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, result:Z
    const/4 v2, 0x0

    .line 68
    .local v2, soundMaskID:I
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    .line 69
    .local v0, loadMaskID:I
    :goto_0
    const/4 v3, 0x1

    shl-int v2, v3, p1

    .line 71
    and-int v3, v0, v2

    if-ne v3, v2, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 75
    :cond_0
    return v1

    .line 68
    .end local v0           #loadMaskID:I
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    goto :goto_0
.end method

.method private getSoundIDPlayedBeforeLoaded()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    return v0
.end method

.method private loadingCamcorderSoundSource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 275
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    .line 276
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 277
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-nez v0, :cond_0

    .line 278
    const-string v0, "CameraApp"

    const-string v1, "Shutter Sound Load Failed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/SoundController$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SoundController$4;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000b

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    .line 291
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 292
    return-void
.end method

.method private loadingCamcorderSoundSourceHWTunned()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 402
    const-string v2, "system/media/audio/camera/"

    .line 403
    .local v2, SOUND_RESOURCE_PATH:Ljava/lang/String;
    const-string v0, "system/media/audio/camera/camstart.ogg"

    .line 404
    .local v0, REC_START:Ljava/lang/String;
    const-string v1, "system/media/audio/camera/camstop.ogg"

    .line 406
    .local v1, REC_STOP:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/camera/camstart.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    .line 407
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 408
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-nez v3, :cond_0

    .line 409
    const-string v3, "CameraApp"

    const-string v4, "Shutter Sound Load Failed"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/SoundController$6;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/SoundController$6;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/camera/camstop.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    .line 422
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 423
    return-void
.end method

.method private loadingCameraSoundSource()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 200
    new-array v4, v10, [I

    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 201
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 203
    .local v3, shutterSoundResourceId:[I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shutter_sound"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 204
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v1, 0x0

    .line 206
    .local v1, index:I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 207
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 215
    :goto_0
    if-ltz v1, :cond_0

    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    .line 216
    :cond_0
    const/4 v1, 0x0

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    aput v5, v4, v1

    .line 219
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 220
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_5

    .line 222
    if-eq v0, v1, :cond_2

    .line 223
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget v7, v3, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    aput v5, v4, v0

    .line 224
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 221
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0           #i:I
    :cond_3
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 213
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "KEY_SHUTTER_SOUND is not found."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .restart local v0       #i:I
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v4, :cond_6

    .line 229
    const-string v4, "CameraApp"

    const-string v5, "Shutter Sound Load Failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/SoundController$3;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/SoundController$3;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 242
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 243
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 251
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060006

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    .line 252
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 254
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    .line 255
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 257
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060015

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 258
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060018

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 259
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06001a

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 260
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060016

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 261
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060017

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 262
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060019

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 264
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060014

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    .line 265
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060012

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    .line 266
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportShotModeModel()Z

    move-result v4

    if-nez v4, :cond_9

    .line 267
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06000c

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 268
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 272
    :goto_3
    return-void

    .line 245
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 246
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 247
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 248
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    goto/16 :goto_2

    .line 270
    :cond_9
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    goto :goto_3

    .line 201
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private loadingCameraSoundSourceHWTunned()V
    .locals 27

    .prologue
    .line 315
    const-string v11, "system/media/audio/camera/"

    .line 317
    .local v11, SOUND_RESOURCE_PATH:Ljava/lang/String;
    const-string v7, "system/media/audio/camera/cam_snap_0.ogg"

    .line 318
    .local v7, SHUTTER_SOUND0:Ljava/lang/String;
    const-string v8, "system/media/audio/camera/cam_snap_1.ogg"

    .line 319
    .local v8, SHUTTER_SOUND1:Ljava/lang/String;
    const-string v9, "system/media/audio/camera/cam_snap_2.ogg"

    .line 320
    .local v9, SHUTTER_SOUND2:Ljava/lang/String;
    const-string v10, "system/media/audio/camera/cam_snap_3.ogg"

    .line 322
    .local v10, SHUTTER_SOUND3:Ljava/lang/String;
    const-string v12, "system/media/audio/camera/cameratimer.ogg"

    .line 323
    .local v12, TIMER_COUNT:Ljava/lang/String;
    const-string v13, "system/media/audio/camera/cameratimerlast3.ogg"

    .line 324
    .local v13, TIMER_LAST:Ljava/lang/String;
    const-string v3, "system/media/audio/camera/af_success.ogg"

    .line 325
    .local v3, AF_SUCCESS:Ljava/lang/String;
    const-string v2, "system/media/audio/camera/af_failure.ogg"

    .line 327
    .local v2, AF_FAILURE:Ljava/lang/String;
    const-string v6, "system/media/audio/camera/continuous_shot.ogg"

    .line 329
    .local v6, CONTI_SOUND:Ljava/lang/String;
    const-string v14, "system/media/audio/camera/cam_snap_0.ogg"

    .line 330
    .local v14, VOICE_CHEESE:Ljava/lang/String;
    const-string v17, "system/media/audio/camera/cam_snap_1.ogg"

    .line 331
    .local v17, VOICE_SMILE:Ljava/lang/String;
    const-string v19, "system/media/audio/camera/cam_snap_2.ogg"

    .line 332
    .local v19, VOICE_WHISKY:Ljava/lang/String;
    const-string v15, "system/media/audio/camera/cam_snap_3.ogg"

    .line 333
    .local v15, VOICE_KIMCHI:Ljava/lang/String;
    const-string v16, "system/media/audio/camera/cam_snap_0.ogg"

    .line 334
    .local v16, VOICE_LG:Ljava/lang/String;
    const-string v18, "system/media/audio/camera/cam_snap_0.ogg"

    .line 336
    .local v18, VOICE_TORIMASU:Ljava/lang/String;
    const-string v4, "system/media/audio/camera/snd_loop.ogg"

    .line 337
    .local v4, CLEAR_SHOT_LOOP:Ljava/lang/String;
    const-string v5, "system/media/audio/camera/shot_snap.ogg"

    .line 339
    .local v5, CLEAR_SHOT_SNAP:Ljava/lang/String;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_1.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_2.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_3.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v22, v0

    const-string v23, "key_camera_shutter_sound"

    invoke-interface/range {v22 .. v23}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v21

    .line 348
    .local v21, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v21, :cond_2

    .line 349
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    const-string v23, "off"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 350
    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 351
    .local v20, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    aget v22, v22, v20

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 360
    .end local v20           #index:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 362
    const-string v22, "CameraApp"

    const-string v23, "Shutter Sound Load Failed"

    invoke-static/range {v22 .. v23}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v22, v0

    new-instance v23, Lcom/lge/camera/controller/SoundController$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController$5;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface/range {v22 .. v23}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/continuous_shot.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/af_success.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/af_failure.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cameratimer.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cameratimerlast3.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_1.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_2.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_3.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/snd_loop.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/shot_snap.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    .line 399
    return-void

    .line 353
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 354
    .restart local v20       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    aget v22, v22, v20

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto/16 :goto_0

    .line 357
    .end local v20           #index:I
    :cond_2
    const-string v22, "CameraApp"

    const-string v23, "KEY_SHUTTER_SOUND is not found."

    invoke-static/range {v22 .. v23}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadingCameraSoundSourceHWTunnedInCamcorder()V
    .locals 4

    .prologue
    .line 295
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 296
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getShutterSoundIndex(Landroid/content/Context;)I

    move-result v0

    .line 297
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 298
    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x0

    .line 302
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system/media/audio/camera/cam_snap_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, shutterSoundPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    .line 305
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 306
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 309
    .end local v1           #shutterSoundPath:Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v2, :cond_3

    .line 310
    const-string v2, "CameraApp"

    const-string v3, "Shutter Sound Load Failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_3
    return-void
.end method

.method private loadingCameraSoundSourceInCamcorder()V
    .locals 6

    .prologue
    .line 180
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 181
    .local v1, shutterSoundResourceId:[I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getShutterSoundIndex(Landroid/content/Context;)I

    move-result v0

    .line 183
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 184
    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget v4, v1, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    .line 188
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 189
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 194
    :goto_0
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v2, :cond_2

    .line 195
    const-string v2, "CameraApp"

    const-string v3, "Shutter Sound Load Failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void

    .line 191
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "KEY_SHUTTER_SOUND is not found."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private setLoadedMusicSoundMaskID(I)V
    .locals 2
    .parameter "sampleID"

    .prologue
    .line 128
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    .line 129
    return-void
.end method

.method private setLoadedSoundMaskID(I)V
    .locals 2
    .parameter "sampleID"

    .prologue
    .line 124
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 125
    return-void
.end method

.method private setRegisteredSoundMaskID(I)V
    .locals 3
    .parameter "sampleID"

    .prologue
    const/4 v2, 0x1

    .line 132
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 133
    shl-int v0, v2, p1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    goto :goto_0
.end method

.method private setSoundSampleIDBeforeLoaded(I)V
    .locals 0
    .parameter "sampleID"

    .prologue
    .line 597
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    .line 598
    return-void
.end method

.method private unloadSoundPool(IZZ)V
    .locals 4
    .parameter "index"
    .parameter "shutterSound"
    .parameter "isMusicStream"

    .prologue
    const/4 v3, 0x0

    .line 556
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool, start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    if-eqz p2, :cond_1

    .line 558
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool, mShutter[index] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 575
    :cond_0
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "unloadSoundPool, end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    .line 563
    :cond_1
    if-eqz p3, :cond_2

    .line 564
    if-lez p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool_music, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0

    .line 569
    :cond_2
    if-lez p1, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0
.end method


# virtual methods
.method public changeShutterSound(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportPhotoStory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveShutterSoundIndex(Landroid/content/Context;I)V

    .line 889
    :cond_2
    if-ltz p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto :goto_0
.end method

.method public checkCameraShutterSoundLoaded()Z
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, result:Z
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :cond_0
    return v0
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 472
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 513
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 515
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start, sound_pool release 1/2"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0, v2, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 518
    invoke-direct {p0, v3, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 519
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 520
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 521
    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 523
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 524
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 525
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 526
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 527
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 528
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 529
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 530
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 532
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 533
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 534
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 535
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 536
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 537
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 539
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 540
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 542
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 543
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 544
    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    .line 546
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    invoke-virtual {v0, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 547
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 548
    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    .line 550
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end, sound_pool release 2/2"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 553
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 503
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 507
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 508
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 486
    const-string v0, "CameraApp"

    const-string v1, "onResume-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 492
    const-string v0, "CameraApp"

    const-string v1, "retry buildSoundPoolSoundSource"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V

    .line 498
    :cond_1
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "onResume-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playAFSound(Z)V
    .locals 4
    .parameter "seccess"

    .prologue
    const/4 v3, 0x0

    .line 786
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAFSound : seccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    if-eqz p1, :cond_1

    .line 788
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playBurstShotShutterSound(Z)V
    .locals 3
    .parameter "repeat"

    .prologue
    .line 762
    const-string v0, "CameraApp"

    const-string v1, "playBurstShotShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/controller/SoundController;->soundPlayBurstShot(IZ)V

    goto :goto_0

    .line 771
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playClearShotShutterSound(Z)V
    .locals 7
    .parameter "isEnd"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 852
    const-string v0, "CameraApp"

    const-string v1, "playClearShotShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 859
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 860
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    :cond_3
    if-eqz p1, :cond_4

    .line 864
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    goto :goto_0

    .line 866
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 867
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playClickSound()V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 800
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 801
    return-void
.end method

.method public playContinuousShutterSound()V
    .locals 3

    .prologue
    .line 748
    const-string v0, "CameraApp"

    const-string v1, "playContinuousShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlaycontinuous(I)V

    goto :goto_0

    .line 757
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playFreePanoramaShutterSound()V
    .locals 3

    .prologue
    .line 776
    const-string v0, "CameraApp"

    const-string v1, "playFreePanoramaShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 782
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playRecordingSound(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 633
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRecordingSound : start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_free_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :goto_0
    return-void

    .line 643
    :cond_1
    if-eqz p1, :cond_2

    .line 644
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0

    .line 646
    :cond_2
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playShutterSound()V
    .locals 2

    .prologue
    .line 626
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shutter_sound"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 629
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playTimerSound(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 651
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTimerSound : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 656
    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 657
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0

    .line 659
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playVoiceCommandSound(I)V
    .locals 7
    .parameter "soundIndex"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 804
    const-string v0, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVoiceCommandSound : soundIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 807
    const/4 v1, 0x0

    .line 808
    .local v1, soundSource:I
    packed-switch p1, :pswitch_data_0

    .line 831
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    .line 832
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceCommandStream.play :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 838
    .end local v1           #soundSource:I
    :cond_0
    return-void

    .line 810
    .restart local v1       #soundSource:I
    :pswitch_0
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 811
    goto :goto_0

    .line 813
    :pswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 814
    goto :goto_0

    .line 816
    :pswitch_2
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 817
    goto :goto_0

    .line 819
    :pswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 820
    goto :goto_0

    .line 822
    :pswitch_4
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 823
    goto :goto_0

    .line 825
    :pswitch_5
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 826
    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public soundPlay(I)V
    .locals 8
    .parameter "soundSource"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 601
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 602
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 603
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    if-ne p1, v0, :cond_2

    .line 611
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 616
    .local v7, result:I
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.play :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    if-nez v7, :cond_2

    .line 618
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 623
    .end local v7           #result:I
    :cond_2
    return-void
.end method

.method public soundPlayBurstShot(IZ)V
    .locals 7
    .parameter "soundSource"
    .parameter "repeat"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 703
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 704
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 706
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-ne p1, v0, :cond_3

    .line 708
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 710
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSound_pool.play soundSource : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->stopSoundBurstShot()V

    .line 716
    :cond_2
    if-nez p2, :cond_4

    .line 717
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 722
    :goto_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-nez v0, :cond_3

    .line 723
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 728
    :cond_3
    return-void

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/16 v4, 0xa

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_BURST_SHOT_SOUND:I

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    goto :goto_0
.end method

.method public soundPlaycontinuous(I)V
    .locals 7
    .parameter "soundSource"

    .prologue
    const/high16 v2, 0x3f80

    .line 666
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 667
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 669
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-ne p1, v0, :cond_2

    .line 671
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 673
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSound_pool.play "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 676
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-nez v0, :cond_2

    .line 677
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 682
    :cond_2
    return-void
.end method

.method public stopClearShotSound()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 874
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 878
    :cond_0
    return-void
.end method

.method public stopSoundBurstShot()V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 733
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 737
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 738
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.stop mContinuousSoundResultID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 744
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 745
    return-void
.end method

.method public stopSoundContinuous()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 686
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 688
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 692
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 699
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 700
    return-void
.end method

.method public stopVoiceCommandSound()V
    .locals 2

    .prologue
    .line 841
    const-string v0, "CameraApp"

    const-string v1, "stopVoiceCommandSound "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 844
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 848
    :cond_0
    return-void
.end method

.method public waitSoundBuildThreadDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const-string v1, "CameraApp"

    const-string v2, "Wait for sound_pool load.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 584
    const-string v1, "CameraApp"

    const-string v2, "sound_pool loaded.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join sound_pool load thread!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
