.class public Lcom/android/lgesettings/quietmode/QuietModeInfo;
.super Lcom/android/lgesettings/QuietTimeInfo;
.source "QuietModeInfo.java"


# static fields
.field private static isSelectSoundProfile:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPakcage_name:Ljava/lang/String;

.field private position:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSelectSoundProfile:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/lgesettings/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->position:Ljava/lang/String;

    .line 115
    const-string v0, "empty"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mPakcage_name:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    .line 125
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    .line 128
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBQuietModeState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBQuietModeState(I)V

    .line 129
    return-void
.end method

.method private getDBQuietModeState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_mode_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietModeInfo"

    const-string v3, "SettingNotFoundException - getDBQuietModeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBQuietModeState(I)V

    goto :goto_0
.end method

.method private getDBeforeQuietModeState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_time_before_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietModeInfo"

    const-string v3, "SettingNotFoundException - getDBQuietModeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBeforeQuietModeStatus(I)V

    goto :goto_0
.end method

.method public static getSelectSoundProfileFlag()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSelectSoundProfile:Z

    return v0
.end method

.method private registerLog(JJJ)V
    .locals 3
    .parameter "currentTime"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 723
    const-string v0, "QuietModeInfo"

    const-string v1, "--------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v0, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QM] registerLog() - start time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v0, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QM] registerLog() - End time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v0, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QM] registerLog() - current time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v0, "QuietModeInfo"

    const-string v1, "======================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v0, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QM] registerLog() - start time string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v0, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QM] registerLog() - end time string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p5, p6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QM] registerLog() - current time string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v0, "QuietModeInfo"

    const-string v1, "--------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public static setSelectSoundProfileFlag(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSelectSoundProfile:Z

    .line 134
    return-void
.end method

.method private vibrateOn()V
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 469
    .local v0, mVibrator:Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBBeforeAudioMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 470
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public ScheduledDB(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1074
    const-string v0, "[scheduledDBcheck] insert"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1078
    if-eqz v2, :cond_4

    .line 1079
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1080
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1084
    :goto_0
    const-string v1, "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1086
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[deleteExpiredQuietMode] PKG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | UID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v3, "com.android.lgesettings"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1090
    const-string v0, "[scheduledDBcheck] schedule db exists."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-eqz v2, :cond_0

    .line 1093
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_0
    const/4 v6, 0x1

    .line 1106
    :goto_2
    return v6

    .line 1098
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1100
    :cond_2
    const-string v0, "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    if-eqz v2, :cond_3

    .line 1102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1104
    :cond_3
    const-string v0, "[scheduledDBcheck] schedule db does not exist."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    const-string v5, "com.android.lgesettings"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->insertQuietMode(JJLjava/lang/String;)Z

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public beforeDayRunCase()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    .line 672
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v6

    div-long v4, v6, v8

    .line 673
    .local v4, start:J
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v6

    div-long v2, v6, v8

    .line 674
    .local v2, end:J
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v6

    div-long v0, v6, v8

    .line 676
    .local v0, current:J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    .line 677
    const/4 v6, 0x1

    .line 679
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public currentOnCase(JJJ)Z
    .locals 4
    .parameter "currentTime"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 639
    invoke-virtual {p0, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringTimeInfo(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 640
    .local v2, start:I
    invoke-virtual {p0, p5, p6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringTimeInfo(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 641
    .local v1, end:I
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringTimeInfo(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 643
    .local v0, current:I
    if-ge v0, v2, :cond_0

    if-ge v0, v1, :cond_0

    if-le v2, v1, :cond_0

    .line 644
    const/4 v3, 0x1

    .line 646
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public doQuietModeService(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 738
    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endNotification()V

    goto :goto_0
.end method

.method public endAction(JJ)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->silentModeOff()V

    .line 373
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->quietModeChangedBroadCast()V

    .line 374
    return-void
.end method

.method public endNotification()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f02036b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 829
    return-void
.end method

.method public getAutoReplyOption()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quietmode_auto_reply_option"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quietmode_auto_reply_option"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getCurrentTimeMillis()J
    .locals 5

    .prologue
    const-wide/16 v3, 0x2710

    .line 325
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 326
    .local v0, time:J
    div-long/2addr v0, v3

    .line 327
    mul-long/2addr v0, v3

    .line 328
    return-wide v0
.end method

.method public getDBDays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDBEndTime()J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_end_start_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 254
    :goto_0
    return-wide v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietModeInfo"

    const-string v2, "[QM] SettingNotFoundException - getDBEndTime()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 254
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDBEndTimeHour()I
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v0

    return v0
.end method

.method public getDBEndTimeMinute()I
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v0

    return v0
.end method

.method public getDBRepeatedCallMode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_mode_check_repeated_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 274
    :goto_0
    return v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietModeInfo"

    const-string v3, "SettingNotFoundException - getDBRepeatedCallMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBRepeatedCallMode(Z)V

    goto :goto_0
.end method

.method public getDBScheduledTimeMode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_time_check_scheduled_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietModeInfo"

    const-string v3, "SettingNotFoundException - getDBScheduledTimeMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    goto :goto_0
.end method

.method public getDBStartTime()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_start_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 228
    :goto_0
    return-wide v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "QuietModeInfo"

    const-string v2, "[QM] SettingNotFoundException - getDBStartTime()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QM] getDBStartTime() - Dummy start time string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 228
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDBStartTimeHour()I
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v0

    return v0
.end method

.method public getDBStartTimeMinute()I
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v0

    return v0
.end method

.method public getDBlockIncomingCalls()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_mode_check_block_incoming_calls"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietModeInfo"

    const-string v3, "SettingNotFoundException - getDBlockIncomingCalls()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBlockIncomingCalls(Z)V

    goto :goto_0
.end method

.method public getDBootNotiUpdate()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_mode_boot_noti_update"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "QuietModeInfo"

    const-string v3, "SettingNotFoundException - getDBootNotiUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBootNotiUpdate(I)V

    goto :goto_0
.end method

.method public getDayInfo(J)J
    .locals 3
    .parameter "time"

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, dayInfo:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getDirectCaseBundleInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 529
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 530
    .local v8, date:Ljava/util/Date;
    invoke-virtual {v8, v0}, Ljava/util/Date;->setHours(I)V

    .line 531
    invoke-virtual {v8, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 532
    invoke-virtual {v8, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 534
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 535
    .local v1, currentTime:J
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v3

    .line 536
    .local v3, startTime:J
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v5

    .local v5, endTime:J
    move-object v0, p0

    .line 538
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerLog(JJJ)V

    .line 540
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v9, registIntent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "PACKAGE_NAME"

    const-string v10, "com.android.lgesettings.DIRECT"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "action"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "START_TIME"

    invoke-virtual {v7, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 545
    const-string v0, "END_TIME"

    invoke-virtual {v7, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 546
    return-object v7
.end method

.method public getQuietTimeOnSummary(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f080b54

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1187
    const v0, 0x7f080b76

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    :goto_0
    return-object v0

    .line 1195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1202
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1209
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getReplyMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f080e07

    const/4 v3, 0x1

    .line 336
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quietmode_auto_reply_message"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_auto_reply_message_original"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quietmode_auto_reply_message"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    :cond_0
    if-nez v0, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quietmode_auto_reply_message"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_auto_reply_message_original"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    :goto_0
    return-object v0

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_auto_reply_message_original"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getSilentSummaryText(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const v11, 0x7f080b66

    const v10, 0x7f080b62

    const v9, 0x7f080b68

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1218
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1219
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "language info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v1, "iw"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "days value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1231
    const-string v0, "empty"

    .line 1232
    const-string v0, "1111111"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    const v0, 0x7f080b75

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1369
    :goto_0
    return-object v0

    .line 1234
    :cond_0
    const-string v0, "1111110"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1237
    :cond_1
    const-string v0, "1111100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080b65

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_2
    const-string v0, "0111111"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080b67

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1243
    :cond_3
    const-string v0, "0011111"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080b63

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080b67

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1246
    :cond_4
    const-string v0, "0111110"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1249
    :cond_5
    const-string v0, "0000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1250
    const v0, 0x7f080b76

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1252
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v4

    move v0, v4

    move v2, v4

    .line 1255
    :goto_1
    const/4 v6, 0x7

    if-ge v1, v6, :cond_f

    .line 1256
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 1257
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1258
    add-int/lit8 v0, v2, 0x1

    .line 1261
    if-nez v1, :cond_9

    .line 1262
    invoke-virtual {p1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :cond_7
    :goto_2
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    move v0, v1

    .line 1255
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1263
    :cond_9
    if-ne v1, v8, :cond_a

    .line 1264
    invoke-virtual {p1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1265
    :cond_a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1266
    const v2, 0x7f080b63

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1267
    :cond_b
    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 1268
    const v2, 0x7f080b64

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1269
    :cond_c
    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 1270
    const v2, 0x7f080b65

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1271
    :cond_d
    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 1272
    invoke-virtual {p1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1273
    :cond_e
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 1274
    const v2, 0x7f080b67

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1279
    :cond_f
    if-ne v2, v8, :cond_16

    .line 1280
    if-nez v0, :cond_10

    .line 1281
    const v0, 0x7f080b6f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1282
    :cond_10
    if-ne v0, v8, :cond_11

    .line 1283
    const v0, 0x7f080b69

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1284
    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 1285
    const v0, 0x7f080b6a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1286
    :cond_12
    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 1287
    const v0, 0x7f080b6b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1288
    :cond_13
    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 1289
    const v0, 0x7f080b6c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1290
    :cond_14
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 1291
    const v0, 0x7f080b6d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1292
    :cond_15
    const/4 v1, 0x6

    if-ne v0, v1, :cond_29

    .line 1293
    const v0, 0x7f080b6e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1297
    :cond_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1301
    :cond_17
    const-string v0, "1111111"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1302
    const v0, 0x7f080b75

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1303
    :cond_18
    const-string v0, "1111110"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1304
    const v0, 0x7f080b71

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1305
    :cond_19
    const-string v0, "1111100"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1306
    const v0, 0x7f080b70

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1307
    :cond_1a
    const-string v0, "0111111"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1308
    const v0, 0x7f080b74

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1309
    :cond_1b
    const-string v0, "0011111"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080b64

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1313
    :cond_1c
    const-string v0, "0111110"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1314
    const v0, 0x7f080b73

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1315
    :cond_1d
    const-string v0, "0000000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1316
    const v0, 0x7f080b76

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1318
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v4

    move v0, v4

    move v2, v4

    .line 1321
    :goto_3
    const/4 v5, 0x7

    if-ge v1, v5, :cond_27

    .line 1322
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 1323
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1324
    add-int/lit8 v0, v2, 0x1

    .line 1327
    if-nez v1, :cond_21

    .line 1328
    invoke-virtual {p1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :cond_1f
    :goto_4
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    move v0, v1

    .line 1321
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1329
    :cond_21
    if-ne v1, v8, :cond_22

    .line 1330
    const v2, 0x7f080b63

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1331
    :cond_22
    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 1332
    const v2, 0x7f080b64

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1333
    :cond_23
    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 1334
    const v2, 0x7f080b65

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1335
    :cond_24
    const/4 v2, 0x4

    if-ne v1, v2, :cond_25

    .line 1336
    invoke-virtual {p1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1337
    :cond_25
    const/4 v2, 0x5

    if-ne v1, v2, :cond_26

    .line 1338
    const v2, 0x7f080b67

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1339
    :cond_26
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1f

    .line 1340
    invoke-virtual {p1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1345
    :cond_27
    if-ne v2, v8, :cond_28

    .line 1346
    packed-switch v0, :pswitch_data_0

    .line 1362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1348
    :pswitch_0
    const v0, 0x7f080b69

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1350
    :pswitch_1
    const v0, 0x7f080b6a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1352
    :pswitch_2
    const v0, 0x7f080b6b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1354
    :pswitch_3
    const v0, 0x7f080b6c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1356
    :pswitch_4
    const v0, 0x7f080b6d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1358
    :pswitch_5
    const v0, 0x7f080b6e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1360
    :pswitch_6
    const v0, 0x7f080b6f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1365
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_29
    move-object v0, v3

    .line 1369
    goto/16 :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getStringDayInfo(J)Ljava/lang/String;
    .locals 12
    .parameter "time"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 475
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 476
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v6, v7, 0x76c

    .line 477
    .local v6, year:I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 478
    .local v3, month:I
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    .line 479
    .local v1, day:I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 480
    .local v2, hours:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 481
    .local v4, monute:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 484
    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getStringTimeInfo(J)Ljava/lang/String;
    .locals 9
    .parameter "time"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 492
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 493
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 494
    .local v1, hours:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 495
    .local v2, monute:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 497
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "QuietModeInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hours : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v4, "QuietModeInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minutes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getTimeForDirectToString(Z)Ljava/lang/String;
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v1, 0x0

    .line 584
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 585
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 586
    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 587
    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 589
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 590
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 593
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertQuietMode(JJLjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1111
    const-string v1, "start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v1, "end_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1115
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockIncomingCalls()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBlockIncomingCalls()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirectChangeQuietModeStatus(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 512
    const-string v0, "com.android.lgesettings.DIRECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lge.pa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lge.nlp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lge.ia.task.mechat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndCase(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1001
    const-string v0, "isEndCase"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p0, p4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->ScheduledDB(Ljava/lang/String;)Z

    .line 1005
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1006
    const/4 v0, 0x0

    .line 1007
    if-eqz v2, :cond_a

    .line 1008
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1009
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v1, v0

    .line 1013
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-eqz v0, :cond_0

    const-string v0, "com.android.lgesettings.DIRECT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 1016
    :cond_0
    const-string v0, "endTime : -1 or current time > endTime > current time case -> current time change"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide p1

    .line 1020
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTime : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "      |     "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v0, "---------------------------------------------------------------------------"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_8

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[isEndCase] startTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     EndTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[isEndCase] startTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EndTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v3

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v3

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1030
    const-string v3, "[isEndCase] not end Quiet mode!!!"

    invoke-static {p4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.lgesettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1033
    const-string v3, "[isEndCase] setting quiet mode scheduled time not running case - isScheduledTimeMode"

    invoke-static {p4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_2
    const-string v3, "com.android.lgesettings.DIRECT"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB Start time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current End time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v3

    .line 1057
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    const-string v3, "com.android.lgesettings.DIRECT"

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1058
    const-string v0, "Quiet Mode Direct time day change case - return false"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v0, 0x0

    .line 1070
    :goto_2
    return v0

    .line 1035
    :cond_3
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.lgesettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentDay()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1036
    const-string v3, "[isEndCase] setting quiet mode scheduled time not running case - isSilentDay"

    invoke-static {p4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isNorepeatCase()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1038
    if-eqz v2, :cond_4

    .line 1039
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1041
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1045
    :cond_5
    if-eqz v2, :cond_6

    .line 1046
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 1063
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1066
    :cond_8
    const-string v0, "---------------------------------------------------------------------------"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    if-eqz v2, :cond_9

    .line 1068
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method

.method public isNorepeatCase()Z
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v0

    return v0
.end method

.method public isQuietModeState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 294
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBQuietModeState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuietModeSupportModelEx()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 835
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 836
    const-string v0, "QuietModeInfo"

    const-string v2, "WiFi model - quiet mode not support!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_support_model"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    :goto_0
    return v1

    .line 842
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "quiet_mode_support_model"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    const-string v0, "QuietModeInfo"

    const-string v2, "QUIET_MODE_SUPPROT_MODEL - null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_support_model"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public isRepeatedCallMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBRepeatedCallMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduleNotificationStartCase()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduledTime()Z
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentTime()Z

    move-result v0

    return v0
.end method

.method public isScheduledTimeMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBScheduledTimeMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentDay()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 684
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getToggleDayToArray()[I

    move-result-object v8

    .line 686
    .local v8, checkDay:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 687
    .local v7, calendar:Ljava/util/Calendar;
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 691
    .local v9, dayOfWeek:I
    const/4 v0, 0x2

    if-ge v9, v0, :cond_0

    .line 692
    const/4 v9, 0x6

    .line 697
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->beforeDayRunCase()Z

    move-result v0

    if-ne v10, v0, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentDayForDaybreakCase()Z

    move-result v0

    if-ne v10, v0, :cond_1

    move v0, v10

    .line 719
    :goto_1
    return v0

    .line 694
    :cond_0
    add-int/lit8 v9, v9, -0x2

    goto :goto_0

    :cond_1
    move v0, v11

    .line 702
    goto :goto_1

    .line 706
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->currentOnCase(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentDayForDaybreakCase()Z

    move-result v0

    if-ne v10, v0, :cond_3

    move v0, v10

    .line 708
    goto :goto_1

    .line 712
    :cond_3
    aget v0, v8, v9

    if-ne v0, v10, :cond_4

    move v0, v10

    .line 713
    goto :goto_1

    .line 715
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isNorepeatCase()Z

    move-result v0

    if-ne v0, v10, :cond_5

    move v0, v10

    .line 716
    goto :goto_1

    :cond_5
    move v0, v11

    .line 719
    goto :goto_1
.end method

.method public isSilentState()Z
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentDay()Z

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
    .locals 10

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v0

    .line 414
    .local v0, current:J
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    .line 415
    .local v4, start:J
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v2

    .line 417
    .local v2, end:J
    const-string v6, "QuietModeInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSilentTime] current : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v6, "QuietModeInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSilentTime] start : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v6, "QuietModeInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSilentTime] end : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 422
    const-string v6, "QuietModeInfo"

    const-string v7, "[isSilentTime] true case"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v6, 0x1

    .line 425
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isStartCase(JLjava/lang/String;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 942
    const-string v0, "isStartCase"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->ScheduledDB(Ljava/lang/String;)Z

    .line 946
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 948
    if-eqz v3, :cond_7

    .line 949
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 950
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 955
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      |     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    cmp-long v4, v1, p1

    if-lez v4, :cond_0

    .line 960
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isStartCase] current include case current -> startTime          current : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after startTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "      |     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v1

    .line 965
    :cond_0
    const-string v1, "---------------------------------------------------------------------------"

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 968
    :goto_1
    if-ge v1, v0, :cond_6

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "[isStartCase] startTime : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     EndTime : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "[isStartCase] startTime : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "EndTime : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v4

    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-lez v2, :cond_1

    .line 975
    const-string v2, "[isStartCase] Start Quiet mode!!!"

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isStartCase] scheduled time checkbox : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isStartCase] isSilentDay : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentDay()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.lgesettings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 979
    const-string v2, "[isStartCase] setting quiet mode scheduled time not running case - isScheduledTimeMode"

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_1
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 981
    :cond_2
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.lgesettings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentDay()Z

    move-result v2

    if-nez v2, :cond_3

    .line 982
    const-string v2, "[isStartCase] setting quiet mode scheduled time not running case - isSilentDay"

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 985
    :cond_3
    if-eqz v3, :cond_4

    .line 986
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    move v6, v7

    .line 997
    :cond_5
    :goto_3
    return v6

    .line 993
    :cond_6
    const-string v0, "---------------------------------------------------------------------------"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    if-eqz v3, :cond_5

    .line 995
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_7
    move v0, v6

    goto/16 :goto_0
.end method

.method public queryQuietModeNextItem()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 854
    const-string v0, "QuietModeInfo"

    const-string v1, "queryQuietModeNextItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v3, "start_time > 0 AND package_name NOT LIKE ? AND package_name NOT LIKE ? AND package_name NOT LIKE ? AND package_name NOT LIKE ?"

    .line 857
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "com.android.lgesettings.DIRECT"

    aput-object v0, v4, v2

    const-string v0, "com.android.systemui"

    aput-object v0, v4, v5

    const-string v0, "com.lge.pa"

    aput-object v0, v4, v6

    const-string v0, "com.lge.nlp"

    aput-object v0, v4, v8

    .line 860
    new-array v6, v8, [Ljava/lang/String;

    .line 862
    const-string v0, "soosin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 865
    :try_start_1
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryQuietModeNextItem] getCount :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    if-eqz v0, :cond_3

    .line 867
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 868
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryQuietModeNextItem] c.getString(0)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryQuietModeNextItem] c.getString(1)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryQuietModeNextItem] c.getString(2)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryQuietModeNextItem] c.getString(3)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return uID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 874
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 875
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 876
    if-eqz v0, :cond_0

    .line 877
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 879
    :cond_0
    if-eqz v6, :cond_2

    move-object v0, v6

    :goto_0
    move-object v7, v0

    .line 897
    :cond_1
    :goto_1
    return-object v7

    :cond_2
    move-object v0, v7

    .line 879
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 882
    :goto_2
    const-string v1, "QuietModeInfo"

    const-string v2, "[queryQuietModeNextItem] IllegalArgumentException!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    if-eqz v0, :cond_1

    .line 884
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 887
    :catch_1
    move-exception v0

    move-object v0, v7

    .line 888
    :goto_3
    const-string v1, "QuietModeInfo"

    const-string v2, "[queryQuietModeNextItem] CursorIndexOutOfBoundsException!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    if-eqz v0, :cond_1

    .line 890
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 894
    :cond_3
    if-eqz v0, :cond_1

    .line 895
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 887
    :catch_2
    move-exception v1

    goto :goto_3

    .line 881
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public quietModeChangedBroadCast()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "QuietModeInfo"

    const-string v2, "[quietModeChangedBroadCast] insert !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method public registerAlarmAllTime()V
    .locals 14

    .prologue
    .line 551
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 552
    .local v8, date:Ljava/util/Date;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/Date;->setHours(I)V

    .line 553
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 554
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 556
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 557
    .local v1, currentTime:J
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v3

    .line 558
    .local v3, startTime:J
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v5

    .local v5, endTime:J
    move-object v0, p0

    .line 560
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerLog(JJJ)V

    .line 562
    new-instance v9, Landroid/content/Intent;

    const-string v0, "lge.settings.QMODE_REGISTER"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v9, registIntent:Landroid/content/Intent;
    const-string v0, "lge.settings.QMODE_REGISTER"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDirectCaseBundleInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 566
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "QuietModeInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[registerAlarmAllTime] pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PACKAGE_NAME"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v0, "QuietModeInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[registerAlarmAllTime] action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PACKAGE_NAME"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v0, "QuietModeInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[registerAlarmAllTime] start : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "START_TIME"

    const-wide/16 v12, -0x1

    invoke-virtual {v7, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v0, "QuietModeInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[registerAlarmAllTime] end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "END_TIME"

    const-wide/16 v12, -0x1

    invoke-virtual {v7, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v9, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, p0

    .line 572
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerLog(JJJ)V

    .line 573
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    return-void
.end method

.method public registerAlarmCancel(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 598
    const-string v3, "QuietModeInfo"

    const-string v4, "registerAlarmCancel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 600
    .local v0, alarmStart:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "lge.settings.QMODE_REGISTER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v1, registIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, p1, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 602
    .local v2, registSender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 603
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 604
    return-void
.end method

.method public registerAlarmEx()V
    .locals 10

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 611
    .local v1, currentTime:J
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    .line 612
    .local v3, startTime:J
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v5

    .line 614
    .local v5, endTime:J
    const/16 v0, 0x7bf

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerAlarmCancel(I)V

    move-object v0, p0

    .line 616
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerLog(JJJ)V

    .line 618
    new-instance v8, Landroid/content/Intent;

    const-string v0, "lge.settings.QMODE_REGISTER"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v8, registIntent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 620
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "PACKAGE_NAME"

    const-string v9, "com.android.lgesettings"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "action"

    const-string v9, "lge.settings.QMODE_REGISTER"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "START_TIME"

    invoke-virtual {v7, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 623
    const-string v0, "END_TIME"

    invoke-virtual {v7, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 625
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, p0

    .line 626
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerLog(JJJ)V

    .line 627
    const-string v0, "QuietModeInfo"

    const-string v9, "[registerAlarmEx] not use PendingIntent, use to sendBroadcase method"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method public removeSecond(Ljava/lang/Long;)J
    .locals 4
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x2710

    .line 523
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDBQuietModeState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quiet_mode_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    return-void
.end method

.method public setDBRepeatedCallMode(Z)V
    .locals 3
    .parameter "isRepeatedCallMode"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_check_repeated_call"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBSaveTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBSaveTime(J)V

    .line 187
    return-void
.end method

.method public setDBScheduledTimeMode(Z)V
    .locals 3
    .parameter "isScheduledMode"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_time_check_scheduled_time"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBeforeQuietModeStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quiet_time_before_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method

.method public setDBlockIncomingCalls(Z)V
    .locals 3
    .parameter "isBlockIncomingCalls"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "quiet_mode_check_block_incoming_calls"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBootNotiUpdate(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quiet_mode_boot_noti_update"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    return-void
.end method

.method public setSwichQuietMode(Z)V
    .locals 4
    .parameter "isSwichOn"

    .prologue
    .line 387
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwichQuietMode() isSwichon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSelectSoundProfileFlag(Z)V

    .line 389
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.settings.QMODE_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, changeQuietMode:Landroid/content/Intent;
    const-string v1, "PACKAGE_NAME"

    const-string v2, "com.android.lgesettings.DIRECT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBSaveTime(J)V

    .line 393
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    :goto_0
    return-void

    .line 396
    .end local v0           #changeQuietMode:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.settings.QMODE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v0       #changeQuietMode:Landroid/content/Intent;
    const-string v1, "PACKAGE_NAME"

    const-string v2, "com.android.lgesettings.DIRECT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setTime(Z)V
    .locals 4
    .parameter "start_end"

    .prologue
    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 166
    .local v0, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/Date;->setSeconds(I)V

    .line 177
    :goto_0
    if-nez p1, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 183
    :goto_1
    return-void

    .line 171
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 172
    .restart local v0       #date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    goto :goto_1
.end method

.method public silentModeOff()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    const-string v2, "QuietModeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QM][SilentModeOff] getDBModeChangeCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBModeChangeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v2, "QuietModeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QM][SilentModeOff] beforeRinger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBBeforeAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v2, "QuietModeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QM][SilentModeOff] endTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentTimeMillis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v2, "QuietModeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QM][SilentModeOff] before quiet mode status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBeforeQuietModeState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBDuringQuietTime()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 459
    .local v0, isDuring:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBBeforeAudioMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSoundProfile(I)V

    .line 460
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->vibrateOn()V

    .line 461
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBeforeQuietModeState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBQuietModeState(I)V

    .line 462
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    .line 463
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QM][SilentModeOff] Before Sound profile sync current Sound profile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .end local v0           #isDuring:Z
    :cond_0
    move v0, v1

    .line 458
    goto :goto_0
.end method

.method public silentModeOn()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    const-string v1, "QuietModeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QM][SilentModeOn] getDBModeChangeCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBModeChangeCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v4, "QuietModeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QM][SilentModeOn] ringerModeChanged : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSoundProfile()I

    move-result v6

    if-eq v1, v6, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v1, "QuietModeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QM][SilentModeOn]  current Soundprofile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSoundProfile()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v1, "QuietModeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QM][SilentModeOn]  current QuietMode status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBQuietModeState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, silentOrVibrate:I
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBootNotiUpdate()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 437
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBootNotiUpdate(I)V

    .line 444
    :goto_1
    const-string v1, "QuietModeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QM][SilentModeOn] Saved before sound profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBBeforeAudioMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v1, "QuietModeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QM][SilentModeOn] Saved quiet mode status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBeforeQuietModeState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSoundProfile(I)V

    .line 448
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBQuietModeState(I)V

    .line 449
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    .line 450
    return-void

    .end local v0           #silentOrVibrate:I
    :cond_0
    move v1, v3

    .line 430
    goto/16 :goto_0

    .line 440
    .restart local v0       #silentOrVibrate:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBBeforeAudioMode(I)V

    .line 441
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBQuietModeState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBeforeQuietModeStatus(I)V

    goto :goto_1
.end method

.method public startAction(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "pkg"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->silentModeOn()V

    .line 368
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->quietModeChangedBroadCast()V

    .line 369
    return-void
.end method

.method public startNotification()V
    .locals 20

    .prologue
    .line 751
    const v2, 0x7f02036b

    .line 752
    .local v2, activated_icon:I
    const v10, 0x7f02036c

    .line 753
    .local v10, scheduled_icon:I
    const/4 v5, 0x1

    .line 754
    .local v5, mode:I
    const-string v12, ""

    .line 755
    .local v12, tickerText:Ljava/lang/String;
    const-string v11, ""

    .line 756
    .local v11, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v15, 0x7f080df1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 757
    .local v13, title:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 758
    .local v4, intent:Landroid/content/Intent;
    const-wide/16 v8, 0x0

    .line 759
    .local v8, next_startTime:J
    const-wide/16 v6, 0x0

    .line 760
    .local v6, next_endTime:J
    const-string v14, "com.lge.settings.QUIET_MODE_SETTING"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const/high16 v14, 0x7000

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 764
    .local v3, contentIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v15

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTime()Z

    move-result v15

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mPakcage_name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isDirectChangeQuietModeStatus(Ljava/lang/String;)Z

    move-result v15

    if-ne v14, v15, :cond_3

    .line 765
    const/4 v5, 0x3

    .line 766
    const-string v14, "QuietModeInfo"

    const-string v15, "[startNotification] NOTIFICATION_ON_SCHEDULED_OFF_NOW"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->queryQuietModeNextItem()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->queryQuietModeNextItem()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->queryQuietModeNextItem()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 776
    :goto_0
    const-string v14, "empty"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mPakcage_name:Ljava/lang/String;

    .line 792
    :cond_0
    :goto_1
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    .line 794
    const/4 v14, 0x1

    if-ne v5, v14, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    iput v2, v14, Landroid/app/Notification;->icon:I

    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    iget v15, v15, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x2

    iput v15, v14, Landroid/app/Notification;->flags:I

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v16, 0x7f080df2

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v15, 0x7f080df2

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 816
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v13, v11, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v14, :cond_1

    .line 819
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    .line 821
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotificationManager:Landroid/app/NotificationManager;

    const v15, 0x7f02036b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 822
    return-void

    .line 772
    :cond_2
    const-string v14, "QuietModeInfo"

    const-string v15, "[startNotification] DB null case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v8

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    goto/16 :goto_0

    .line 778
    :cond_3
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduleNotificationStartCase()Z

    move-result v15

    if-ne v14, v15, :cond_0

    .line 779
    const/4 v5, 0x3

    .line 780
    const-string v14, "QuietModeInfo"

    const-string v15, "NOTIFICATION_ON_SCHEDULED_END_TIME"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->queryQuietModeNextItem()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->queryQuietModeNextItem()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->queryQuietModeNextItem()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 786
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v8

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    goto/16 :goto_1

    .line 800
    :cond_5
    const/4 v14, 0x3

    if-ne v5, v14, :cond_6

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    iput v10, v14, Landroid/app/Notification;->icon:I

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    iget v15, v15, Landroid/app/Notification;->flags:I

    iput v15, v14, Landroid/app/Notification;->flags:I

    .line 806
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v15, 0x7f080df3

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v16, 0x7f080df3

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 808
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    new-instance v17, Landroid/content/Intent;

    const-string v18, "lge.settings.QMODE_SCHEDULE_NOTI_DELETE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    invoke-static/range {v15 .. v18}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 812
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    iput v2, v14, Landroid/app/Notification;->icon:I

    .line 813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v16, 0x7f080df2

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    const v15, 0x7f080df1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2
.end method

.method public updateDBCurrentOnCase()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 650
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 651
    .local v1, sDate:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 654
    .local v0, eDate:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    .line 655
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 656
    invoke-virtual {v1, v4}, Ljava/util/Date;->setSeconds(I)V

    .line 659
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->setHours(I)V

    .line 660
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 661
    invoke-virtual {v0, v4}, Ljava/util/Date;->setSeconds(I)V

    .line 663
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 664
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 665
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->removeSecond(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 668
    :cond_0
    return-void
.end method

.method public updateTime(IILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-wide/16 v5, 0x2710

    .line 1119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1122
    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1123
    invoke-virtual {v0, v10, p1}, Ljava/util/Calendar;->set(II)V

    .line 1124
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 1125
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 1126
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 1128
    const-string v1, "left"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1129
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start minite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    .line 1133
    mul-long/2addr v1, v5

    .line 1134
    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 1137
    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1138
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 1139
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1140
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 1141
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 1143
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    div-long/2addr v0, v5

    .line 1144
    mul-long/2addr v0, v5

    .line 1145
    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 1167
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1168
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before date : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1173
    const-string v1, "QuietModeInfo"

    const-string v2, "after day case "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1175
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 1177
    :cond_1
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after Start time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "                   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after End time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "                   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after end full string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1182
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after start full string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return-void

    .line 1147
    :cond_2
    const-string v1, "right"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End minite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    .line 1152
    mul-long/2addr v1, v5

    .line 1153
    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 1154
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1158
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 1159
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1160
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 1161
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 1162
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    div-long/2addr v0, v5

    .line 1163
    mul-long/2addr v0, v5

    .line 1164
    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    goto/16 :goto_0
.end method

.method public updateTimeSetingForSchedule()Z
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v5, 0x1

    .line 901
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateDBCurrentOnCase()V

    .line 902
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 904
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 905
    const-string v1, "start_time"

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    const-string v1, "end_time"

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 913
    :goto_0
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateTimeSetingForSchedule] start time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateTimeSetingForSchedule] end time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v1, "package_name=?"

    .line 917
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.lgesettings"

    aput-object v4, v2, v3

    .line 919
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 920
    return v5

    .line 909
    :cond_0
    const-string v1, "start_time"

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 910
    const-string v1, "end_time"

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public updateTimeSetingForScheduleNextDay()Z
    .locals 6

    .prologue
    const-wide/32 v3, 0x5265c00

    const/4 v5, 0x1

    .line 924
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 926
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 927
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 929
    const-string v1, "start_time"

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 930
    const-string v1, "end_time"

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateTimeSetingForSchedule] start time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v1, "QuietModeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateTimeSetingForSchedule] end time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v1, "package_name=?"

    .line 935
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.lgesettings"

    aput-object v4, v2, v3

    .line 937
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 938
    return v5
.end method
