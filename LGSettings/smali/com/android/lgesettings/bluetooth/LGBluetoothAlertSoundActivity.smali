.class public Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;
.super Landroid/app/Activity;
.source "LGBluetoothAlertSoundActivity.java"


# instance fields
.field private final ALERT_SOUND_PATH:Ljava/lang/String;

.field private final ALERT_SOUND_URI:Ljava/lang/String;

.field private mMediaStopHandler:Landroid/os/Handler;

.field private mMediaStopRunnable:Ljava/lang/Runnable;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopHandler:Landroid/os/Handler;

    .line 45
    const-string v0, "/system/media/audio/ui/Bluetooth_alert.ogg"

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->ALERT_SOUND_PATH:Ljava/lang/String;

    .line 46
    const-string v0, "file:///system/media/audio/ui/Bluetooth_alert.ogg"

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->ALERT_SOUND_URI:Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private acquireScreenWakeLock()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "LGBluetoothAlertSoundActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 71
    :cond_1
    return-void
.end method

.method private delayedQuitActivity()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    return-void
.end method

.method private playAlertSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 81
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 82
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 83
    const-string v3, "LGBluetoothAlertSoundActivity"

    const-string v4, "[BTUI] playAlertSound() : Audio Manager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 89
    .local v1, ringerMode:I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 91
    .local v2, vibrateMode:I
    packed-switch v1, :pswitch_data_0

    .line 108
    invoke-direct {p0, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playSound(Z)Z

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playVibrate(Z)Z

    goto :goto_0

    .line 100
    :pswitch_2
    if-ne v2, v4, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playSoundAndVibrate()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playSound(Z)Z

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private playSound(Z)Z
    .locals 8
    .parameter "doFinish"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    sget-boolean v5, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    if-eqz v5, :cond_1

    .line 115
    const-string v4, "LGBluetoothAlertSoundActivity"

    const-string v5, "[BTUI] playSound() : isRecordStarted is true => return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_5

    .line 125
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 126
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    .line 128
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/Bluetooth_alert.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, soundfile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 130
    const-string v5, "LGBluetoothAlertSoundActivity"

    const-string v6, "[BTUI] playSound() : sound exist in /system/media/audio/ui/Bluetooth_alert.ogg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v5, "file:///system/media/audio/ui/Bluetooth_alert.ogg"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 132
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 133
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 141
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 142
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #soundfile:Ljava/io/File;
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_5

    .line 151
    const-string v4, "LGBluetoothAlertSoundActivity"

    const-string v5, "[BTUI] playSound() : mPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    goto :goto_0

    .line 135
    .restart local v1       #soundfile:Ljava/io/File;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    const-string v6, "/system/media/audio/ui/Bluetooth_alert.ogg"

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 143
    .end local v1           #soundfile:Ljava/io/File;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LGBluetoothAlertSoundActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI] playSound() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #soundfile:Ljava/io/File;
    :cond_4
    :try_start_2
    const-string v5, "LGBluetoothAlertSoundActivity"

    const-string v6, "[BTUI] playSound() : sound does not exist in /system/media/audio/ui/Bluetooth_alert.ogg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    const v7, 0x7f070001

    invoke-direct {p0, v5, v6, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 159
    .end local v1           #soundfile:Ljava/io/File;
    :cond_5
    const-string v3, "LGBluetoothAlertSoundActivity"

    const-string v5, "playSound()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 162
    if-eqz p1, :cond_6

    .line 163
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->delayedQuitActivity()V

    :cond_6
    move v3, v4

    .line 166
    goto/16 :goto_0
.end method

.method private playSoundAndVibrate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    const-string v2, "LGBluetoothAlertSoundActivity"

    const-string v3, "[BTUI] playSoundAndVibrate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playSound(Z)Z

    move-result v0

    .line 213
    .local v0, bSoundPlayed:Z
    invoke-direct {p0, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playVibrate(Z)Z

    move-result v1

    .line 215
    .local v1, bVibratePlayed:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->delayedQuitActivity()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    goto :goto_0
.end method

.method private playVibrate(Z)Z
    .locals 3
    .parameter "doFinish"

    .prologue
    .line 187
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 189
    .local v0, vibrator:Landroid/os/Vibrator;
    if-nez v0, :cond_1

    .line 190
    const-string v1, "LGBluetoothAlertSoundActivity"

    const-string v2, "[BTUI] playVibrate() : vibrator is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    .line 194
    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    .line 197
    :cond_1
    const-string v1, "LGBluetoothAlertSoundActivity"

    const-string v2, "[BTUI] playVibrate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 200
    if-eqz p1, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->delayedQuitActivity()V

    .line 203
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 8
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 173
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    if-eqz v6, :cond_1

    .line 180
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v7

    .line 177
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    if-eqz v6, :cond_1

    .line 180
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 179
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 180
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->acquireScreenWakeLock()V

    .line 54
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->playAlertSound()V

    .line 55
    return-void
.end method
