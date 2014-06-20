.class public Lcom/android/lgesettings/QuietTimeInfo;
.super Ljava/lang/Object;
.source "QuietTimeInfo.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBQuietTimeState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 85
    return-void
.end method

.method private getDBQuietTimeState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "timed_silent_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBQuietTimeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    goto :goto_0
.end method

.method private vibrateOn()V
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 861
    .local v0, mVibrator:Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 862
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 864
    :cond_0
    return-void
.end method


# virtual methods
.method public SetSilentModeState(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 847
    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOn()V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOff()V

    goto :goto_0
.end method

.method public TimedSilentReceiverEnable(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 908
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 909
    if-ne v3, p2, :cond_0

    .line 910
    const-string v1, "QuietTimeInfo"

    const-string v2, "TimedSilentReceiver enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/lgesettings/TimedSilentReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 922
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v1, "QuietTimeInfo"

    const-string v2, "TimedSilentReceiver disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/lgesettings/TimedSilentReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public getAfterDay(J)J
    .locals 7
    .parameter "time"

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 439
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 440
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 441
    .local v1, hourOfDay:I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 442
    .local v2, minute:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 443
    .local v3, seconds:I
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 444
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 445
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 446
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 447
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public getAutoReplyOption()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quietmode_auto_reply_option"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 930
    :goto_0
    return v1

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quietmode_auto_reply_option"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getCalendarTimeMillis(J)J
    .locals 10
    .parameter "time"

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xb

    .line 408
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 409
    .local v1, dummy:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 411
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 412
    .local v2, hourOfDay:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 413
    .local v3, minute:I
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 415
    .local v4, seconds:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 416
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 417
    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 418
    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 419
    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 420
    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 421
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    return-wide v5
.end method

.method public getCurrentTimeMillis()J
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 403
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 404
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getDBAfterAudioMode()I
    .locals 3

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "after_audio_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :goto_0
    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietTimeInfo"

    const-string v2, "SettingNotFoundException - getDBAfterAudioMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBAfterAudioMode(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    goto :goto_0
.end method

.method public getDBBeforeAudioMode()I
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prev_audio_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietTimeInfo"

    const-string v2, "SettingNotFoundException - getDBBeforeAudioMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBBeforeAudioMode(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    goto :goto_0
.end method

.method public getDBDays()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_check_days"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, days:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 279
    const-string v1, "1111100"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBDays(Ljava/lang/String;)V

    .line 280
    const-string v0, "1111100"

    .line 282
    .end local v0           #days:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDBDuringQuietTime()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "during_timed_silent"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 290
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBDuringQuietTime()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBDuringQuietTime(I)V

    goto :goto_0
.end method

.method public getDBEndTime()J
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 268
    :try_start_0
    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDBEndTime() - End time string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quiet_time_end_start_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_end_start_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getCalendarTimeMillis(J)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 273
    :goto_0
    return-wide v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietTimeInfo"

    const-string v2, "SettingNotFoundException - getDBEndTime()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTime(J)V

    .line 273
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDBEndTimeHour()I
    .locals 4

    .prologue
    const/4 v1, 0x6

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_end_hour"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBEndTimeHour()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTimeHour(I)V

    goto :goto_0
.end method

.method public getDBEndTimeMinute()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_end_minute"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 263
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBEndTimeMinute()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTimeMinute(I)V

    goto :goto_0
.end method

.method public getDBFirstStartFlag()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_first_start_flag"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 345
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBFirstStartFlag()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBFirstStartFlag(I)V

    goto :goto_0
.end method

.method public getDBModeChangeCount()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_change_count"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBModeChangeCount()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBModeChangeCount(I)V

    goto :goto_0
.end method

.method public getDBRepeatedCallMode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 382
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_check_repeated_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 385
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBRepeatedCallMode(Z)V

    goto :goto_0
.end method

.method public getDBSaveTime()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_save_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getCalendarTimeMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietTimeInfo"

    const-string v2, "SettingNotFoundException - getDBSaveTime()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBSaveTime(J)V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getDBScheduledTimeMode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 373
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_check_scheduled_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBScheduledTimeMode(Z)V

    goto :goto_0
.end method

.method public getDBStartTime()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    :try_start_0
    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDBStartTime() - start time string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quiet_time_start_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_start_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getCalendarTimeMillis(J)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 227
    :goto_0
    return-wide v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietTimeInfo"

    const-string v2, "SettingNotFoundException - getDBStartTime()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDBStartTime() - Dummy start time string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTime(J)V

    .line 227
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDBStartTimeHour()I
    .locals 4

    .prologue
    const/16 v1, 0x16

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_start_hour"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBStartTimeHour()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTimeHour(I)V

    goto :goto_0
.end method

.method public getDBStartTimeMinute()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_start_minute"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBStartTimeMinute()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTimeMinute(I)V

    goto :goto_0
.end method

.method public getDBVibrateMode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_check_vibrate"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBVibrateMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBVibrateMode(Z)V

    goto :goto_0
.end method

.method public getDBootCase()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_boot_case"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietTimeInfo"

    const-string v3, "SettingNotFoundException - getDBootCase()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBootCase(I)V

    goto :goto_0
.end method

.method public getDummyTime(Z)J
    .locals 11
    .parameter "isAmPm"

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 455
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 456
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 457
    .local v1, date:Ljava/util/Date;
    if-nez p1, :cond_0

    .line 458
    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Ljava/util/Date;->setHours(I)V

    .line 459
    invoke-virtual {v1, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 460
    invoke-virtual {v1, v6}, Ljava/util/Date;->setSeconds(I)V

    .line 468
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 469
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 470
    .local v2, hourOfDay:I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 471
    .local v3, minute:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 472
    .local v4, seconds:I
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 473
    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 474
    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 475
    const/4 v5, 0x1

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 476
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    return-wide v5

    .line 463
    .end local v2           #hourOfDay:I
    .end local v3           #minute:I
    .end local v4           #seconds:I
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Date;->setHours(I)V

    .line 464
    invoke-virtual {v1, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 465
    invoke-virtual {v1, v6}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0
.end method

.method public getSoundProfile()I
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public getTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleDayToArray()[I
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 768
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 771
    .local v3, tmp:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    new-array v1, v6, [I

    fill-array-data v1, :array_1

    .local v1, exceptionResult:[I
    move-object v3, v1

    .line 780
    .end local v0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .end local v1           #exceptionResult:[I
    .end local v3           #tmp:[I
    :cond_0
    return-object v3

    .line 768
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 777
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public isNorepeatCase()Z
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNorepeatEndTimeCase()Z
    .locals 10

    .prologue
    .line 675
    const/4 v6, 0x0

    .line 676
    .local v6, timedelay:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 680
    .local v0, current:J
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    .line 681
    .local v2, end:J
    sub-long v4, v0, v2

    .line 682
    .local v4, result:J
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NR_isNorepeatEndTimeCase] EndTime- Cur : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-wide/16 v7, 0x7d0

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    const-wide/16 v7, -0x7d0

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 684
    const/4 v6, 0x1

    .line 686
    :cond_0
    return v6
.end method

.method public isNorepeatStartTimeCase()Z
    .locals 10

    .prologue
    .line 690
    const/4 v6, 0x1

    .line 691
    .local v6, timedelay:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 695
    .local v0, current:J
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v4

    .line 696
    .local v4, start:J
    sub-long v2, v0, v4

    .line 697
    .local v2, result:J
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NR_isNorepeatStartTimeCase] Cur - StartTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-wide/16 v7, 0x3e8

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    .line 699
    const/4 v6, 0x0

    .line 701
    :cond_0
    return v6
.end method

.method public isQuietTimeState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-direct {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBQuietTimeState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatedCallMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBRepeatedCallMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRevertTimecase()Z
    .locals 4

    .prologue
    .line 867
    const-string v0, "QuietTimeInfo"

    const-string v1, "[isRevertTimecase] : no repeat case QuietTime DB OFF set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRevertTimecase] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[starttime]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRevertTimecase] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [endtime]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRevertTimecase] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [currenttime]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 873
    const-string v0, "QuietTimeInfo"

    const-string v1, "[isRevertTimecase] : start>end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x1

    .line 877
    :goto_0
    return v0

    .line 876
    :cond_0
    const-string v0, "QuietTimeInfo"

    const-string v1, "[isRevertTimecase] : start<end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveTimeCurrentTime_Interval()Z
    .locals 8

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBSaveTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 663
    .local v0, time:J
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSaveTimeCurrentTime_Interval] : Interval - Currenttime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSaveTimeCurrentTime_Interval] : Interval - Savetime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBSaveTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSaveTimeCurrentTime_Interval] : Interval - Intaval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBSaveTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-wide/16 v2, -0x7d1

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x7d1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 668
    const-string v2, "QuietTimeInfo"

    const-string v3, "[isSaveTimeCurrentTime_Intervall] time<1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v2, 0x1

    .line 671
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isScheduledTimeMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBScheduledTimeMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentDay()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 706
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getToggleDayToArray()[I

    move-result-object v1

    .line 708
    .local v1, checkDay:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 709
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 713
    .local v4, dayOfWeek:I
    const/4 v6, 0x2

    if-ge v4, v6, :cond_1

    .line 714
    const/4 v4, 0x6

    .line 720
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 721
    .local v2, current:J
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentDayForDaybreakCase()Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 733
    :cond_0
    :goto_1
    return v5

    .line 716
    .end local v2           #current:J
    :cond_1
    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 727
    .restart local v2       #current:J
    :cond_2
    aget v6, v1, v4

    if-eq v6, v5, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v6

    if-eq v6, v5, :cond_0

    .line 733
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isSilentDayForDaybreakCase()Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 738
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getToggleDayToArray()[I

    move-result-object v1

    .line 740
    .local v1, checkDay:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 741
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 745
    .local v2, dayOfWeek:I
    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    .line 746
    const/4 v2, 0x6

    .line 751
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 764
    :cond_0
    :goto_1
    return v3

    .line 748
    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 754
    :cond_2
    if-gt v3, v2, :cond_3

    if-ge v2, v6, :cond_3

    .line 755
    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    if-nez v5, :cond_0

    move v3, v4

    .line 756
    goto :goto_1

    .line 758
    :cond_3
    if-nez v2, :cond_0

    .line 759
    const/4 v5, 0x6

    aget v5, v1, v5

    if-nez v5, :cond_0

    move v3, v4

    .line 760
    goto :goto_1
.end method

.method public isSilentState()Z
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentTime()Z
    .locals 11

    .prologue
    .line 614
    const/4 v4, 0x0

    .line 615
    .local v4, isSetTime:Z
    const-wide/16 v5, 0x0

    .line 616
    .local v5, start:J
    const-wide/16 v2, 0x0

    .line 618
    .local v2, end:J
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    .line 619
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    .line 620
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    add-long v0, v7, v9

    .line 622
    .local v0, current:J
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSilentTime] starttime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSilentTime] endtime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSilentTime] currenttime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    cmp-long v7, v5, v2

    if-gtz v7, :cond_2

    .line 627
    cmp-long v7, v5, v0

    if-gtz v7, :cond_1

    cmp-long v7, v0, v2

    if-gez v7, :cond_1

    .line 628
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][1] true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v4, 0x1

    .line 649
    :cond_0
    :goto_0
    return v4

    .line 631
    :cond_1
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][2] false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v4, 0x0

    goto :goto_0

    .line 635
    :cond_2
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    cmp-long v7, v0, v5

    if-gtz v7, :cond_3

    .line 636
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][3] false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v4, 0x0

    goto :goto_0

    .line 638
    :cond_3
    cmp-long v7, v5, v2

    if-lez v7, :cond_4

    cmp-long v7, v2, v0

    if-lez v7, :cond_4

    cmp-long v7, v5, v0

    if-lez v7, :cond_4

    .line 639
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][4] false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v4, 0x1

    .line 641
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentDayForDaybreakCase()Z

    move-result v7

    if-nez v7, :cond_0

    .line 642
    const/4 v4, 0x0

    goto :goto_0

    .line 645
    :cond_4
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][5] true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isVibrateMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBVibrateMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerAlarm(Z)V
    .locals 29
    .parameter "isTime_SET"

    .prologue
    .line 536
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAlarm() - start time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAlarm() - End time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAlarm() - current time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAlarm() - start time string : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAlarm() - end time string : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v28, Landroid/content/Intent;

    const-string v3, "settings.Quiet_Time.ALARM"

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v28, startIntent:Landroid/content/Intent;
    const-string v3, "start"

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    new-instance v26, Landroid/content/Intent;

    const-string v3, "settings.Quiet_Time.ALARM"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v26, endIntent:Landroid/content/Intent;
    const-string v3, "start"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 548
    .local v8, startSender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 551
    .local v15, endSender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 552
    .local v2, alarmStart:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 554
    .local v9, alarmEnd:Landroid/app/AlarmManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 556
    invoke-virtual {v2, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 557
    invoke-virtual {v9, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 558
    invoke-virtual {v9, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 611
    :goto_0
    return-void

    .line 560
    :cond_0
    const v23, 0x5265c00

    .line 562
    .local v23, ONE_DAY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 563
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 564
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 567
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v9

    move-object/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 568
    invoke-virtual {v9, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 575
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 576
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/lgesettings/QuietTimeInfo;->getAfterDay(J)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 608
    :goto_1
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v9

    move-object/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 583
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 584
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/lgesettings/QuietTimeInfo;->getAfterDay(J)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 591
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 592
    if-nez p1, :cond_5

    .line 593
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/lgesettings/QuietTimeInfo;->getAfterDay(J)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 596
    new-instance v27, Landroid/content/Intent;

    const-string v3, "settings.Quiet_Time.ALARM"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v27, endevent:Landroid/content/Intent;
    const-string v3, "start"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 599
    .local v25, endEventSender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/AlarmManager;

    .line 600
    .local v24, alarmEndEvent:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 602
    .end local v24           #alarmEndEvent:Landroid/app/AlarmManager;
    .end local v25           #endEventSender:Landroid/app/PendingIntent;
    .end local v27           #endevent:Landroid/content/Intent;
    :cond_5
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 606
    :cond_6
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    move-object/from16 v16, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method

.method public restorationAudioCheck()V
    .locals 7

    .prologue
    .line 881
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 882
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 884
    .local v1, currentTime:J
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorationAudioCheck start_time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorationAudioCheck end_time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorationAudioCheck currentTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 891
    const-string v3, "QuietTimeInfo"

    const-string v4, "restorationAudio"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setSoundProfile(I)V

    .line 904
    :cond_1
    :goto_0
    return-void

    .line 897
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 898
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 899
    const-string v3, "QuietTimeInfo"

    const-string v4, "restorationAudio"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setSoundProfile(I)V

    goto :goto_0
.end method

.method public set24TimeString(ZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "isStartTime"
    .parameter "timeString"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, hour:I
    const/4 v1, 0x0

    .line 937
    .local v1, minute:I
    const-string v2, ""

    .line 938
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    if-ne v7, p1, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v0

    .line 941
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v1

    .line 942
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object p2, v2

    .line 959
    .end local p2
    :cond_0
    return-object p2

    .line 945
    .restart local p2
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v0

    .line 949
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v1

    .line 950
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 953
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public setDBAfterAudioMode(I)V
    .locals 2
    .parameter "afterAudioMode"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "after_audio_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    return-void
.end method

.method public setDBBeforeAudioMode(I)V
    .locals 2
    .parameter "beforeAudioMode"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prev_audio_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    return-void
.end method

.method public setDBDays(Ljava/lang/String;)V
    .locals 2
    .parameter "days"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_check_days"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    return-void
.end method

.method public setDBDuringQuietTime(I)V
    .locals 2
    .parameter "duringQuietTime"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "during_timed_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    return-void
.end method

.method public setDBEndTime(J)V
    .locals 2
    .parameter "endTime"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_end_start_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 118
    return-void
.end method

.method public setDBEndTimeHour(I)V
    .locals 2
    .parameter "hour"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_end_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    return-void
.end method

.method public setDBEndTimeMinute(I)V
    .locals 2
    .parameter "minute"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_end_minute"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    return-void
.end method

.method public setDBFirstStartFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_first_start_flag"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    return-void
.end method

.method public setDBModeChangeCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_change_count"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    return-void
.end method

.method public setDBQuietModeState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    return-void
.end method

.method public setDBQuietTimeState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "timed_silent_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    return-void
.end method

.method public setDBRepeatedCallMode(Z)V
    .locals 3
    .parameter "isRepeatedCallMode"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_check_repeated_call"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBSaveTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_save_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 151
    return-void
.end method

.method public setDBScheduledTimeMode(Z)V
    .locals 3
    .parameter "isScheduledMode"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_check_scheduled_time"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBStartTime(J)V
    .locals 2
    .parameter "startTime"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_start_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 109
    return-void
.end method

.method public setDBStartTimeHour(I)V
    .locals 2
    .parameter "hour"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_start_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    return-void
.end method

.method public setDBStartTimeMinute(I)V
    .locals 2
    .parameter "minute"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_start_minute"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    return-void
.end method

.method public setDBVibrateMode(Z)V
    .locals 3
    .parameter "isVibrateMode"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_check_vibrate"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBootCase(I)V
    .locals 2
    .parameter "isbootcase"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_boot_case"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    return-void
.end method

.method public setSoundProfile(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 792
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/lgesettings/QuietTimeInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/QuietTimeInfo$1;-><init>(Lcom/android/lgesettings/QuietTimeInfo;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 802
    return-void
.end method

.method public setTime(Z)V
    .locals 4
    .parameter "start_end"

    .prologue
    const/4 v3, 0x0

    .line 505
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 506
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 507
    .local v1, date:Ljava/util/Date;
    if-nez p1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    .line 509
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 510
    invoke-virtual {v1, v3}, Ljava/util/Date;->setSeconds(I)V

    .line 518
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 522
    const/16 v2, 0xb

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 523
    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 524
    const/16 v2, 0xd

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 525
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 527
    if-nez p1, :cond_1

    .line 528
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTime(J)V

    .line 532
    :goto_1
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    .line 514
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 515
    invoke-virtual {v1, v3}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTime(J)V

    goto :goto_1
.end method

.method public silentModeOff()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 827
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] getDBModeChangeCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBModeChangeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] beforeRinger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", afterRinger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] endTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentTimeMillis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 833
    .local v0, isDuring:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 837
    invoke-direct {p0}, Lcom/android/lgesettings/QuietTimeInfo;->vibrateOn()V

    .line 838
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBAfterAudioMode(I)V

    .line 839
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] PREV_AUDIO_MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBDuringQuietTime(I)V

    .line 843
    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SilentModeOff] PREV_AUDIO_IN_TIMED_SILENT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void

    .end local v0           #isDuring:Z
    :cond_2
    move v0, v1

    .line 831
    goto :goto_0
.end method

.method public silentModeOn()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 805
    const-string v1, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn] getDBModeChangeCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBModeChangeCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v4, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn] during : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", ringerModeChanged : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v6

    if-eq v1, v6, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v1, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn]  current Soundprofile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " beforeAudioMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v1, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn] isVibrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isVibrateMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isVibrateMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 813
    .local v0, silentOrVibrate:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v1

    if-nez v1, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBBeforeAudioMode(I)V

    .line 815
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBDuringQuietTime(I)V

    .line 816
    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SilentModeOn] PREV_AUDIO_MODE saved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 821
    invoke-direct {p0}, Lcom/android/lgesettings/QuietTimeInfo;->vibrateOn()V

    .line 822
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeInfo;->setDBAfterAudioMode(I)V

    .line 823
    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SilentModeOn] AFTER_AUDIO_MODE saved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .end local v0           #silentOrVibrate:I
    :cond_1
    move v1, v3

    .line 806
    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 811
    goto :goto_2

    .line 810
    :catch_0
    move-exception v1

    goto :goto_1
.end method
