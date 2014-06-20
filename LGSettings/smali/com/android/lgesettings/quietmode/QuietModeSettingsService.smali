.class public Lcom/android/lgesettings/quietmode/QuietModeSettingsService;
.super Landroid/app/Service;
.source "QuietModeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;,
        Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;
    }
.end annotation


# static fields
.field static final QUIET_MODE_PROJECTION:[Ljava/lang/String;

.field public static final QUIET_MODE_URI:Landroid/net/Uri;

.field private static qmodeEndTime:J

.field private static qmodeStartTime:J


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandlerQuietMode:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;

.field private mObserverQuietMode:Landroid/database/ContentObserver;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private volatile mServiceHandler:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_PROJECTION:[Ljava/lang/String;

    .line 74
    const-string v0, "content://com.android.settings.quietmode.QuietModeScheduledEventProvider/scheduled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    .line 79
    sput-wide v3, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->qmodeStartTime:J

    .line 80
    sput-wide v3, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->qmodeEndTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 551
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mObserverQuietMode:Landroid/database/ContentObserver;

    .line 567
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;)Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mHandlerQuietMode:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/content/Context;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getDBStartTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/content/Context;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getDBEndTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;JJJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCurrentTimeIncluded(JJJ)Z

    move-result v0

    return v0
.end method

.method private cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "uID"

    .prologue
    const/high16 v9, 0x800

    .line 324
    const-string v6, "QuietModeSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[cancelPendingIntent] UID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 327
    .local v1, alarmStart:Landroid/app/AlarmManager;
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 329
    .local v0, alarmEnd:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "lge.settings.QMODE_ON_PLEASE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v4, startIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "lge.settings.QMODE_OFF_PLEASE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v2, endIntent:Landroid/content/Intent;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p1, v6, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 336
    .local v5, startSender:Landroid/app/PendingIntent;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit16 v6, v6, 0x2710

    invoke-static {p1, v6, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 338
    .local v3, endSender:Landroid/app/PendingIntent;
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 339
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 340
    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 341
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 342
    return-void
.end method

.method public static deleteDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 671
    const-string v2, "QuietModeSettingsService"

    const-string v3, "deleteDBQuiteModePackageName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v1, "package_name=?"

    .line 673
    .local v1, where:Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 674
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    return v4
.end method

.method public static deleteDBQuiteModeByUniqueID(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "UniqueID"

    .prologue
    const/4 v4, 0x1

    .line 735
    const-string v2, "QuietModeSettingsService"

    const-string v3, "deleteDBQuiteModeByUniqueID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v1, "_id=?"

    .line 737
    .local v1, where:Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 738
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 740
    return v4
.end method

.method private deleteDuplicatedQuietMode(Landroid/content/Context;JJLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "packageName"

    .prologue
    .line 518
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[deleteDuplicatedQuietMode] insert !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v3, "start_time=? AND end_time=? AND package_name=?"

    .line 520
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p6, v4, v0

    .line 521
    .local v4, args:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 524
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 527
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     starttime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     endtime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByUniqueID(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    if-eqz v6, :cond_1

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v7

    .line 531
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[deleteDuplicatedQuietMode] IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    if-eqz v6, :cond_1

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 533
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static deleteExpiredQuietMode(Landroid/content/Context;JLcom/android/lgesettings/quietmode/QuietModeInfo;)V
    .locals 11
    .parameter "context"
    .parameter "currentTime"
    .parameter "quietModeInfo"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 817
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[deleteExpiredQuietMode] insert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 821
    .local v8, length:I
    if-eqz v6, :cond_0

    .line 822
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 823
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 826
    :cond_0
    const/4 v7, 0x0

    .line 827
    .local v7, i:I
    const-string v0, "QuietModeSettingsService"

    const-string v1, "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    .line 830
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[deleteExpiredQuietMode] startTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | EndTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | PKG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | UID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 834
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByUniqueID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 836
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 829
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 838
    :cond_2
    const-string v0, "QuietModeSettingsService"

    const-string v1, "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-eqz v6, :cond_3

    .line 840
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_3
    return-void
.end method

.method private deleteImmediateQuietMode(Landroid/content/Context;JLjava/lang/String;Lcom/android/lgesettings/quietmode/QuietModeInfo;)V
    .locals 8
    .parameter "context"
    .parameter "currentTime"
    .parameter "packageName"
    .parameter "quietmodeinfo"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 680
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[deleteImmediateQuietMode] !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v3, "start_time<=? and end_time>=? AND package_name NOT LIKE ?"

    .line 684
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "com.android.lgesettings"

    aput-object v1, v4, v0

    .line 685
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 686
    const/4 v6, 0x0

    .line 689
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 691
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 693
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 694
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.lgesettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 695
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByUniqueID(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v7

    .line 705
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[deleteImmediateQuietMode] IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    if-eqz v6, :cond_1

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    return-void

    .line 698
    :cond_2
    :try_start_2
    invoke-virtual {p5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByUniqueID(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 707
    :cond_4
    if-eqz v6, :cond_1

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private getDBEndTime(Landroid/content/Context;)J
    .locals 2
    .parameter "mContext"

    .prologue
    .line 1140
    sget-wide v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->qmodeEndTime:J

    return-wide v0
.end method

.method private getDBStartTime(Landroid/content/Context;)J
    .locals 2
    .parameter "mContext"

    .prologue
    .line 1144
    sget-wide v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->qmodeStartTime:J

    return-wide v0
.end method

.method public static getUIDDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 715
    const/4 v7, 0x0

    .line 716
    .local v7, ret:Ljava/lang/String;
    const-string v0, "QuietModeSettingsService"

    const-string v1, "getUIDDBQuiteModeByPackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v3, "package_name=?"

    .line 718
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 719
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 721
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 722
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 724
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 727
    :cond_0
    if-eqz v6, :cond_1

    .line 728
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 730
    :cond_1
    return-object v7
.end method

.method private isCompareTime(JJ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1132
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 1133
    const/4 v0, 0x0

    .line 1135
    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isCurrentTimeIncluded(JJJ)Z
    .locals 1
    .parameter "startTime"
    .parameter "endTime"
    .parameter "currentMillis"

    .prologue
    .line 1128
    cmp-long v0, p1, p5

    if-gtz v0, :cond_0

    cmp-long v0, p5, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 85
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 89
    .local v19, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 91
    .local v18, action:Ljava/lang/String;
    const-string v2, "PACKAGE_NAME"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, appName:Ljava/lang/String;
    const-string v2, "START_TIME"

    const-wide/16 v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 93
    .local v6, startTime:J
    const-string v2, "END_TIME"

    const-wide/16 v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 95
    .local v8, endTime:J
    const-string v2, "QuietModeSettingsService"

    const-string v3, "---------------------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "QuietModeSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      [1] ##########Action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "##########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v2, "QuietModeSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      [2] APP_NAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "QuietModeSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      [3] START_TIME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "        |      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4, v6, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v2, "QuietModeSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      [4] END_TIME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      |      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4, v8, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "lge.settings.QMODE_REGISTER"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateTimeSetingForDirect(Landroid/content/Context;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    .line 104
    const-string v2, "com.android.lgesettings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getUIDDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 107
    .local v21, uID:Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 112
    .end local v21           #uID:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v2, p0

    move-object v10, v5

    invoke-direct/range {v2 .. v10}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateQuietMode(Landroid/content/Context;ZLjava/lang/String;JJLjava/lang/String;)V

    .line 278
    :cond_1
    :goto_0
    const-string v2, "QuietModeSettingsService"

    const-string v3, "---------------------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_1
    return-void

    .line 114
    :cond_2
    const-string v2, "lge.settings.QMODE_CANCEL"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage] QUIET_MODE_CANCEL_ACTION send!!-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateTimeSetingForDirect(Landroid/content/Context;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object v10, v5

    invoke-direct/range {v2 .. v10}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateQuietMode(Landroid/content/Context;ZLjava/lang/String;JJLjava/lang/String;)V

    .line 119
    const-string v2, "com.android.lgesettings.DIRECT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage] QUIET_MODE_CANCEL_ACTION pkg Settings Direct!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-static {v2, v3, v4, v10}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteExpiredQuietMode(Landroid/content/Context;JLcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v10, p0

    move-object v14, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteImmediateQuietMode(Landroid/content/Context;JLjava/lang/String;Lcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForScheduleNextDay()Z

    .line 130
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-wide v12, v6

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v17}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isEndCase(Landroid/content/Context;JJLjava/lang/String;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDuplicatedQuietMode(Landroid/content/Context;JJLjava/lang/String;)V

    .line 133
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v20, intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_OFF_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] QUIET_MODE_OFF_NOW send!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 141
    .end local v20           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isStartCase(Landroid/content/Context;JJLcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage] QUIET_MODE_On_NOW send!!-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 144
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_ON_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 150
    .end local v20           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getUIDDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 151
    .restart local v21       #uID:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 157
    .end local v21           #uID:Ljava/lang/String;
    :cond_6
    const-string v2, "lge.settings.QMODE_ON_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isStartCase(Landroid/content/Context;JJLcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage] QUIET_MODE_On_NOW send!!-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 164
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_ON_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 169
    .end local v20           #intent:Landroid/content/Intent;
    :cond_7
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] not startcase!! : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_8
    const-string v2, "lge.settings.QMODE_OFF_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 172
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage] QUIET_MODE_OFF_SERVICE-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateTimeSetingForDirect(Landroid/content/Context;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 176
    const-string v2, "reg_off_case"

    const-string v3, "TEMP_CASE"

    const-string v4, "empty"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 183
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v17}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isEndCase(Landroid/content/Context;JJLjava/lang/String;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 184
    const-string v2, "com.android.lgesettings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isNorepeatCase()Z

    move-result v3

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v10

    cmp-long v2, v2, v10

    if-ltz v2, :cond_9

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 194
    :cond_9
    :goto_3
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 195
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_OFF_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] QUIET_MODE_OFF_NOW send!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 179
    .end local v20           #intent:Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->queryQuietModeDirectUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.lgesettings.DIRECT"

    invoke-static {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDBQuiteModeByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 191
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDuplicatedQuietMode(Landroid/content/Context;JJLjava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDuplicatedQuietMode(Landroid/content/Context;JJLjava/lang/String;)V

    .line 202
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] not endcase!! : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage] QUIET_MODE_OFF_SERVICE-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    :cond_d
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 206
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] ACTION_BOOT_COMPLETED!! : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateTimeSetingForDirect(Landroid/content/Context;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isStartCase(Landroid/content/Context;JJLcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 212
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v3

    if-ne v2, v3, :cond_e

    .line 213
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 214
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_OFF_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] QUIET_MODE_OFF_NOW send!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 234
    .end local v20           #intent:Landroid/content/Intent;
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduleNotificationStartCase()Z

    move-result v3

    if-ne v2, v3, :cond_f

    .line 235
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] Scheduled notification start!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    .line 246
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-static {v2, v3, v4, v10}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteExpiredQuietMode(Landroid/content/Context;JLcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->registAllAlarm(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 249
    :cond_10
    const-string v2, "com.lge.settings.TIME_SET"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 250
    :cond_11
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage-TIME_SET] TIME_SET!! : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->updateTimeSetingForDirect(Landroid/content/Context;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-static {v2, v3, v4, v10}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteExpiredQuietMode(Landroid/content/Context;JLcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-wide v12, v6

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v17}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isEndCase(Landroid/content/Context;JJLjava/lang/String;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDuplicatedQuietMode(Landroid/content/Context;JJLjava/lang/String;)V

    .line 259
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 260
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_OFF_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage-TIME_SET] QUIET_MODE_OFF_NOW send!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 266
    .end local v20           #intent:Landroid/content/Intent;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-wide v12, v6

    move-wide v14, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isStartCase(Landroid/content/Context;JJLcom/android/lgesettings/quietmode/QuietModeInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    const-string v2, "QuietModeSettingsService"

    const-string v3, "-----[processMessage-TIME_SET] QUIET_MODE_On_NOW send!!-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 269
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v2, "lge.settings.QMODE_ON_NOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 276
    .end local v20           #intent:Landroid/content/Intent;
    :cond_13
    const-string v2, "QuietModeSettingsService"

    const-string v3, "[processMessage] Invalid action: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private queryQuietModeDirectUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 436
    const-string v0, "QuietModeSettingsService"

    const-string v1, "queryQuietModeDirectUniqueID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v3, "package_name=?"

    .line 438
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "com.android.lgesettings.DIRECT"

    aput-object v0, v4, v2

    .line 439
    .local v4, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 440
    .local v8, uID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 442
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 443
    if-eqz v6, :cond_4

    .line 444
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeDirectUniqueID] getCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeDirectUniqueID] c.getString(0)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeDirectUniqueID] c.getString(1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeDirectUniqueID] c.getString(2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeDirectUniqueID] c.getString(3)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeDirectUniqueID] return uID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 452
    if-eqz v6, :cond_0

    .line 453
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_0
    if-eqz v8, :cond_1

    move-object v0, v8

    .line 473
    :goto_0
    return-object v0

    .line 455
    :cond_1
    const-string v0, "-1"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 457
    :catch_0
    move-exception v7

    .line 458
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[queryQuietModeDirectUniqueID] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v6, :cond_2

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_2
    const-string v0, "-1"

    goto :goto_0

    .line 463
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 464
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[queryQuietModeDirectUniqueID] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz v6, :cond_3

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_3
    const-string v0, "-1"

    goto :goto_0

    .line 470
    .end local v7           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_4
    if-eqz v6, :cond_5

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_5
    const-string v0, "-1"

    goto :goto_0
.end method

.method private queryQuietModeUniqueID(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "packageName"

    .prologue
    .line 477
    const-string v0, "QuietModeSettingsService"

    const-string v1, "queryQuietMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v3, "start_time=? AND end_time=? AND package_name=?"

    .line 479
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p6, v4, v0

    .line 480
    .local v4, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 481
    .local v8, uID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 483
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 484
    if-eqz v6, :cond_4

    .line 485
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeUniqueID] getCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 487
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeUniqueID] c.getString(0)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeUniqueID] c.getString(1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeUniqueID] c.getString(2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryQuietModeUniqueID] c.getString(3)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return uID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 493
    if-eqz v6, :cond_0

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_0
    if-eqz v8, :cond_1

    move-object v0, v8

    .line 514
    :goto_0
    return-object v0

    .line 496
    :cond_1
    const-string v0, "-1"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 498
    :catch_0
    move-exception v7

    .line 499
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[queryQuietModeUniqueID] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz v6, :cond_2

    .line 501
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_2
    const-string v0, "-1"

    goto :goto_0

    .line 504
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 505
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[queryQuietModeUniqueID] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v6, :cond_3

    .line 507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_3
    const-string v0, "-1"

    goto :goto_0

    .line 511
    .end local v7           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_4
    if-eqz v6, :cond_5

    .line 512
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_5
    const-string v0, "-1"

    goto :goto_0
.end method

.method private registAllAlarm(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 1012
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[registAllAlarm] insert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1014
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1015
    .local v10, length:I
    if-eqz v8, :cond_0

    .line 1016
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1017
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1019
    :cond_0
    const/4 v9, 0x0

    .line 1020
    .local v9, i:I
    const-string v0, "QuietModeSettingsService"

    const-string v1, "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    .line 1024
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[registAllAlarm] startTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | EndTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | PKG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | UID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->requestPendingIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1023
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1029
    :cond_1
    const-string v0, "QuietModeSettingsService"

    const-string v1, "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-eqz v8, :cond_2

    .line 1031
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private requestPendingIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "packageName"
    .parameter "uID"

    .prologue
    .line 346
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] UID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] startTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       |      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] endTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      |      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] start uID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] end uID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit16 v6, v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v20, start_Extra:Landroid/os/Bundle;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v18, end_Extra:Landroid/os/Bundle;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v17, endIntent:Landroid/content/Intent;
    const-string v4, "PACKAGE_NAME"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v4, "START_TIME"

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 359
    const-string v4, "END_TIME"

    move-object/from16 v0, v18

    move-wide/from16 v1, p4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 361
    const-string v4, "lge.settings.QMODE_OFF_PLEASE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x800

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 364
    .local v16, endSender:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 366
    .local v10, alarmEnd:Landroid/app/AlarmManager;
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v19, startIntent:Landroid/content/Intent;
    const-string v4, "PACKAGE_NAME"

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v4, "START_TIME"

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 370
    const-string v4, "END_TIME"

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 371
    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 372
    const-string v4, "lge.settings.QMODE_ON_PLEASE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit16 v4, v4, 0x2710

    const/high16 v5, 0x800

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 375
    .local v9, startSender:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 380
    .local v3, alarmStart:Landroid/app/AlarmManager;
    const-string v4, "QuietModeSettingsService"

    const-string v5, "----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] start bundle pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PACKAGE_NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] start bundle startTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "START_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v4, "QuietModeSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestPendingIntent] start bundle endTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "END_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v4, "com.android.lgesettings"

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isNorepeatCase()Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 386
    const/4 v4, 0x0

    move-wide/from16 v0, p2

    invoke-virtual {v3, v4, v0, v1, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 387
    const/4 v4, 0x0

    move-wide/from16 v0, p4

    move-object/from16 v2, v16

    invoke-virtual {v10, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v4, 0x0

    const-wide/32 v7, 0x5265c00

    move-wide/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 391
    const/4 v11, 0x0

    const-wide/32 v14, 0x5265c00

    move-wide/from16 v12, p4

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setDBEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 1152
    sput-wide p1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->qmodeEndTime:J

    .line 1153
    return-void
.end method

.method private setDBStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 1148
    sput-wide p1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->qmodeStartTime:J

    .line 1149
    return-void
.end method

.method private updateQuietMode(Landroid/content/Context;ZLjava/lang/String;JJLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "bQueitMode"
    .parameter "appName"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "packageName"

    .prologue
    .line 298
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p3

    .line 301
    invoke-virtual/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->insertQuietMode(Landroid/content/Context;JJLjava/lang/String;)Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p3

    .line 302
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->queryQuietModeUniqueID(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, uID:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object/from16 v6, p8

    .line 304
    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->requestPendingIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .end local v7           #uID:Ljava/lang/String;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p3

    .line 308
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->queryQuietModeUniqueID(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .restart local v7       #uID:Ljava/lang/String;
    const-string v0, "com.android.lgesettings"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[updateQuietMode] PKG_SETTINGS not delete DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p3

    .line 312
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->deleteDuplicatedQuietMode(Landroid/content/Context;JJLjava/lang/String;)V

    .line 315
    :cond_2
    const-string v0, "-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateQuietMode] UID delete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, p1, v7}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTimeSetingForDirect(Landroid/content/Context;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z
    .locals 8
    .parameter "mContext"
    .parameter "mQuietModeInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 282
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "start_time"

    invoke-virtual {p2, v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeForDirectToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "end_time"

    invoke-virtual {p2, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeForDirectToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "QuietModeSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTimeSetingForDirect] start time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeForDirectToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v3, "QuietModeSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTimeSetingForDirect] end time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeForDirectToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v2, "package_name=?"

    .line 289
    .local v2, where:Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "com.android.lgesettings.DIRECT"

    aput-object v3, v0, v7

    .line 291
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    return v6
.end method


# virtual methods
.method public getQmodeTimeUpdate(JJ)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1057
    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1063
    invoke-direct {p0, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getDBStartTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 1064
    invoke-direct {p0, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getDBEndTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 1066
    const-string v6, "QuietModeSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getQmodeTime] starttime    :   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   --- endTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v6, "QuietModeSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getQmodeTime] newStartTime    : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   --- newEndTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const-string v6, "QuietModeSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getQmodeTime] currenttime :    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    cmp-long v6, v0, p3

    if-lez v6, :cond_0

    .line 1073
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[getQmodeTime] ancient event is not optimizated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :goto_0
    return v10

    .line 1078
    :cond_0
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 1079
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1080
    invoke-direct {p0, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1081
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1083
    :cond_1
    invoke-direct {p0, p3, p4, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 1084
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1085
    invoke-direct {p0, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1086
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1087
    :cond_2
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 1089
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1090
    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1091
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1092
    :cond_3
    invoke-direct {p0, v4, v5, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 1093
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1094
    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1095
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1096
    :cond_4
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 1100
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1101
    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1102
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1103
    :cond_5
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_6

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 1106
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1107
    invoke-direct {p0, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1108
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1109
    :cond_6
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_7

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_7

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCompareTime(JJ)I

    move-result v0

    if-ne v0, v9, :cond_7

    .line 1113
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBStartTime(J)V

    .line 1114
    invoke-direct {p0, p3, p4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->setDBEndTime(J)V

    .line 1115
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isCompareTime Test Case 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1117
    :cond_7
    const-string v0, "QuietModeSettingsService"

    const-string v1, "[getQmodeTime] not exist compareTime Case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public insertQuietMode(Landroid/content/Context;JJLjava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "startTimeMillis"
    .parameter "endTimeMillis"
    .parameter "packageName"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->insertQuietMode(JJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEndCase(Landroid/content/Context;JJLjava/lang/String;Lcom/android/lgesettings/quietmode/QuietModeInfo;)Z
    .locals 2
    .parameter "context"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "appName"
    .parameter "quietModeInfo"

    .prologue
    .line 865
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isEndCase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const-string v1, "QuietModeSettingsService"

    invoke-virtual {v0, p4, p5, p6, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isEndCase(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStartCase(Landroid/content/Context;JJLcom/android/lgesettings/quietmode/QuietModeInfo;)Z
    .locals 2
    .parameter "context"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "quietModeInfo"

    .prologue
    .line 945
    const-string v0, "QuietModeSettingsService"

    const-string v1, "isStartCase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const-string v1, "QuietModeSettingsService"

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isStartCase(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 657
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 615
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QuietModeSettingsService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 617
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 618
    const-string v1, "QuietModeSettingsService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mContentResolver:Landroid/content/ContentResolver;

    .line 622
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mObserverQuietMode:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 625
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mHandlerQuietMode:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;

    .line 627
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mServiceLooper:Landroid/os/Looper;

    .line 628
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mServiceHandler:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;

    .line 630
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 631
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mObserverQuietMode:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 651
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 652
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 635
    const-string v1, "QuietModeSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand()- flags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  statId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mServiceHandler:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 639
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mServiceHandler:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
