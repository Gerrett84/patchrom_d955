.class public Lcom/lge/camera/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field public static IS_MUTE_NOTIFICATION_STREAM:Z

.field public static IS_MUTE_SYSTEM_STREAM:Z

.field public static requestAudioFocusCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    .line 17
    sput-boolean v0, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    .line 48
    sput v0, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioFocus(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 89
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check requestAudioFocusCount : current count is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "CameraApp"

    const-string v2, "Check requestAudioFocusCount : doing abandonAudioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 93
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 94
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 96
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public static getHasMic(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 172
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 173
    .local v0, am:Landroid/media/AudioManager;
    const-string v1, "isWiredMic"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 176
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAudioManagerCallStatus(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 198
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 199
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 201
    .local v1, mode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 205
    .end local v1           #mode:I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 181
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWiredHeadsetOn()Z
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.iloen.melon.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, m:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    .end local v1           #m:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 37
    return-void
.end method

.method public static resumeAudioPlayback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 46
    return-void
.end method

.method public static setAudioFocus(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "requestAudioFocus"

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 51
    .local v0, am:Landroid/media/AudioManager;
    if-eqz p1, :cond_1

    .line 52
    const-string v1, "CameraApp"

    const-string v2, "++ Get audiofocus - not music pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 54
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "-- Loose audioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 59
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 60
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-gez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    goto :goto_0
.end method

.method public static setAudioFocus(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "requestAudioFocus"
    .parameter "isTransient"

    .prologue
    const/4 v3, 0x0

    .line 67
    if-eqz p2, :cond_1

    .line 68
    invoke-static {p0, p1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 71
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 72
    if-eqz p1, :cond_2

    .line 73
    const-string v1, "CameraApp"

    const-string v2, "++ Get audiofocus-stopAudioPlayback by get audiofocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 75
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "-- Loose audioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 79
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 80
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-gez v1, :cond_0

    .line 81
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    goto :goto_0
.end method

.method public static setAudiodevice(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "Orientation"

    .prologue
    .line 144
    const-string v1, "90"

    .line 145
    .local v1, direction:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 164
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIO_ZOOMING_MODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 167
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void

    .line 147
    .end local v0           #am:Landroid/media/AudioManager;
    :pswitch_0
    const-string v1, "0"

    .line 148
    goto :goto_0

    .line 150
    :pswitch_1
    const-string v1, "90"

    .line 151
    goto :goto_0

    .line 153
    :pswitch_2
    const-string v1, "180"

    .line 154
    goto :goto_0

    .line 156
    :pswitch_3
    const-string v1, "270"

    .line 157
    goto :goto_0

    .line 159
    :pswitch_4
    const-string v1, "360"

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setMuteNotificationStream(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 104
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 105
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : ON"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 110
    sput-boolean v5, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-boolean v1, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : OFF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 116
    sput-boolean v4, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    goto :goto_0
.end method

.method public static setMuteSystemStream(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 123
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 124
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 125
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : ON"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 129
    sput-boolean v3, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-boolean v1, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : OFF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 135
    sput-boolean v4, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    goto :goto_0
.end method

.method public static setStopNotificationStream(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
