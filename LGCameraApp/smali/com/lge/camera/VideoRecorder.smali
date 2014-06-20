.class public Lcom/lge/camera/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0x6ddd00

.field public static final MMS:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final MMS_DURATION:I = 0x0

.field public static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static final VALUE_VIDEO_FPS:I = 0x1e

.field private static final VALUE_VIDEO_FPS_MMS:I = 0xf

.field private static mCameraDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInitialized:Z

.field private static mIsRecording:Z

.field private static mMaxFileSize:J

.field private static mMediaRecorder:Landroid/media/MediaRecorder;

.field private static mOrientationHint:I

.field private static mPurpose:I

.field private static mVideoFile:Lcom/lge/camera/VideoFile;

.field private static maxDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 30
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 31
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 32
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 33
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 34
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    .line 35
    sput v2, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 38
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMMSMaxDuration()I

    move-result v0

    sput v0, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    .line 41
    sput v2, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioZoomLevelMeter()I
    .locals 4

    .prologue
    .line 469
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f69008205ff1d82L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxFileSize()J
    .locals 2

    .prologue
    .line 441
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    return-wide v0
.end method

.method public static getOrientationHint()I
    .locals 1

    .prologue
    .line 437
    sget v0, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    return v0
.end method

.method public static init(Lcom/lge/camera/ControllerFunction;)Landroid/media/MediaRecorder;
    .locals 18
    .parameter "function"

    .prologue
    .line 109
    const/4 v5, 0x0

    .line 111
    .local v5, pref:Lcom/lge/camera/setting/ListPreference;
    const-string v13, "CameraApp"

    const-string v14, "Camcorder(MediaRecorder) init()-start"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-boolean v13, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-nez v13, :cond_a

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->checkSurfaceHolder()Z

    move-result v13

    if-nez v13, :cond_0

    .line 115
    const-string v13, "CameraApp"

    const-string v14, "Surface holder is null. Wait for surface changed."

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v13, 0x0

    .line 292
    :goto_0
    return-object v13

    .line 119
    :cond_0
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v13, :cond_1

    .line 120
    const-string v13, "CameraApp"

    const-string v14, "Camcorder new MediaRecorder()"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v13, Landroid/media/MediaRecorder;

    invoke-direct {v13}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 124
    :cond_1
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v13, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 125
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;

    .line 126
    .local v1, camera:Landroid/hardware/Camera;
    if-eqz v1, :cond_b

    .line 127
    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 131
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 133
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v6

    .line 134
    .local v6, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v6, :cond_2

    .line 135
    const-string v13, "key_video_audio_recording"

    invoke-virtual {v6, v13}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 138
    :cond_2
    if-eqz v5, :cond_c

    const-string v13, "mute"

    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 139
    const-string v13, "CameraApp"

    const-string v14, "AUDIO is mute"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 146
    sget v13, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 147
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 152
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordLocation()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 153
    .local v4, loc:Landroid/location/Location;
    :goto_3
    if-eqz v4, :cond_3

    .line 154
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 157
    :cond_3
    const/4 v12, 0x0

    .line 158
    .local v12, videoSize:Ljava/lang/String;
    const/4 v10, 0x0

    .line 159
    .local v10, size:[I
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 160
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v12

    .line 163
    :cond_4
    if-eqz v12, :cond_f

    .line 164
    invoke-static {v12}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v10

    .line 165
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x0

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 166
    const-string v13, "CameraApp"

    const-string v14, "setVideoSize width = %d , hegiht = %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_4
    if-eqz v6, :cond_5

    .line 172
    const-string v13, "key_preview_size_on_device"

    invoke-virtual {v6, v13}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 176
    :cond_5
    const-string v9, "off"

    .line 177
    .local v9, sVideoFps:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 178
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v9

    .line 181
    :cond_6
    const/4 v3, 0x0

    .line 183
    .local v3, iVideoBitrate:I
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    invoke-static {v13, v10}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v8

    .line 184
    .local v8, quality:I
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    invoke-static {v13, v8}, Lcom/lge/camera/properties/MultimediaProperties;->getBitrate(II)I

    move-result v7

    .line 186
    .local v7, profileBitrate:I
    const-string v13, "CameraApp"

    const-string v14, "VideoRecorder-Init : Preference bitrate is larger than profile bitrate."

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VideoRecorder-Init : Preference bitrate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Profile bitrate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move v3, v7

    .line 190
    sget v13, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    .line 191
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v14, 0x1f400

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 192
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 193
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v14, 0x1e

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 210
    :goto_5
    if-eqz v6, :cond_7

    .line 211
    const-string v13, "key_video_audio_recording"

    invoke-virtual {v6, v13}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 213
    :cond_7
    if-eqz v5, :cond_13

    const-string v13, "mute"

    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 214
    const-string v13, "CameraApp"

    const-string v14, "AUDIO REC OFF -> Audio Encorder NOT SET"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_6
    sget v13, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_16

    .line 236
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMmsVideoEncodingType()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 246
    :goto_7
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget-wide v14, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 248
    sget v13, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_19

    .line 249
    const v13, 0x6ddd00

    sput v13, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 250
    sget v13, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_18

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->needProgressBar()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 252
    :cond_8
    sget v13, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    sput v13, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 264
    :cond_9
    :goto_8
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v14, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 265
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 266
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v14, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 268
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v11

    .line 269
    .local v11, videoFile:Lcom/lge/camera/VideoFile;
    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Lcom/lge/camera/VideoFile;->isInitialized()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 270
    sput-object v11, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 271
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v11}, Lcom/lge/camera/VideoFile;->getFileExternalPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 274
    :try_start_0
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13}, Landroid/media/MediaRecorder;->prepare()V

    .line 275
    const-string v13, "CameraApp"

    const-string v14, "Media recorder initialized."

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v13, 0x1

    sput-boolean v13, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 277
    const-string v13, "CameraApp"

    const-string v14, "RECORDER_INIT_DONE"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    .end local v1           #camera:Landroid/hardware/Camera;
    .end local v3           #iVideoBitrate:I
    .end local v4           #loc:Landroid/location/Location;
    .end local v6           #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    .end local v7           #profileBitrate:I
    .end local v8           #quality:I
    .end local v9           #sVideoFps:Ljava/lang/String;
    .end local v10           #size:[I
    .end local v11           #videoFile:Lcom/lge/camera/VideoFile;
    .end local v12           #videoSize:Ljava/lang/String;
    :cond_a
    :goto_9
    const-string v13, "CameraApp"

    const-string v14, "Camcorder(MediaRecorder) init()-end"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_0

    .line 129
    .restart local v1       #camera:Landroid/hardware/Camera;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v6       #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    :cond_c
    const-string v13, "CameraApp"

    const-string v14, "AUDIO is unmute"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto/16 :goto_1

    .line 149
    :cond_d
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_2

    .line 152
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 168
    .restart local v4       #loc:Landroid/location/Location;
    .restart local v10       #size:[I
    .restart local v12       #videoSize:Ljava/lang/String;
    :cond_f
    const-string v13, "CameraApp"

    const-string v14, "error!! videoSize is null"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 195
    .restart local v3       #iVideoBitrate:I
    .restart local v7       #profileBitrate:I
    .restart local v8       #quality:I
    .restart local v9       #sVideoFps:Ljava/lang/String;
    :cond_10
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 198
    :cond_11
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    if-nez v13, :cond_12

    const-string v13, "recordmode_normal"

    const-string v14, "key_video_record_mode"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "off"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 202
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 203
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    invoke-static {v13, v8}, Lcom/lge/camera/properties/MultimediaProperties;->getHFRBitrate(II)I

    move-result v3

    .line 207
    :goto_a
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_5

    .line 205
    :cond_12
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v14, 0x1e

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_a

    .line 216
    :cond_13
    sget v13, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_15

    .line 217
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMmsAudioEncodingType()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 219
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMmsAudioEncodingType()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_14

    .line 220
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v14, 0xbb80

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 221
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 222
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v14, 0x1f40

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 232
    :cond_14
    :goto_b
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 225
    :cond_15
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 226
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 227
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v14, 0xbb80

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 228
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 229
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v14, 0x5622

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_b

    .line 238
    :cond_16
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 239
    const-string v13, "CameraApp"

    const-string v14, "setVideoEncoder => MediaRecorder.VideoEncoder.MPEG_4_SP"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_7

    .line 242
    :cond_17
    sget-object v13, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_7

    .line 253
    :cond_18
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    .line 254
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v13

    long-to-int v13, v13

    sput v13, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_8

    .line 257
    :cond_19
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1a

    .line 258
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v13

    long-to-int v13, v13

    sput v13, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_8

    .line 260
    :cond_1a
    const v13, 0x6ddd00

    sput v13, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_8

    .line 278
    .restart local v11       #videoFile:Lcom/lge/camera/VideoFile;
    :catch_0
    move-exception v2

    .line 279
    .local v2, exception:Ljava/lang/IllegalStateException;
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IllegalStateException in init recorder prepare : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_9

    .line 281
    .end local v2           #exception:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 282
    .local v2, exception:Ljava/io/IOException;
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "recorder prepare error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "prepare failed ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_9

    .line 287
    .end local v2           #exception:Ljava/io/IOException;
    :cond_1b
    const-string v13, "CameraApp"

    const-string v14, "Video file not ready!"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_9
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    return v0
.end method

.method public static pause()V
    .locals 3

    .prologue
    .line 333
    const-string v1, "CameraApp"

    const-string v2, "Camcorder pause()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const-string v1, "CameraApp"

    const-string v2, "Model not supported pause and resume."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 338
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_1

    .line 340
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording start - mMediaRecorder.pause()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Lcom/lge/camera/platform/PlatformDevice;->videoPause(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "Camcorder pause()-end."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 343
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 344
    const-string v1, "CameraApp"

    const-string v2, "error recording pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v1, :cond_2

    .line 346
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 348
    :cond_2
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    goto :goto_1
.end method

.method public static declared-synchronized release()V
    .locals 6

    .prologue
    .line 378
    const-class v3, Lcom/lge/camera/VideoRecorder;

    monitor-enter v3

    :try_start_0
    const-string v2, "CameraApp"

    const-string v4, "Camcorder release()-start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    .line 380
    sget-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 382
    :try_start_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->stop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    .local v1, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_2
    const-string v2, "CameraApp"

    const-string v4, "Release MediaRecorder start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 401
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 402
    const-string v2, "CameraApp"

    const-string v4, "Release MediaRecorder end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, "CameraApp"

    const-string v4, "UNLOCK CAMERA"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    .end local v1           #e:Ljava/lang/Exception;
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    .line 409
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 411
    const-string v2, "CameraApp"

    const-string v4, "### mCameraDevice.reconnect()"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 421
    :cond_1
    :goto_1
    :try_start_4
    const-string v2, "CameraApp"

    const-string v4, "camera reconnected"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 425
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 426
    const-string v2, "CameraApp"

    const-string v4, "Camcorder release()-end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 427
    monitor-exit v3

    return-void

    .line 383
    .end local v0           #camera:Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 384
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] stop Exception !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v2, :cond_0

    .line 387
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] videoFile delete !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->deleteFile()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 393
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_6
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 394
    :catch_1
    move-exception v1

    .line 395
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] stop Exception !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #camera:Landroid/hardware/Camera;
    :catch_2
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCameraDevice.get().lock() or reconnect() RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 418
    .local v1, e:Ljava/io/IOException;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public static resume()V
    .locals 3

    .prologue
    .line 355
    const-string v1, "CameraApp"

    const-string v2, "Camcorder resume()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    const-string v1, "CameraApp"

    const-string v2, "Model not supported pause and resume."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 361
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_1

    .line 363
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording resume - mMediaRecorder.resume()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Lcom/lge/camera/platform/PlatformDevice;->videoResume(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "Camcorder resume()-end."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 366
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 367
    const-string v1, "CameraApp"

    const-string v2, "error recording pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v1, :cond_2

    .line 369
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 371
    :cond_2
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    goto :goto_1
.end method

.method public static setAudiozoom(II)V
    .locals 1
    .parameter "zoomAngle"
    .parameter "mode"

    .prologue
    .line 451
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRecorder;->setRecordZoomEnable(II)V

    .line 454
    :cond_0
    return-void
.end method

.method public static setAudiozoomException()V
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->setAudioZoomExceptionCase()V

    .line 466
    :cond_0
    return-void
.end method

.method public static setAudiozoommetadata()V
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->setAudioZooming()V

    .line 448
    :cond_0
    return-void
.end method

.method public static setErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 52
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 61
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMaxDuration(Z)V
    .locals 1
    .parameter "isMMS"

    .prologue
    .line 105
    if-eqz p0, :cond_0

    sget v0, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    :goto_0
    sput v0, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setMaxFileSize(JJI)Z
    .locals 6
    .parameter "maxFileSize"
    .parameter "freeSpace"
    .parameter "storage"

    .prologue
    const-wide/16 v4, 0x0

    .line 79
    sput-wide p0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 80
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 81
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sub-long v0, p2, v0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 83
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 87
    :cond_0
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 88
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 90
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freeSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 96
    :cond_1
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 97
    sput-wide p2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 100
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freeSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setOrientationHint(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 430
    if-gez p0, :cond_0

    .line 431
    const/4 p0, 0x0

    .line 433
    :cond_0
    sput p0, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    .line 434
    return-void
.end method

.method public static setVideoSize(I)Z
    .locals 1
    .parameter "purpose"

    .prologue
    .line 71
    sput p0, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public static start()Z
    .locals 4

    .prologue
    .line 296
    const-string v1, "CameraApp"

    const-string v2, "Camcorder start()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording start - mMediaRecorder.start()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 301
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .local v0, e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder start()-end, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    return v1

    .line 302
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 303
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 304
    const-string v1, "CameraApp"

    const-string v2, "error recording start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v1, :cond_1

    .line 306
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 308
    :cond_1
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    goto :goto_0
.end method

.method public static stop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    const-string v0, "CameraApp"

    const-string v3, "Camcorder stop()-start"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "CameraApp"

    const-string v3, "##### video recording stop - mMediaRecorder.stop()"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 320
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 321
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 322
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    .line 323
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 324
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 326
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 328
    :cond_0
    const-string v3, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder stop()-end, return "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 328
    goto :goto_0

    :cond_2
    move v1, v2

    .line 329
    goto :goto_1
.end method

.method public static updateAudiozoom(I)V
    .locals 1
    .parameter "zoomAngle"

    .prologue
    .line 457
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setRecordAngle(I)V

    .line 460
    :cond_0
    return-void
.end method
