.class Landroid/media/SmartRingtone;
.super Ljava/lang/Object;
.source "SmartRingtone.java"


# static fields
.field private static LGE_DEBUG:Z = false

.field private static final NUM_MAX_FRAMES:I = 0xf

.field private static final SAMPLE_RATE:I = 0xac44

.field private static TAG:Ljava/lang/String; = null

.field private static final filtDen:S = -0x60e4s

.field private static final filtNum:[S

.field private static mNoiseAverage:I

.field private static smart_ringtone_level_1:I

.field private static smart_ringtone_level_2:I

.field private static smart_ringtone_level_3:I

.field private static smart_ringtone_level_4:I

.field private static smart_ringtone_level_vib_1:I

.field private static smart_ringtone_level_vib_2:I

.field private static smart_ringtone_level_vib_3:I

.field private static smart_ringtone_level_vib_4:I


# instance fields
.field arec:Landroid/media/AudioRecord;

.field buffer:[S

.field buffersize:I

.field private mAdjustVolume:I

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedVolumeUpHandler:Landroid/os/Handler;

.field private mExitThread:Z

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsFromPhoneApp:Z

.field private mMicTestDone:Z

.field private mPrevVolume:I

.field private mSmartRingtoneLevel:I

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    const-string v2, "SmartRingtone"

    sput-object v2, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    .line 43
    sput v1, Landroid/media/SmartRingtone;->mNoiseAverage:I

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/SmartRingtone;->filtNum:[S

    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0

    .line 48
    :array_0
    .array-data 0x2
        0x71t 0x70t
        0x8ft 0x8ft
    .end array-data
.end method

.method public constructor <init>(Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 3
    .parameter "manager"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    .line 31
    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 32
    iput v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/SmartRingtone;->mStreamType:I

    .line 60
    iput-object v1, p0, Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Landroid/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    .line 64
    iput-object p1, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iput-object p2, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    .line 67
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext.toString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTECallApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTelephony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 75
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    .line 77
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_1:I

    .line 78
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_2:I

    .line 79
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_3:I

    .line 80
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_4:I

    .line 81
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    .line 82
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    .line 83
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    .line 84
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    .line 86
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_3

    .line 87
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "level_4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "level_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "level_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "level_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/SmartRingtone;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000()[S
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/media/SmartRingtone;->filtNum:[S

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 22
    sget v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    sput p0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return p0
.end method

.method static synthetic access$1112(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    sget v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    add-int/2addr v0, p0

    sput v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$1136(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    sget v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    div-int/2addr v0, p0

    sput v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$1200(Landroid/media/SmartRingtone;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/SmartRingtone;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/SmartRingtone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/SmartRingtone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Landroid/media/SmartRingtone;->mStreamType:I

    return v0
.end method

.method static synthetic access$500(Landroid/media/SmartRingtone;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/SmartRingtone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/media/SmartRingtone;->setSmartRingtoneLevel()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Landroid/media/SmartRingtone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mExitThread:Z

    return v0
.end method

.method private calculateSmartRingtoneLevel(I)V
    .locals 9
    .parameter "noise"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIBRATE_WHEN_RINGING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    if-lt p1, v0, :cond_1

    .line 293
    iput v8, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    if-lt p1, v0, :cond_2

    .line 295
    iput v7, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 296
    :cond_2
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    if-lt p1, v0, :cond_3

    .line 297
    iput v6, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 298
    :cond_3
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    if-lt p1, v0, :cond_0

    .line 299
    iput v5, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 302
    :cond_4
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_4:I

    if-lt p1, v0, :cond_5

    .line 303
    iput v8, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 304
    :cond_5
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_3:I

    if-lt p1, v0, :cond_6

    .line 305
    iput v7, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 306
    :cond_6
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_2:I

    if-lt p1, v0, :cond_7

    .line 307
    iput v6, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 308
    :cond_7
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_1:I

    if-lt p1, v0, :cond_0

    .line 309
    iput v5, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0
.end method

.method private setSmartRingtoneLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x2

    .line 316
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    .line 322
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    iput v3, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_0

    .line 327
    :cond_1
    iget v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    iput v0, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_0
.end method


# virtual methods
.method public onExitRecordingLoop()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mExitThread:Z

    .line 334
    return-void
.end method

.method public onNoiseEstimation()V
    .locals 8

    .prologue
    const v3, 0xac44

    const/16 v7, 0x140

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 118
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    if-eq v0, v2, :cond_0

    .line 122
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getSmartRingtoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    .line 130
    :cond_2
    iget-object v0, p0, Landroid/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    if-eqz v0, :cond_3

    .line 131
    new-instance v0, Landroid/media/SmartRingtone$2;

    invoke-direct {v0, p0}, Landroid/media/SmartRingtone$2;-><init>(Landroid/media/SmartRingtone;)V

    iput-object v0, p0, Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 158
    :cond_3
    iput-boolean v2, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mExitThread:Z

    .line 161
    invoke-static {v3, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Landroid/media/SmartRingtone;->buffersize:I

    .line 165
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 166
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "Process doesn\'t have RECORD_AUDIO permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_4
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Landroid/media/SmartRingtone;->buffersize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_5

    .line 183
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "arec AudioRecord.STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    goto :goto_0

    .line 176
    :catch_0
    move-exception v6

    .line 177
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "smart ringtone caught "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 189
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :cond_5
    iget v0, p0, Landroid/media/SmartRingtone;->buffersize:I

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/media/SmartRingtone;->buffer:[S

    .line 190
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 192
    iget v0, p0, Landroid/media/SmartRingtone;->buffersize:I

    if-le v0, v7, :cond_6

    .line 193
    iput v7, p0, Landroid/media/SmartRingtone;->buffersize:I

    .line 196
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/SmartRingtone$3;

    invoke-direct {v1, p0}, Landroid/media/SmartRingtone$3;-><init>(Landroid/media/SmartRingtone;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public declared-synchronized restoreVolumeAfterStop()V
    .locals 4

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    iget v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 344
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    iget v2, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    const/16 v3, 0x280

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 347
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "player"

    .prologue
    .line 105
    iput-object p1, p0, Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    .line 106
    iget v0, p0, Landroid/media/SmartRingtone;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/SmartRingtone$1;

    invoke-direct {v1, p0}, Landroid/media/SmartRingtone$1;-><init>(Landroid/media/SmartRingtone;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 99
    iput p1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    .line 100
    return-void
.end method
