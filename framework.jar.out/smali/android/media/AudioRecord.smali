.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field private static final DIVERSION_FILTERS:[Ljava/lang/String; = null

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field private static final NVA_DATA_PIPE:Ljava/lang/String; = "/data/data/com.lge.pa/app_nva/audio"

.field private static final NVA_DEBUG:Z = false

.field private static final NVA_TAG:Ljava/lang/String; = "NaturalVoiceActivation"

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioRecord-Java"

.field private static final mMemoryFileSize:I = 0x500000


# instance fields
.field private mAudioFormat:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDiverted:Z

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private mF:Ljava/io/File;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFos:Ljava/io/FileOutputStream;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsRecordHooking:Z

.field private mMf:Landroid/os/MemoryFile;

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:I

.field private mNativeRecorderInJavaObj:I

.field private mPipe:Ljava/io/FileInputStream;

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mReadSize:I

.field private final mRecordHookingLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.speech.audio"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioRecord;->DIVERSION_FILTERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 12
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mDiverted:Z

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    .line 232
    const/16 v1, 0x5622

    iput v1, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 236
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 240
    const/16 v1, 0x10

    iput v1, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 244
    const/16 v1, 0x10

    iput v1, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 250
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 262
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 266
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 277
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 289
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 293
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 301
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordHookingLock:Ljava/lang/Object;

    .line 1143
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    .line 1144
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mReadSize:I

    .line 1147
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mF:Ljava/io/File;

    .line 1148
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mFos:Ljava/io/FileOutputStream;

    .line 332
    invoke-direct {p0}, Landroid/media/AudioRecord;->shouldDivert()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mDiverted:Z

    .line 336
    iget-boolean v1, p0, Landroid/media/AudioRecord;->mDiverted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioRecord;->pipeReadable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 338
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mDiverted:Z

    .line 348
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 349
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 352
    const-string v1, "AudioRecord-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord() audioSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sampleRateInHz "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channelConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioFormat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bufferSizeInBytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string/jumbo v1, "persist.sys.voice_state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recording"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v9

    .line 357
    .local v9, audioService:Landroid/media/IAudioService;
    if-eqz v9, :cond_4

    .line 358
    const-string v1, "AudioRecord-Java"

    const-string v2, "AudioRecord() voiceActivation will be start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/media/IAudioService;->sendBroadcastRecordState(I)V

    .line 360
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v9           #audioService:Landroid/media/IAudioService;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_3

    .line 372
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 375
    :cond_3
    invoke-direct/range {p0 .. p4}, Landroid/media/AudioRecord;->audioParamCheck(IIII)V

    .line 377
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 379
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->initRecordHooking(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 385
    .local v8, session:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 388
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioRecord;->mRecordSource:I

    iget v4, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioRecord;->mChannels:I

    iget v6, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;IIIII[I)I

    move-result v11

    .line 391
    .local v11, initResult:I
    if-eqz v11, :cond_5

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing native AudioRecord object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    .end local v8           #session:[I
    .end local v11           #initResult:I
    .restart local v9       #audioService:Landroid/media/IAudioService;
    :cond_4
    :try_start_1
    const-string v1, "AudioRecord-Java"

    const-string v2, "AudioRecord() audioService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 364
    .end local v9           #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v10

    .line 365
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "AudioRecord-Java"

    const-string v2, "AudioRecord() "

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 396
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v8       #session:[I
    .restart local v11       #initResult:I
    :cond_5
    const/4 v1, 0x0

    aget v1, v8, v1

    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 398
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 4
    .parameter "audioBufferSize"

    .prologue
    .line 491
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 492
    const/4 v0, 0x1

    .line 498
    .local v0, bytesPerSample:I
    :goto_0
    iget v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    mul-int v1, v2, v0

    .line 499
    .local v1, frameSizeInBytes:I
    rem-int v2, p1, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_3

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid audio buffer size."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    .end local v0           #bytesPerSample:I
    .end local v1           #frameSizeInBytes:I
    :cond_1
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 495
    const/16 v0, 0x3d

    .restart local v0       #bytesPerSample:I
    goto :goto_0

    .line 497
    .end local v0           #bytesPerSample:I
    :cond_2
    const/4 v0, 0x2

    .restart local v0       #bytesPerSample:I
    goto :goto_0

    .line 503
    .restart local v1       #frameSizeInBytes:I
    :cond_3
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 504
    return-void
.end method

.method private audioParamCheck(IIII)V
    .locals 3
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 415
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 424
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0xbb80

    if-le p2, v0, :cond_3

    .line 425
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 433
    iput p3, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 435
    sparse-switch p3, :sswitch_data_0

    .line 452
    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 453
    iput v1, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 454
    iput v1, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 440
    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 460
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 474
    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :sswitch_1
    iput v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 445
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    goto :goto_0

    .line 448
    :sswitch_2
    const/4 v0, 0x6

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 449
    const/high16 v0, 0x3f

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    goto :goto_0

    .line 462
    :sswitch_3
    iput v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 478
    :goto_1
    return-void

    .line 471
    :sswitch_4
    iput p4, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x3f0000 -> :sswitch_2
    .end sparse-switch

    .line 460
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
    .end sparse-switch
.end method

.method private checkRecordHookingCondition(II)Z
    .locals 6
    .parameter "audioSource"
    .parameter "sampleRateInHz"

    .prologue
    const/4 v3, 0x0

    .line 1289
    const/4 v2, 0x0

    .line 1290
    .local v2, state:I
    invoke-static {}, Landroid/media/AudioManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1293
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_2

    .line 1294
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRecordHookingState()I

    move-result v2

    .line 1295
    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 1296
    const-string v4, "AudioRecord-Java"

    const-string v5, "checkRecordHookingCondition() RecordHooking is not started."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :goto_0
    return v3

    .line 1298
    :cond_0
    const/4 v4, 0x6

    if-eq p1, v4, :cond_1

    .line 1299
    const-string v4, "AudioRecord-Java"

    const-string v5, "checkRecordHookingCondition() audioSource is not recognition."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioRecord-Java"

    const-string v5, "checkRecordHookingCondition() Dead object in checkRecordHookingCondition"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1301
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v4, 0x1f40

    if-eq p2, v4, :cond_3

    .line 1302
    :try_start_1
    const-string v4, "AudioRecord-Java"

    const-string v5, "checkRecordHookingCondition() sampleRateInHz is not LGE voice recognition."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_2
    const-string v4, "AudioRecord-Java"

    const-string v5, "checkRecordHookingCondition() AudioRecord() service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1312
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 657
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 646
    :sswitch_0
    const/4 v0, 0x1

    .line 662
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    const/16 v4, 0x64

    if-eq p2, v4, :cond_1

    const/16 v4, 0x65

    if-eq p2, v4, :cond_1

    const/16 v4, 0x66

    if-eq p2, v4, :cond_1

    const/16 v4, 0x67

    if-eq p2, v4, :cond_1

    const/16 v4, 0x68

    if-eq p2, v4, :cond_1

    .line 668
    const-string v3, "getMinBufferSize(): Invalid audio format."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 669
    goto :goto_0

    .line 650
    :sswitch_1
    const/4 v0, 0x2

    .line 651
    goto :goto_1

    .line 653
    :sswitch_2
    const/4 v0, 0x6

    .line 654
    goto :goto_1

    .line 672
    :cond_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 673
    .local v1, size:I
    if-nez v1, :cond_2

    move v1, v2

    .line 674
    goto :goto_0

    .line 676
    :cond_2
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 677
    goto :goto_0

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x3f0000 -> :sswitch_2
    .end sparse-switch
.end method

.method private initRecordHooking(II)Z
    .locals 10
    .parameter "audioSource"
    .parameter "sampleRateInHz"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1152
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->checkRecordHookingCondition(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1189
    :goto_0
    return v4

    .line 1156
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v6, v7}, Landroid/media/AudioSystem;->getHeapFD(II)Ljava/io/FileDescriptor;

    move-result-object v6

    iput-object v6, p0, Landroid/media/AudioRecord;->mFd:Ljava/io/FileDescriptor;

    .line 1157
    new-instance v6, Landroid/os/MemoryFile;

    iget-object v7, p0, Landroid/media/AudioRecord;->mFd:Ljava/io/FileDescriptor;

    const/high16 v8, 0x50

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/os/MemoryFile;-><init>(Ljava/io/FileDescriptor;II)V

    iput-object v6, p0, Landroid/media/AudioRecord;->mMf:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    iput-boolean v5, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    .line 1173
    iput v5, p0, Landroid/media/AudioRecord;->mState:I

    .line 1174
    const-string v6, "AudioRecHook_HookingSize"

    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/media/AudioRecord;->mReadSize:I

    .line 1176
    const-string v6, "Audio record hooking is initialized!!"

    invoke-static {v6}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v6, "persist.sys.record_dump"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1180
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/"

    const-string v6, "dump_audio_record-java.pcm"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .local v2, mF:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1183
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v4, p0, Landroid/media/AudioRecord;->mFos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2           #mF:Ljava/io/File;
    :cond_1
    :goto_1
    move v4, v5

    .line 1189
    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initRecordHooking() Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 1160
    invoke-static {}, Landroid/media/AudioManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v3

    .line 1162
    .local v3, service:Landroid/media/IAudioService;
    if-eqz v3, :cond_2

    .line 1163
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v3, v5, v6}, Landroid/media/IAudioService;->setRecordHookingState(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1167
    :catch_1
    move-exception v1

    .line 1168
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "AudioRecord-Java"

    const-string v6, "initRecordHooking() Dead object in initRecordHooking"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1165
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v5, "AudioRecord-Java"

    const-string v6, "initRecordHooking() AudioRecord() service is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1184
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #service:Landroid/media/IAudioService;
    .restart local v2       #mF:Ljava/io/File;
    :catch_2
    move-exception v0

    .line 1185
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1130
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1134
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIII[I)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private pipeClose()V
    .locals 2

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private pipeOpen()Z
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0}, Landroid/media/AudioRecord;->pipeClose()V

    .line 113
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/data/data/com.lge.pa/app_nva/audio"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pipeReadable()Z
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.lge.pa/app_nva/audio"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiorecord_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1077
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 1078
    .local v1, recorder:Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 1083
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1085
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private read([BIII)I
    .locals 11
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"
    .parameter "flag"

    .prologue
    .line 1193
    const/4 v4, 0x0

    .line 1194
    .local v4, ret:I
    iget-object v8, p0, Landroid/media/AudioRecord;->mRecordHookingLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1195
    :try_start_0
    iget v7, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_0

    .line 1196
    const/4 v7, -0x3

    monitor-exit v8

    .line 1247
    :goto_0
    return v7

    .line 1199
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v7, p2, p3

    array-length v9, p1

    if-le v7, v9, :cond_2

    .line 1201
    :cond_1
    const/4 v7, -0x2

    monitor-exit v8

    goto :goto_0

    .line 1233
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1204
    :cond_2
    :try_start_1
    iget v7, p0, Landroid/media/AudioRecord;->mReadSize:I

    add-int/2addr v7, p3

    const/high16 v9, 0x50

    if-le v7, v9, :cond_3

    .line 1205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end of memory file. sizeInByte set "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/high16 v9, 0x50

    iget v10, p0, Landroid/media/AudioRecord;->mReadSize:I

    rem-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 1206
    const/high16 v7, 0x50

    iget v9, p0, Landroid/media/AudioRecord;->mReadSize:I

    rem-int p3, v7, v9

    .line 1209
    :cond_3
    const-string v7, "AudioRecHook_TotalHookingSize"

    invoke-static {v7}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1210
    .local v6, totalReadSize:I
    const/4 v5, 0x0

    .line 1211
    .local v5, totalDumpSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v7, 0x5

    if-ge v2, v7, :cond_5

    .line 1212
    const-string v7, "AudioRecHook_ReadSize"

    invoke-static {v7}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 1213
    add-int v7, v6, p3

    if-le v5, v7, :cond_7

    .line 1215
    :try_start_2
    iget-object v7, p0, Landroid/media/AudioRecord;->mMf:Landroid/os/MemoryFile;

    iget v9, p0, Landroid/media/AudioRecord;->mReadSize:I

    invoke-virtual {v7, p1, v9, p2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v4

    .line 1216
    iget v7, p0, Landroid/media/AudioRecord;->mReadSize:I

    add-int/2addr v7, v4

    iput v7, p0, Landroid/media/AudioRecord;->mReadSize:I

    .line 1217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read hooking data. audioData.length = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v9, p1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " offsetInBytes = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " sizeInBytes = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ret = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mReadSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/media/AudioRecord;->mReadSize:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 1218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioRecHook_HookingSize="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1219
    iget v7, p0, Landroid/media/AudioRecord;->mReadSize:I

    const/high16 v9, 0x50

    if-ne v7, v9, :cond_4

    .line 1220
    const/4 v7, 0x0

    iput v7, p0, Landroid/media/AudioRecord;->mReadSize:I

    .line 1221
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v9, 0xa

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1233
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1235
    const-string/jumbo v7, "persist.sys.record_dump"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1237
    :try_start_4
    iget-object v7, p0, Landroid/media/AudioRecord;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v7, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read() save to /data/dump_audio_record-java.pcm, (size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_3
    move v7, v4

    .line 1247
    goto/16 :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "AudioRecord-Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read fail Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1227
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hooking size(From AudioFlinger) is not enough. Waitting for 20msec. retry = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1229
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v9, 0x14

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1211
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1239
    :catch_1
    move-exception v1

    .line 1240
    .local v1, fe:Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump write fail!! fe = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1241
    .end local v1           #fe:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 1242
    .local v3, ie:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump write fail!! ie = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1230
    .end local v3           #ie:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method private readPipe([BII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    const/4 v1, -0x1

    .line 137
    iget-object v2, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return v1

    .line 142
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioRecord;->mPipe:Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    .local v1, nReaded:I
    goto :goto_0

    .line 144
    .end local v1           #nReaded:I
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseRecordHooking()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1251
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    if-nez v3, :cond_0

    .line 1285
    :goto_0
    return v2

    .line 1254
    :cond_0
    const-string/jumbo v3, "releaseRecordHooking() release for recordHooking"

    invoke-static {v3}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 1256
    iget-object v3, p0, Landroid/media/AudioRecord;->mRecordHookingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1257
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getAudioService()Landroid/media/IAudioService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1259
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_4

    .line 1260
    :try_start_1
    invoke-interface {v1}, Landroid/media/IAudioService;->getRecordHookingState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1261
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/media/IAudioService;->setRecordHookingState(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1270
    :cond_1
    :goto_1
    :try_start_2
    iget-object v4, p0, Landroid/media/AudioRecord;->mMf:Landroid/os/MemoryFile;

    if-eqz v4, :cond_2

    .line 1271
    iget-object v4, p0, Landroid/media/AudioRecord;->mMf:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    .line 1273
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    .line 1274
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/AudioRecord;->mState:I

    .line 1275
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1277
    const-string/jumbo v3, "persist.sys.record_dump"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1279
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioRecord;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1285
    :cond_3
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1264
    :cond_4
    :try_start_4
    const-string v4, "AudioRecord-Java"

    const-string/jumbo v5, "releaseRecordHooking() AudioRecord() service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "AudioRecord-Java"

    const-string/jumbo v5, "releaseRecordHooking() Dead object in releaseRecordHooking"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1268
    monitor-exit v3

    goto :goto_0

    .line 1275
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Landroid/media/IAudioService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 1280
    .restart local v1       #service:Landroid/media/IAudioService;
    :catch_1
    move-exception v0

    .line 1281
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFos close fail!! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private shouldDivert()Z
    .locals 7

    .prologue
    .line 85
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, fromClass:Ljava/lang/String;
    sget-object v0, Landroid/media/AudioRecord;->DIVERSION_FILTERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 90
    .local v1, f:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const/4 v5, 0x1

    .line 94
    .end local v1           #f:Ljava/lang/String;
    :goto_1
    return v5

    .line 89
    .restart local v1       #f:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v1           #f:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_finalize()V

    .line 540
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "audioBuffer"
    .parameter "sizeInBytes"

    .prologue
    .line 923
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 924
    const/4 v0, -0x3

    .line 931
    :goto_0
    return v0

    .line 927
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_2

    .line 928
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 931
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    .line 858
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    if-eqz v0, :cond_1

    .line 859
    const-string v0, "audiorecording_state"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    .line 884
    :goto_0
    return v0

    .line 862
    :cond_0
    const-string/jumbo v0, "read() RecordHooking is enable. But recordThread is not active state."

    invoke-static {v0}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 863
    const/4 v0, -0x1

    goto :goto_0

    .line 868
    :cond_1
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 869
    const/4 v0, -0x3

    goto :goto_0

    .line 872
    :cond_2
    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 874
    :cond_3
    const/4 v0, -0x2

    goto :goto_0

    .line 879
    :cond_4
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mDiverted:Z

    if-eqz v0, :cond_5

    .line 880
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->readPipe([BII)I

    move-result v0

    goto :goto_0

    .line 884
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([SII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    .line 899
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 900
    const/4 v0, -0x3

    .line 908
    :goto_0
    return v0

    .line 903
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 905
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 908
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->releaseRecordHooking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    :goto_1
    return-void

    .line 525
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mDiverted:Z

    if-eqz v0, :cond_1

    .line 526
    iput-boolean v1, p0, Landroid/media/AudioRecord;->mDiverted:Z

    .line 533
    :goto_2
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_1

    .line 528
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    goto :goto_2

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .parameter "markerInFrames"

    .prologue
    .line 985
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .parameter "periodInFrames"

    .prologue
    .line 997
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 945
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 957
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 961
    if-eqz p1, :cond_1

    .line 962
    if-eqz p2, :cond_0

    .line 963
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 971
    :goto_0
    monitor-exit v1

    .line 973
    return-void

    .line 966
    :cond_0
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 969
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x3

    .line 702
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v3, :cond_0

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    if-eqz v0, :cond_2

    .line 708
    const-string/jumbo v0, "startRecording()"

    invoke-static {v0}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 709
    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 714
    :cond_2
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mDiverted:Z

    if-eqz v0, :cond_4

    .line 718
    invoke-direct {p0}, Landroid/media/AudioRecord;->pipeOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 728
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/cappuccino/IMdm;->checkAllowMicrophone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 734
    iput v3, p0, Landroid/media/AudioRecord;->mRecordingState:I

    goto :goto_0

    .line 722
    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_3

    .line 723
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    goto :goto_1

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 6
    .parameter "syncEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 748
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v2, v5, :cond_0

    .line 749
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 753
    :cond_0
    iget-boolean v2, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    if-eqz v2, :cond_3

    .line 754
    const-string/jumbo v2, "startRecording() syncEvent"

    invoke-static {v2}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 755
    invoke-static {}, Landroid/media/AudioManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    .line 757
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_2

    .line 758
    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->setRecordHookingState(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    iput v4, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 794
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_1
    :goto_1
    return-void

    .line 760
    .restart local v1       #service:Landroid/media/IAudioService;
    :cond_2
    :try_start_1
    const-string v2, "AudioRecord-Java"

    const-string/jumbo v3, "releaseRecordHooking() AudioRecord() service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioRecord-Java"

    const-string/jumbo v3, "releaseRecordHooking() Dead object in releaseRecordHooking"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 771
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_3
    iget-object v3, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 774
    :try_start_2
    iget-boolean v2, p0, Landroid/media/AudioRecord;->mDiverted:Z

    if-eqz v2, :cond_5

    .line 775
    invoke-direct {p0}, Landroid/media/AudioRecord;->pipeOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 776
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 785
    :cond_4
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cappuccino/IMdm;->checkAllowMicrophone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 791
    iput v5, p0, Landroid/media/AudioRecord;->mRecordingState:I

    goto :goto_1

    .line 780
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v4

    invoke-direct {p0, v2, v4}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v2

    if-nez v2, :cond_4

    .line 781
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioRecord;->mRecordingState:I

    goto :goto_2

    .line 785
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 802
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v2, v3, :cond_0

    .line 803
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    :cond_0
    iget-boolean v2, p0, Landroid/media/AudioRecord;->mIsRecordHooking:Z

    if-eqz v2, :cond_1

    .line 807
    iput v3, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 840
    :goto_0
    return-void

    .line 813
    :cond_1
    const-string v2, "AudioRecord-Java"

    const-string/jumbo v3, "stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string/jumbo v2, "persist.sys.voice_state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recording"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 816
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 817
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_3

    .line 818
    const-string v2, "AudioRecord-Java"

    const-string/jumbo v3, "stop() VoiceActivation will be stop."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/media/IAudioService;->sendBroadcastRecordState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 833
    :try_start_1
    iget-boolean v2, p0, Landroid/media/AudioRecord;->mDiverted:Z

    if-eqz v2, :cond_4

    .line 834
    invoke-direct {p0}, Landroid/media/AudioRecord;->pipeClose()V

    .line 838
    :goto_2
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 839
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 821
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :cond_3
    :try_start_2
    const-string v2, "AudioRecord-Java"

    const-string/jumbo v3, "stop() audioService is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 823
    .end local v0           #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 824
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AudioRecord-Java"

    const-string/jumbo v3, "stop() "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 836
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
