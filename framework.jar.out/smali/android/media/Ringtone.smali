.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final CUPSS_ALARM_FILEPATH:Ljava/lang/String; = null

.field private static final CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String; = null

.field private static final CUPSS_RINGTONE_FILEPATH:Ljava/lang/String; = null

.field public static final DEFAULT_ALARMS_FILEPATH:Ljava/lang/String; = null

.field public static final DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String; = null

.field public static final DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String; = null

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field private static final ERROR_CHECK_INIT:I = 0x0

.field private static final ERROR_CHECK_SETDEFAULT:I = 0x2

.field private static final ERROR_CHECK_START:I = 0x1

.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Ringtone"


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mAllowRemote:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDrmPath:Ljava/lang/String;

.field private mErrorCheck:I

.field private mIsSmartRingtoneOnNoiseEstimation:Z

.field private mIsSoundException:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mSmartRingtone:Landroid/media/SmartRingtone;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "allowRemote"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 89
    iput-object v2, p0, Landroid/media/Ringtone;->mDrmPath:Ljava/lang/String;

    .line 94
    iput-boolean v5, p0, Landroid/media/Ringtone;->mIsSoundException:Z

    .line 124
    iput-object v2, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    .line 125
    iput-boolean v5, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 771
    new-instance v1, Landroid/media/Ringtone$1;

    invoke-direct {v1, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v1, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 130
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 131
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 132
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 133
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 134
    if-eqz p2, :cond_2

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :goto_1
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 136
    iput v5, p0, Landroid/media/Ringtone;->mErrorCheck:I

    .line 139
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-nez v1, :cond_0

    .line 141
    :try_start_0
    new-instance v1, Landroid/media/SmartRingtone;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v4}, Landroid/media/SmartRingtone;-><init>(Landroid/media/AudioManager;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_2
    const-string/jumbo v1, "ro.lge.audio_soundexception"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mIsSoundException:Z

    .line 152
    return-void

    :cond_1
    move-object v1, v2

    .line 133
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 134
    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Ringtone"

    const-string v3, "Couldn\'t instantiate SmartRingtone"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    iput-object v2, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 4
    .parameter "context"
    .parameter "allowRemote"
    .parameter "streamType"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 89
    iput-object v1, p0, Landroid/media/Ringtone;->mDrmPath:Ljava/lang/String;

    .line 94
    iput-boolean v3, p0, Landroid/media/Ringtone;->mIsSoundException:Z

    .line 124
    iput-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    .line 125
    iput-boolean v3, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 771
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 157
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 158
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 160
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 161
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 162
    iput p3, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 164
    iput v3, p0, Landroid/media/Ringtone;->mErrorCheck:I

    .line 167
    const-string/jumbo v0, "ro.lge.audio_soundexception"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsSoundException:Z

    .line 169
    return-void

    :cond_1
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/Ringtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/media/Ringtone;->mErrorCheck:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/Ringtone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/media/Ringtone;->mErrorCheck:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/Ringtone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/Ringtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/Ringtone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    return v0
.end method

.method static synthetic access$500(Landroid/media/Ringtone;)Landroid/os/Binder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/Ringtone;)Landroid/media/IRingtonePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method private destroyLocalPlayer()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 578
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 581
    :cond_0
    return-void
.end method

.method private getDefaultAudioType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, audioType:Ljava/lang/String;
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v1, :pswitch_data_0

    .line 691
    :pswitch_0
    const-string/jumbo v0, "is_ringtone"

    .line 696
    :goto_0
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultAudioType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-object v0

    .line 682
    :pswitch_1
    const-string/jumbo v0, "is_ringtone"

    .line 683
    goto :goto_0

    .line 685
    :pswitch_2
    const-string/jumbo v0, "is_notification"

    .line 686
    goto :goto_0

    .line 688
    :pswitch_3
    const-string/jumbo v0, "is_alarm"

    .line 689
    goto :goto_0

    .line 680
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 620
    const/4 v4, 0x0

    .line 621
    .local v4, defaultRingtone:Ljava/lang/String;
    iget v5, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v5, :pswitch_data_0

    .line 664
    :pswitch_0
    sget-object v4, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 669
    :goto_0
    const-string v5, "Ringtone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default ringtone path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-object v4

    .line 624
    :pswitch_1
    iget-object v5, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x207001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 626
    .local v0, chameleonSupported:Z
    const-string v5, "Ringtone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chameleonSupported : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz v0, :cond_0

    .line 630
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultRingtonePathChameleon()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 633
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/media/Ringtone;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v3, custRingtone:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    sget-object v4, Landroid/media/Ringtone;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_1
    sget-object v4, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    goto :goto_0

    .line 645
    .end local v0           #chameleonSupported:Z
    .end local v3           #custRingtone:Ljava/io/File;
    :pswitch_2
    new-instance v2, Ljava/io/File;

    sget-object v5, Landroid/media/Ringtone;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .local v2, custNotification:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 647
    sget-object v4, Landroid/media/Ringtone;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    goto :goto_0

    .line 650
    :cond_2
    sget-object v4, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 652
    goto :goto_0

    .line 655
    .end local v2           #custNotification:Ljava/io/File;
    :pswitch_3
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/media/Ringtone;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v1, custAlarm:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 657
    sget-object v4, Landroid/media/Ringtone;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 660
    :cond_3
    sget-object v4, Landroid/media/Ringtone;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    .line 662
    goto/16 :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultRingtonePathChameleon()Ljava/lang/String;
    .locals 6

    .prologue
    .line 755
    sget-object v2, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .line 756
    .local v2, ringtone:Ljava/lang/String;
    const-string v1, "/carrier/media/ringtones/default_ringer.mp3"

    .line 757
    .local v1, carrierRingtonePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    .local v0, carrierRingtone:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone in CP, set to CP tone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object v2, v1

    .line 767
    :goto_0
    return-object v2

    .line 763
    :cond_0
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Ringtone in CP, set to OEM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v2, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    .line 707
    const/4 v6, 0x0

    .line 708
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 710
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 711
    .local v9, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 712
    .local v8, defaultPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 714
    .local v7, defaultAudioType:Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 715
    sget-object v8, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 716
    const-string/jumbo v7, "is_notification"

    .line 723
    :goto_0
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data =? AND mime_type =?  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v10, "application/ogg"

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "1"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 734
    :goto_1
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_2

    .line 736
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 737
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 743
    :goto_2
    if-eqz v6, :cond_0

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_0
    return-object v9

    .line 718
    :cond_1
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    .line 719
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultAudioType()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 739
    :cond_2
    :try_start_2
    const-string v1, "Ringtone"

    const-string v2, "Default ringtone does NOT exist. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const v1, 0x104042e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto :goto_2

    .line 743
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 729
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    .line 233
    const/4 v9, 0x0

    .line 234
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 238
    .local v11, title:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    if-eqz p2, :cond_2

    .line 244
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v10

    .line 245
    .local v10, ringToneType:I
    invoke-static {p0, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 246
    .local v7, actualUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {p0, v7, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, actualTitle:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 249
    const/4 v1, 0x0

    .line 303
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    .end local v10           #ringToneType:I
    :cond_0
    :goto_0
    return-object v1

    .line 252
    .restart local v6       #actualTitle:Ljava/lang/String;
    .restart local v7       #actualUri:Landroid/net/Uri;
    .restart local v8       #authority:Ljava/lang/String;
    .restart local v10       #ringToneType:I
    :cond_1
    const/4 v1, 0x2

    if-ne v10, v1, :cond_3

    .line 253
    const v1, 0x20b030f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    .end local v10           #ringToneType:I
    :cond_2
    :goto_1
    move-object v1, v11

    .line 303
    goto :goto_0

    .line 257
    .restart local v6       #actualTitle:Ljava/lang/String;
    .restart local v7       #actualUri:Landroid/net/Uri;
    .restart local v8       #authority:Ljava/lang/String;
    .restart local v10       #ringToneType:I
    :cond_3
    const v1, 0x104042b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 265
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v10           #ringToneType:I
    :cond_4
    :try_start_0
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 275
    :cond_5
    :goto_2
    if-eqz v9, :cond_7

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 276
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 285
    if-eqz v9, :cond_0

    .line 286
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 267
    :cond_6
    :try_start_2
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_2

    .line 281
    :cond_7
    const/4 v1, 0x0

    .line 285
    if-eqz v9, :cond_0

    .line 286
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_8

    .line 286
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 270
    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public getStreamType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 201
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 228
    :goto_0
    return-object v1

    .line 205
    :cond_0
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const v1, 0x104042c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 215
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, actualTitle:Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 218
    const v1, 0x20b030f

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 228
    .end local v0           #actualTitle:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 222
    .restart local v0       #actualTitle:Ljava/lang/String;
    :cond_3
    const v1, 0x104042b

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/Ringtone;->mErrorCheck:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 591
    const-string v2, "Ringtone"

    const-string v3, "Can\'t check isPlaying() during ErrorChecking"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return v1

    .line 596
    :cond_0
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 597
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    goto :goto_0

    .line 598
    :cond_1
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_2

    .line 600
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->play(Z)V

    .line 500
    return-void
.end method

.method public play(Z)V
    .locals 5
    .parameter "loop"

    .prologue
    .line 509
    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->checkPlayConditions(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v2, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 513
    iget-object v2, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    invoke-virtual {v2}, Landroid/media/SmartRingtone;->onExitRecordingLoop()V

    .line 517
    :cond_2
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    .line 521
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 523
    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 525
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 528
    :cond_3
    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsSoundException:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 529
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 530
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 533
    :cond_4
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_5

    .line 534
    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .line 536
    .local v0, canonicalUri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v4, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-interface {v2, v3, v0, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    .end local v0           #canonicalUri:Landroid/net/Uri;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 1
    .parameter "streamType"

    .prologue
    .line 178
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 182
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 183
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 612
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 14
    .parameter "uri"
    .parameter "defaultUri"

    .prologue
    const/4 v13, 0x1

    .line 314
    const/4 v8, 0x0

    .line 315
    .local v8, setDefault:Z
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 317
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 318
    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const-string v10, ""

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 328
    const/4 v4, 0x0

    .line 329
    .local v4, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 332
    .local v3, nStatus:I
    :try_start_0
    iget-object v9, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-eqz v9, :cond_2

    .line 333
    const-string v9, "Ringtone"

    const-string/jumbo v10, "setStreamType: mSmartRingtone.onNoiseEstimation()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v9, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    invoke-virtual {v9}, Landroid/media/SmartRingtone;->onNoiseEstimation()V

    .line 335
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 336
    iget-object v9, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    iget-object v10, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v10}, Landroid/media/SmartRingtone;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 340
    :cond_2
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v9, :cond_3

    .line 341
    iget-object v9, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 342
    if-eqz v4, :cond_3

    .line 343
    iget-object v9, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v4, v10, v11, v12}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    move-result v3

    .line 346
    :cond_3
    if-ne v3, v13, :cond_6

    .line 352
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 406
    :goto_1
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v10, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 408
    const-string v9, "DCM"

    const-string/jumbo v10, "ro.build.target_operator"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    if-eqz v9, :cond_c

    .line 410
    :try_start_1
    const-string v9, "Ringtone"

    const-string v10, "[hy] mLocalPlayer.prepare();"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 447
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 448
    const-string v9, "Ringtone"

    const-string v10, "Set default ringtone!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_2
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 451
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 452
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v10, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 453
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 461
    :cond_5
    :goto_3
    iget-object v9, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v11, p0, Landroid/media/Ringtone;->mStreamType:I

    move-object/from16 v0, p2

    invoke-static {v9, v10, v0, v11}, Landroid/media/Ringtone$Injector;->tryToGetEffectiveLocalPlayer(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/net/Uri;I)Landroid/media/MediaPlayer;

    move-result-object v9

    iput-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v9, :cond_d

    .line 462
    const-string v9, "Ringtone"

    const-string v10, "Successfully created local player"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    :cond_6
    const/4 v9, 0x2

    if-ne v3, v9, :cond_7

    .line 355
    :try_start_3
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 356
    iput-object v4, p0, Landroid/media/Ringtone;->mDrmPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Ljava/lang/SecurityException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 429
    iget-boolean v9, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v9, :cond_4

    .line 430
    const-string v9, "Ringtone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote playback not allowed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v8, 0x1

    goto :goto_2

    .line 363
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_7
    :try_start_4
    const-string v9, "Ringtone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ringtone uri :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  path :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, authority:Ljava/lang/String;
    iget-object v9, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 369
    .local v6, ringtoneUri:Landroid/net/Uri;
    const-string/jumbo v9, "settings"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v6, :cond_8

    .line 373
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 399
    .end local v0           #authority:Ljava/lang/String;
    .end local v6           #ringtoneUri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 400
    .local v2, ex:Ljava/io/IOException;
    :try_start_5
    const-string v9, "Ringtone"

    const-string v10, "Problem setDataSource; try to play default ringtone"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 433
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 434
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 435
    iget-boolean v9, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v9, :cond_4

    .line 436
    const-string v9, "Ringtone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote playback not allowed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 375
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #authority:Ljava/lang/String;
    .restart local v6       #ringtoneUri:Landroid/net/Uri;
    :cond_8
    if-eqz v4, :cond_9

    .line 376
    :try_start_6
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v5, ringtoneFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    .line 378
    const-string v9, "Ringtone"

    const-string v10, "File not exists, Change path to null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v4, 0x0

    .line 384
    .end local v5           #ringtoneFile:Ljava/io/File;
    :cond_9
    if-nez v4, :cond_b

    .line 385
    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, scheme:Ljava/lang/String;
    if-eqz v7, :cond_a

    const-string v9, "android.resource"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 387
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v11, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 439
    .end local v0           #authority:Ljava/lang/String;
    .end local v6           #ringtoneUri:Landroid/net/Uri;
    .end local v7           #scheme:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 440
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 441
    iget-boolean v9, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v9, :cond_4

    .line 442
    const-string v9, "Ringtone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote playback not allowed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 389
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #authority:Ljava/lang/String;
    .restart local v6       #ringtoneUri:Landroid/net/Uri;
    .restart local v7       #scheme:Ljava/lang/String;
    :cond_a
    :try_start_7
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 397
    .end local v7           #scheme:Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v11, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 412
    .end local v0           #authority:Ljava/lang/String;
    .end local v6           #ringtoneUri:Landroid/net/Uri;
    :catch_4
    move-exception v2

    .line 413
    .local v2, ex:Ljava/lang/Exception;
    :try_start_8
    const-string v9, "Ringtone"

    const-string v10, "[run][hy] exception is occurred. mLocalPlayer.prepare() Error: Try to play a default Ringtone!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 416
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 417
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 418
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 419
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v10, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 420
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_2

    .line 423
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_c
    iget-object v9, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 454
    :catch_5
    move-exception v1

    .line 455
    .local v1, e:Ljava/io/IOException;
    const-string v9, "Ringtone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setDefault Ringtone is errer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 464
    .end local v1           #e:Ljava/io/IOException;
    :cond_d
    const-string v9, "Ringtone"

    const-string v10, "Problem opening; delegating to remote player"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_1

    .line 488
    const-string v0, "Ringtone"

    const-string/jumbo v1, "setVolume is only supported by local playback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_1
    const-string v0, "Ringtone"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    iget-object v1, p0, Landroid/media/Ringtone;->mDrmPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mDrmPath:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v3}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    .line 558
    :cond_0
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    if-ne v1, v4, :cond_1

    .line 559
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    invoke-virtual {v1}, Landroid/media/SmartRingtone;->restoreVolumeAfterStop()V

    .line 560
    iput-boolean v3, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 564
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 565
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 573
    :cond_2
    :goto_0
    return-void

    .line 566
    :cond_3
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_2

    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
