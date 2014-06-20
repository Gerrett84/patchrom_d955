.class public Landroid/media/AudioPlaybackHook;
.super Ljava/lang/Object;
.source "AudioPlaybackHook.java"


# static fields
.field private static final AUDIOBHOOK_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIOBHOOK_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIOBHOOK_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIOBHOOK_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIOBHOOK_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final STATE_HOOKING:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioHook-Java"


# instance fields
.field private mBufferSize:I

.field private mFlags:I

.field private mNativeCallbackCookie:I

.field private mNativeHookInJavaObj:I

.field private mState:I

.field private mStateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .parameter "bufferSize"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v1, 0x1000

    iput v1, p0, Landroid/media/AudioPlaybackHook;->mBufferSize:I

    .line 91
    iput v2, p0, Landroid/media/AudioPlaybackHook;->mFlags:I

    .line 93
    iput v2, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    .line 99
    iput p1, p0, Landroid/media/AudioPlaybackHook;->mBufferSize:I

    .line 100
    iput p2, p0, Landroid/media/AudioPlaybackHook;->mFlags:I

    .line 101
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Landroid/media/AudioPlaybackHook;->native_setup(Ljava/lang/Object;II)I

    move-result v0

    .line 102
    .local v0, initResult:I
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing native AudioHook object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioPlaybackHook;->loge(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 109
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native bufferSize(I)I
.end method

.method public static native getMixerOutput()I
.end method

.method public static native getMixerOutputFormat(I)I
.end method

.method public static native getMixerSampleRate(I)I
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 203
    const-string v0, "AudioHook-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioPlaybackHook ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 207
    const-string v0, "AudioHook-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioPlaybackHook ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;II)I
.end method

.method private final native native_start()I
.end method

.method private final native native_stop()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_finalize()V

    .line 130
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/media/AudioPlaybackHook;->mBufferSize:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/media/AudioPlaybackHook;->mFlags:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioPlaybackHook;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    iget-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_release()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_start()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 167
    :cond_0
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_stop()V

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 182
    monitor-exit v1

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
