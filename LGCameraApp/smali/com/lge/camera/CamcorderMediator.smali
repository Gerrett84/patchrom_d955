.class public Lcom/lge/camera/CamcorderMediator;
.super Lcom/lge/camera/Mediator;
.source "CamcorderMediator.java"

# interfaces
.implements Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;


# instance fields
.field private final HeatDelay1:J

.field private final HeatDelay2:J

.field protected mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

.field private mBackKeyRecStop:Z

.field private mConnectHeadset:I

.field public mHealDelayCount:I

.field private mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

.field private mMaxVideoDurationInMs:I

.field private mPrevieousVideoAutoReviewValue:Ljava/lang/String;

.field private mPreviousRecordMode:Ljava/lang/String;

.field protected mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

.field private mRequestedSizeLimit:J

.field private mediaUsbConnected:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Camcorder;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;-><init>(Lcom/lge/camera/Mediator$ActivityBridge;)V

    .line 56
    iput-boolean v2, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    .line 58
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->HeatDelay1:J

    .line 59
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->HeatDelay2:J

    .line 60
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    .line 61
    const-string v0, "recordmode_normal"

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviousRecordMode:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    .line 64
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 251
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    .line 768
    iput-boolean v2, p0, Lcom/lge/camera/CamcorderMediator;->mediaUsbConnected:Z

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->setApplicationMode(I)V

    .line 68
    return-void
.end method

.method private isAudiozoomExceptionOrientation(Z)Z
    .locals 4
    .parameter "checkRotation"

    .prologue
    const/4 v0, 0x0

    .line 1204
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAudiozoomExceptionOrientation : video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return v0

    .line 1210
    :cond_1
    if-eqz p1, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v2

    const/16 v3, 0x5a

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v2

    const/16 v3, 0x10e

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 8
    .parameter "pg"

    .prologue
    .line 315
    if-eqz p1, :cond_5

    .line 316
    const-string v6, "key_preview_size_on_device"

    invoke-virtual {p1, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 317
    .local v4, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_5

    .line 318
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 319
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 321
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 322
    .local v5, size:Ljava/lang/String;
    const/4 v3, 0x0

    .line 323
    .local v3, isMMSSize:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 324
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 326
    if-eqz v3, :cond_0

    .line 327
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b0156

    invoke-virtual {p0, v7}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    const v6, 0x7f0b014f

    invoke-virtual {p0, v6}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 323
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_1
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b0157

    invoke-virtual {p0, v7}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    const v6, 0x7f0b0151

    invoke-virtual {p0, v6}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_1

    .line 334
    :cond_2
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b014e

    invoke-virtual {p0, v7}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 335
    const v6, 0x7f0b024b

    invoke-virtual {p0, v6}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_1

    .line 336
    :cond_3
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b0150

    invoke-virtual {p0, v7}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    const v6, 0x7f0b024a

    invoke-virtual {p0, v6}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_1

    .line 342
    :cond_4
    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 345
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entryValues:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #isMMSSize:Z
    .end local v4           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v5           #size:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public checkCamcorderStop(IZ)Z
    .locals 5
    .parameter "repeatCount"
    .parameter "useBackKey"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 891
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v2

    iget-object v0, v2, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 893
    .local v0, effectsRecorder:Lcom/lge/camera/EffectsRecorder;
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isRecording()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 898
    :cond_1
    if-nez p1, :cond_2

    .line 899
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 900
    const-string v2, "CameraApp"

    const-string v3, "Ignore stop recording request. It\'s too short."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .end local v0           #effectsRecorder:Lcom/lge/camera/EffectsRecorder;
    :cond_2
    :goto_0
    return v1

    .line 902
    .restart local v0       #effectsRecorder:Lcom/lge/camera/EffectsRecorder;
    :cond_3
    const-string v2, "com.lge.camera.command.StopRecording"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    .end local v0           #effectsRecorder:Lcom/lge/camera/EffectsRecorder;
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_5

    .line 908
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoRecorder is not in idle state. Ignore key:useBackKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", video state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkShotModeForZoomInOut()Z
    .locals 2

    .prologue
    .line 1253
    const-string v1, "key_video_record_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, videoRecordMode:Ljava/lang/String;
    const-string v1, "recordmode_live_effect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "recordmode_dual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "recordmode_smart_zoom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1257
    :cond_0
    const/4 v1, 0x0

    .line 1259
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkSupportVideoSize(Landroid/net/Uri;)Z
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 455
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "resolution"

    aput-object v0, v2, v11

    .line 456
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 457
    .local v6, cursor:Landroid/database/Cursor;
    const-string v9, ""

    .line 458
    .local v9, resolution:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    if-nez v6, :cond_0

    .line 461
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cursor is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 466
    if-nez v9, :cond_1

    .line 482
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 484
    :goto_0
    return v0

    .line 470
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x78

    :try_start_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 471
    .local v10, w:I
    const/16 v0, 0x78

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 473
    .local v8, h:I
    const/16 v0, 0x500

    if-gt v10, v0, :cond_2

    const/16 v0, 0x2d0

    if-le v8, v0, :cond_3

    .line 482
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .line 476
    .end local v8           #h:I
    .end local v10           #w:I
    :catch_0
    move-exception v7

    .line 477
    .local v7, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "Exception "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 482
    .end local v7           #e:Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move v0, v12

    .line 484
    goto :goto_0

    .line 480
    :catch_1
    move-exception v0

    .line 482
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public checkUpdateThumbnail()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1024
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1029
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 112
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 115
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 118
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 121
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/RecordingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    .line 124
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    .line 127
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    .line 130
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-super {p0}, Lcom/lge/camera/Mediator;->createControllers()V

    .line 133
    return-void
.end method

.method protected createPreviewController()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 160
    return-void
.end method

.method public doAttach()V
    .locals 6

    .prologue
    .line 356
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 366
    .local v2, savedVideoUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v3}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewUri()Landroid/net/Uri;

    move-result-object v2

    .line 367
    if-eqz v2, :cond_0

    .line 368
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attached file uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, -0x1

    .line 372
    .local v0, resultCode:I
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 377
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lge/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 378
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 379
    return-void

    .line 374
    .end local v0           #resultCode:I
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "attached file uri is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method public doCamcorderContinuousFocusCallback(Z)V
    .locals 7
    .parameter "focusedState"

    .prologue
    const/16 v3, 0xf0

    .line 864
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### onCotinuousFocus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    if-eqz p1, :cond_2

    .line 876
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->setFocusState(I)V

    .line 880
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->updateFocusStateIndicator()V

    .line 882
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 883
    .local v6, rand:Ljava/util/Random;
    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x280

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/CamcorderMediator;->startObjectTrackingFocus(IIIII)V

    goto :goto_0

    .line 878
    .end local v6           #rand:Ljava/util/Random;
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->setFocusState(I)V

    goto :goto_1
.end method

.method public doTouchbyAF(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 756
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    if-eqz v0, :cond_2

    .line 757
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->recordingControllerShow()V

    .line 759
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->isSmartZoomFocusViewShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(II)V

    .line 766
    :cond_2
    return-void
.end method

.method public finishLiveSnapshotSaver()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->finish()V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    .line 622
    :cond_0
    return-void
.end method

.method public getAudiozoomController()Lcom/lge/camera/controller/camcorder/AudiozoomController;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    return-object v0
.end method

.method public getAudiozoomStart()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getAudiozoomStart()Z

    move-result v0

    return v0
.end method

.method public getAudiozoomStartInRecording()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getAudioZoomStartInRecording()Z

    move-result v0

    return v0
.end method

.method public getAudiozoomvalue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getmAudiozoomvalue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackKeyRecStop()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    return v0
.end method

.method public bridge synthetic getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    return-object v0
.end method

.method public getHeadsetstate()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    return v0
.end method

.method public bridge synthetic getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    return-object v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getIsFileSizeLimitReached()Z

    move-result v0

    return v0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "uri"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v0, :cond_0

    .line 489
    const/4 v10, 0x0

    .line 533
    :goto_0
    return-object v10

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isUHDmode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 495
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 497
    :cond_3
    const-wide/16 v2, -0x1

    .line 498
    .local v2, id:J
    if-eqz p1, :cond_4

    .line 499
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 500
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB start id is %d, and uri is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    .line 505
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB end: uri not valid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v10, 0x0

    goto :goto_0

    .line 509
    :cond_5
    const/4 v10, 0x0

    .line 511
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 512
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, filePath:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 515
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 532
    .end local v8           #filePath:Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-nez v0, :cond_8

    .line 522
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v7

    .line 524
    .local v7, degree:I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 526
    .local v9, thumb:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v7, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 527
    goto :goto_1

    .line 528
    .end local v7           #degree:I
    .end local v9           #thumb:Landroid/graphics/Bitmap;
    :cond_8
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1
.end method

.method public getMaxVideoDurationInMs()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    return v0
.end method

.method public getMediaUSBConnectAtStartRecord()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/lge/camera/CamcorderMediator;->mediaUsbConnected:Z

    return v0
.end method

.method public bridge synthetic getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    return-object v0
.end method

.method public getPreviousRecordModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviousRecordMode:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->getCount()I

    move-result v0

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    return-object v0
.end method

.method public getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    return-object v0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingSizeLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestedVideoSizeLimit()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    return-wide v0
.end method

.method public getSelectedQuickFunctionMenuKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->getSelectedMenuKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShotModeMenuController()Lcom/lge/camera/controller/ShotModeMenuController;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getShotModeMenuController()Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    move-result-object v0

    return-object v0
.end method

.method public getShotModeMenuController()Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartrecordingdegree()I
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getStartrecordingdegree()I

    move-result v0

    return v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hideAudiozoomready()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1158
    const-string v0, "CameraApp"

    const-string v1, "===> Hide Audiozoom ready image"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 1163
    :cond_0
    return-void
.end method

.method public hideOsd()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->hideFocus()Z

    .line 151
    return-void
.end method

.method public hideOsdByForce()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->hideFocus()Z

    .line 156
    return-void
.end method

.method public hideRecoridngStopButton()V
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->hideRecoridngStopButton()V

    .line 554
    :cond_0
    return-void
.end method

.method public initControllers()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 138
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->initController()V

    .line 139
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->initController()V

    .line 140
    return-void
.end method

.method public isAfterRecordingThreadAlive()Z
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isAfterRecordingThreadAlive()Z

    move-result v0

    return v0
.end method

.method public isAttachIntent()Z
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAttachMode()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    .line 383
    .local v2, pg:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v4

    .line 386
    :cond_1
    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 387
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, videoSize:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutionsLength(Landroid/content/ContentResolver;)I

    move-result v5

    if-nez v5, :cond_3

    .line 393
    const/4 v0, 0x0

    .line 402
    .local v0, isMmsVideoSetting:Z
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 395
    .end local v0           #isMmsVideoSetting:Z
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isLiveEffectActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 396
    const/4 v0, 0x0

    .restart local v0       #isMmsVideoSetting:Z
    goto :goto_1

    .line 398
    .end local v0           #isMmsVideoSetting:Z
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .restart local v0       #isMmsVideoSetting:Z
    goto :goto_1
.end method

.method public isAudiozoom_ExceptionCase(Z)Z
    .locals 7
    .parameter "checkRotation"

    .prologue
    const/4 v4, 0x1

    .line 1177
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return v4

    .line 1180
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getHeadsetstate()I

    move-result v1

    .line 1181
    .local v1, headsetState:I
    iget-object v5, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getStartrecordingdegree()I

    move-result v3

    .line 1182
    .local v3, nStartdegree:I
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 1183
    .local v2, isMMS:Z
    const-string v5, "key_preview_size_on_device"

    invoke-virtual {p0, v5}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, currentVideoSize:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isLiveEffectActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isDualRecordingActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isSmartZoomRecordingActive()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "176x144"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "320x240"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/lge/camera/CamcorderMediator;->isAudiozoomExceptionOrientation(Z)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_3

    .line 1195
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    goto :goto_0

    .line 1200
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isAvailableResumeVideo()Z
    .locals 1

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isAvailableResumeVideo()Z

    move-result v0

    return v0
.end method

.method public isMMSIntent()Z
    .locals 6

    .prologue
    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, isMMScalling:Z
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 413
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, callingPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 416
    const-string v4, "MMSAttach"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 417
    const/4 v3, 0x1

    .line 419
    :cond_0
    const-string v4, "intentFrom"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, intentFrom:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 421
    const-string v4, "MMSAttach"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    const/4 v3, 0x1

    .line 429
    .end local v2           #intentFrom:Ljava/lang/String;
    :cond_1
    const-string v4, "com.android.mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    const/4 v3, 0x1

    .line 432
    :cond_2
    return v3
.end method

.method public isMMSRecording()Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayRingMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 438
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallPlayRingMode? = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v1, "playRing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "playRing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 438
    goto :goto_0

    :cond_1
    move v2, v3

    .line 439
    goto :goto_1
.end method

.method public isRecordedLengthTooShort()Z
    .locals 1

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v0

    return v0
.end method

.method public isRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordingControllerInit()Z

    move-result v0

    return v0
.end method

.method public isStopRecordingByMountedAction()Z
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isStopRecordingByMountedAction()Z

    move-result v0

    return v0
.end method

.method public isUHDmode()Z
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isUHDmode()Z

    move-result v0

    return v0
.end method

.method public needProgressBar()Z
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->createControllers()V

    .line 165
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onCreate()V

    .line 166
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    .line 244
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    .line 246
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 247
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 211
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/PreviewController;->setEffectRecorderPausing(Z)V

    .line 214
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHavePostedRunnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/lge/camera/EffectsRecorder;->isHavePostedRunnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->isHavePostedRunnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->getEffectPre()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/lge/camera/EffectsRecorder;->getMsgtPre()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->doOnPauseForEffectsUpdate(IIZ)Z

    .line 223
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->setIsHavePostedRunnable(Z)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->onPause()V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->onPause()V

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->finishLiveSnapshotSaver()V

    .line 233
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopReceivingLocationUpdates()V

    .line 234
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopHeatingwarning()V

    .line 236
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 237
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/lge/camera/util/ImageSavers;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/util/ImageSavers;-><init>(Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;I)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    .line 171
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onResume()V

    .line 173
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    const-string v0, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "off"

    const-string v1, "key_video_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "not found"

    const-string v1, "key_video_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    :cond_2
    const-string v0, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_3
    const-string v0, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->doAttach()V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    goto :goto_0

    .line 191
    :cond_5
    new-instance v0, Lcom/lge/camera/CamcorderMediator$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/CamcorderMediator$1;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public pauseRecording()V
    .locals 1

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->pauseRecording()V

    .line 945
    return-void
.end method

.method public postviewRequestInit()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 854
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 857
    const/4 v0, 0x1

    .line 859
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readVideoIntentExtras()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 258
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, extraVideoQuality:I
    const-string v4, "CameraApp"

    const-string v5, "extra video quality request: %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v0           #extraVideoQuality:I
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 264
    .local v1, getExBundle:Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 265
    const-string v4, "CameraApp"

    const-string v5, "intent.getExtras() is null. assume no limit."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput-wide v11, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 271
    :goto_0
    const-string v4, "CameraApp"

    const-string v5, "reduced safe filesize limit: %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    cmp-long v4, v4, v11

    if-nez v4, :cond_2

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 277
    .local v3, seconds:I
    const-string v4, "CameraApp"

    const-string v5, "duration limit: %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "kr.co.tictocplus"

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    const/4 v3, 0x0

    .line 281
    :cond_1
    mul-int/lit16 v4, v3, 0x3e8

    iput v4, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    .line 288
    .end local v3           #seconds:I
    :cond_2
    return-void

    .line 268
    :cond_3
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 269
    const-string v4, "CameraApp"

    const-string v5, "requested file size limit: %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordingControllerHide()V
    .locals 1

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hide()V

    .line 925
    return-void
.end method

.method public recordingControllerShow()V
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 921
    return-void
.end method

.method public resetAudioZoomMenu()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->resetAudioZoomMenu()V

    .line 1174
    return-void
.end method

.method public restoreAutoReviewValue()V
    .locals 3

    .prologue
    .line 1281
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore previous AutoReviewValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_video_auto_review"

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1294
    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resumeRecording()V

    .line 949
    return-void
.end method

.method public resumeUpdateReordingTime()V
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resumeUpdateReordingTime()V

    .line 969
    return-void
.end method

.method public saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V
    .locals 14
    .parameter "sr"

    .prologue
    .line 661
    const/4 v13, 0x0

    .line 662
    .local v13, ret:Z
    const-string v12, ""

    .line 663
    .local v12, fileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 666
    .local v6, path:Ljava/lang/String;
    :try_start_0
    const-string v0, "CameraApp"

    const-string v1, "imageHandler.addImage-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 670
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorage()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 672
    .end local v12           #fileName:Ljava/lang/String;
    .local v2, fileName:Ljava/lang/String;
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePicture >  sr.fileName :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-nez v2, :cond_3

    .line 675
    const-string v0, "CameraApp"

    const-string v1, "error get file name!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    const/4 v13, 0x0

    .line 690
    :cond_0
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageHandler.addImage-end "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    if-eqz v13, :cond_2

    .line 693
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 695
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 704
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 705
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 706
    return-void

    .line 678
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v3, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    iget v10, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    invoke-virtual/range {v0 .. v10}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 682
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_0

    .line 683
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 686
    .end local v2           #fileName:Ljava/lang/String;
    .restart local v12       #fileName:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v2, v12

    .line 687
    .end local v12           #fileName:Ljava/lang/String;
    .restart local v2       #fileName:Ljava/lang/String;
    .local v11, ex:Ljava/lang/Exception;
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "Exception while compressing liveSnapshot image."

    invoke-static {v0, v1, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 686
    .end local v11           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method public saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z
    .locals 3
    .parameter "jpegData"
    .parameter "bitmap"
    .parameter "degree"
    .parameter "isSetLastThumb"

    .prologue
    const/4 v0, 0x0

    .line 633
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/lge/camera/util/ImageSavers;->addImage([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    .line 637
    :goto_0
    return v0

    .line 636
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "ImageSave is null!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;)Z
    .locals 17
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 559
    const/16 v16, 0x0

    .line 560
    .local v16, ret:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 561
    .local v13, dateTaken:J
    const-string v1, "CameraApp"

    const-string v2, "Camcorder savePicture()-start "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v7, 0x0

    .line 563
    .local v7, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getDeviceDegree()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 567
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v12

    .line 568
    .local v12, CarrierCode:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder savePicture()-CarrierCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, fileName:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorage()I

    .end local v3           #fileName:Ljava/lang/String;
    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 574
    .restart local v3       #fileName:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePicture >  fileName :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    if-nez v3, :cond_0

    .line 577
    const-string v1, "CameraApp"

    const-string v2, "error get file name!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    .line 614
    :goto_0
    return v1

    .line 582
    :cond_0
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "imageHandler.addImage-start "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-wide v4, v13

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 592
    const/16 v16, 0x1

    .line 598
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageHandler.addImage-end "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    if-eqz v16, :cond_3

    .line 601
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 603
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 607
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 611
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 613
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder savePicture()-end, return "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, v16

    .line 614
    goto/16 :goto_0

    .line 594
    :catch_0
    move-exception v15

    .line 595
    .local v15, ex:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception while compressing liveSnapshot image."

    invoke-static {v1, v2, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    const/16 v16, 0x0

    goto :goto_1
.end method

.method public setAudioZoomGuideViewLayout(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "marginLeft"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioZoomGuideViewLayout(III)V

    .line 1155
    :cond_0
    return-void
.end method

.method public setAudiozoomStart(Z)V
    .locals 1
    .parameter "mAudiozoomStart"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoomStart(Z)V

    .line 1051
    return-void
.end method

.method public setAudiozoomStartInRecording(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioZoomStartInRecording(Z)V

    .line 1059
    return-void
.end method

.method public setAudiozoombuttonstate()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoombuttonstate()V

    .line 1133
    return-void
.end method

.method public setAudiozoomvalue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setmAudiozoomvalue(Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method public setBackKeyRecStop(Z)V
    .locals 0
    .parameter "con"

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    .line 448
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .parameter "endTime"

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/RecordingController;->setEndTime(J)V

    .line 965
    return-void
.end method

.method public setForced_audiozoom(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setForced_audiozoom(Z)V

    .line 1170
    :cond_0
    return-void
.end method

.method public setHeadsetstate(I)V
    .locals 3
    .parameter "Connect"

    .prologue
    const/4 v2, 0x2

    .line 780
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 783
    :cond_0
    iput p1, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    .line 784
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    if-ne v0, v2, :cond_1

    .line 785
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    if-ne v0, v2, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopAudiozoom()V

    goto :goto_0

    .line 792
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setAudiozoombuttonstate()V

    goto :goto_0
.end method

.method public setIsFileSizeLimitReached(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->setIsFileSizeLimitReached(Z)V

    .line 981
    return-void
.end method

.method public setMediaUSBConnectAtStartRecord(Z)V
    .locals 1
    .parameter "Connect"

    .prologue
    .line 774
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 777
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/CamcorderMediator;->mediaUsbConnected:Z

    goto :goto_0
.end method

.method public setPreviousAutoReviewValue()V
    .locals 3

    .prologue
    .line 1264
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    const-string v0, "key_video_auto_review"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    .line 1270
    const-string v0, "key_video_auto_review"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CamcorderMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1271
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because of guest mode and gallery not exist, so previous AutoReview value is saved. Saved value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_0
    return-void
.end method

.method public setPreviousRecordModeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strRecordMode"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator;->mPreviousRecordMode:Ljava/lang/String;

    .line 1043
    return-void
.end method

.method public setRecIndicatorLayout(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecIndicatorLayout(III)V

    .line 1005
    return-void
.end method

.method public setSaveRequest(Lcom/lge/camera/util/SaveRequest;[BLandroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter "sr"
    .parameter "data"
    .parameter "bitmap"
    .parameter "degree"
    .parameter "isSetLastThumb"

    .prologue
    .line 651
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    .line 652
    iput-object p2, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    .line 653
    iput-object p3, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    .line 655
    iput p4, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    .line 656
    iput-boolean p5, p1, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    .line 657
    return-void
.end method

.method public setScaleWidthHeight(F)V
    .locals 1
    .parameter "scaleWidthHeight"

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->setScaleWidthHeight(F)V

    .line 929
    return-void
.end method

.method public setStartrecordingdegree(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setStartrecordingdegree(I)V

    .line 1137
    return-void
.end method

.method public setVideoFlash(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1224
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "key_flash"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, flashMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isFinishingActivity()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    if-eqz p1, :cond_5

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1231
    :cond_2
    const-string v2, "off"

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1232
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedVideoFlashAuto()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1234
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1235
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1242
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 1237
    :cond_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1240
    :cond_4
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1245
    :cond_5
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public showControllerForHideSettingMenu(ZZ)V
    .locals 3
    .parameter "checkShowAll"
    .parameter "showAll"

    .prologue
    .line 832
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v1, :cond_4

    .line 833
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->recordingControllerShow()V

    .line 835
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showFocus()Z

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->needProgressBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->recordingControllerShow()V

    .line 842
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isDualCameraActive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 843
    :cond_3
    const-string v1, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 850
    :cond_4
    :goto_0
    return-void

    .line 844
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isLiveEffectActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 846
    .local v0, isOpen:Landroid/os/Bundle;
    const-string v1, "menu_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 847
    const-string v1, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showHeatingwarning()V
    .locals 5

    .prologue
    .line 743
    const-string v2, "CameraApp"

    const-string v3, "===> ShowHeatingwarning"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIsCharging()Z

    move-result v2

    if-nez v2, :cond_0

    .line 753
    :goto_0
    return-void

    .line 748
    :cond_0
    const v2, 0x7f0b025d

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, notifyMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 750
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 751
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 752
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v2, v0}, Lcom/lge/camera/util/MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public showOsd()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showQuickFunctionController()V

    .line 144
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showIndicatorController()V

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showFocus()Z

    .line 146
    return-void
.end method

.method public showRecoridngStopButton()V
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 540
    :cond_0
    new-instance v0, Lcom/lge/camera/CamcorderMediator$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CamcorderMediator$2;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 548
    :cond_1
    return-void
.end method

.method public showRequestedSizeLimit()V
    .locals 10

    .prologue
    const v9, 0x7f0b023c

    const/16 v8, 0x3c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 291
    const-string v1, ""

    .line 292
    .local v1, notifyMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    iget-wide v2, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 295
    invoke-virtual {p0, v9}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 297
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->toastLong(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not provided this language in AT&T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v9}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->toastLong(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not provided this language in AT&T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAudioZoomContollerRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomController()Lcom/lge/camera/controller/camcorder/AudiozoomController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->startRotation(I)V

    .line 957
    return-void
.end method

.method public startAudiozoom()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->startAudiozoom()V

    .line 1062
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/VideoFile;->setAudiozoomcontent(I)V

    .line 1063
    return-void
.end method

.method public startHeatingwarning()V
    .locals 6

    .prologue
    .line 710
    const-string v3, "CameraApp"

    const-string v4, "===> StartHeatingwarning"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 714
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 716
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 717
    const-wide/32 v0, 0x2bf20

    .line 725
    .local v0, delay:J
    :goto_0
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    .line 726
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> delay :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/lge/camera/util/MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 728
    return-void

    .line 718
    .end local v0           #delay:J
    :cond_0
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    if-nez v3, :cond_1

    .line 719
    const-wide/32 v0, 0x927c0

    .restart local v0       #delay:J
    goto :goto_0

    .line 721
    .end local v0           #delay:J
    :cond_1
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 722
    const-wide/16 v0, 0x0

    .restart local v0       #delay:J
    goto :goto_0
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRecording()V

    .line 933
    return-void
.end method

.method public startRecordingControllerRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRotation(I)V

    .line 953
    return-void
.end method

.method public stopAudiozoom()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->stopAudiozoom()V

    .line 1129
    return-void
.end method

.method public stopHeatingwarning()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 732
    const-string v0, "CameraApp"

    const-string v1, "===> StopHeatingwarning"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 736
    :cond_0
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    if-eqz v0, :cond_1

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    .line 739
    :cond_1
    return-void
.end method

.method public stopRecording(Z)V
    .locals 1
    .parameter "isFromMountedAction"

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording(Z)V

    .line 941
    return-void
.end method

.method public stopRecordingByPausing()V
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V

    .line 1009
    return-void
.end method

.method public switchCameraId(I)V
    .locals 6
    .parameter "cameraId"

    .prologue
    const/4 v5, 0x0

    .line 801
    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    if-eqz v2, :cond_0

    .line 828
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCameraId()-start, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0, p1}, Lcom/lge/camera/CamcorderMediator;->setCameraId(I)V

    .line 807
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 808
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 810
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v1

    .line 811
    .local v1, sPreview:Lcom/lge/camera/components/CameraPreview;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 813
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopPreview()V

    .line 814
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->closeCamera()V

    .line 816
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v2}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 820
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lge/camera/CamcorderMediator;->enableInput(Z)V

    .line 824
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 825
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 827
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCameraId()-end, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAudiozoom(ZI)V
    .locals 8
    .parameter "updateangle"
    .parameter "zoomvalue"

    .prologue
    const/16 v4, 0xb4

    const/16 v2, 0x5a

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1066
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    if-nez p1, :cond_4

    .line 1070
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v6

    .line 1071
    .local v6, degree:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1072
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setAudiozoombuttonstate()V

    .line 1073
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x10e

    invoke-static {v0, v6, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1075
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1076
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 1079
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0, v7, v1, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuEnable(IZZ)V

    .line 1080
    const v0, 0x7f020425

    invoke-virtual {p0, v7, v0}, Lcom/lge/camera/CamcorderMediator;->changeButtonResource(II)V

    .line 1082
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1083
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/ZoomController;->hideSettingZoomControl(Z)V

    .line 1084
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopAudiozoom()V

    .line 1085
    const v0, 0x7f0b0328

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->toast(Ljava/lang/String;)V

    .line 1122
    .end local v6           #degree:I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getHeadsetstate()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->updateAudiozoomvalue(ZI)V

    goto :goto_0

    .line 1088
    .restart local v6       #degree:I
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStartInRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStartrecordingdegree()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStartrecordingdegree()I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v4}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1095
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1096
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 1099
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1101
    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/CamcorderMediator;->startObjectTrackingFocus(IIIII)V

    .line 1104
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->startAudiozoom()V

    .line 1105
    const v0, 0x7f020426

    invoke-virtual {p0, v7, v0}, Lcom/lge/camera/CamcorderMediator;->changeButtonResource(II)V

    goto :goto_1

    .line 1109
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setAudiozoombuttonstate()V

    .line 1110
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x10e

    invoke-static {v0, v6, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1112
    :cond_b
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1113
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 1115
    :cond_c
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1116
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopAudiozoom()V

    .line 1117
    const v0, 0x7f0b0329

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->toast(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public waitSaveImageThreadDone()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->waitDone()V

    .line 628
    :cond_0
    return-void
.end method
