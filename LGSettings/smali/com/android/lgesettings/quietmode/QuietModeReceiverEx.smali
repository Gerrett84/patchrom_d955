.class public Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;
.super Landroid/content/BroadcastReceiver;
.source "QuietModeReceiverEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;
    }
.end annotation


# static fields
.field private static mIsBeforeTimeChange:I


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mEnd_time:J

.field private mPKG_Name:Ljava/lang/String;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mStart_time:J

.field private mTimeInfo:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    sput v0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 457
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 467
    const-string v0, "QuietModeReceiverEx"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private requestQuietModeCancel(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method private requestQuietModeOff(Landroid/content/Intent;)V
    .locals 3
    .parameter "i"

    .prologue
    .line 248
    const-string v0, "action"

    const-string v1, "lge.settings.QMODE_OFF_REQUEST"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v0, "com.android.lgesettings"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateScheduleTime()V

    .line 252
    const-string v0, "START_TIME"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 253
    const-string v0, "END_TIME"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method private requestQuietModeOffNow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 431
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    const-string v0, "[QUIET_MODE_OFF_NOW] Current quiet mode state is off - return!!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->quietModeChangedBroadCast()V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v0, "[QUIET_MODE_OFF_NOW] EndAction()!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-wide v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mStart_time:J

    iget-wide v3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mEnd_time:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endAction(JJ)V

    .line 439
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-ne v5, v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTime()Z

    move-result v0

    if-ne v5, v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isDirectChangeQuietModeStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v5, v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;->mPakcage_name:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    goto :goto_0
.end method

.method private requestQuietModeOn(Landroid/content/Intent;)V
    .locals 3
    .parameter "i"

    .prologue
    .line 259
    const-string v0, "action"

    const-string v1, "lge.settings.QMODE_ON_REQUEST"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v0, " [QUIET_MODE_ON_REQUEST_ACTION] insert "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 263
    const-string v0, "com.android.lgesettings"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateScheduleTime()V

    .line 266
    const-string v0, "START_TIME"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    const-string v0, "END_TIME"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const-string v0, "[QUIET_MODE_ON_SERVICE] not onff case - return!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private requestQuietModeOnNow()V
    .locals 6

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBootNotiUpdate()I

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBootNotiUpdate(I)V

    .line 420
    :cond_0
    const-string v0, "[QUIET_MODE_ON_NOW] StartAction()!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mStart_time:J

    iget-wide v4, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mEnd_time:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startAction(Ljava/lang/String;JJ)V

    .line 428
    :goto_0
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 414
    const-string v0, "[QUIET_MODE_ON_NOW] Current quiet mode state is on - return!!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->quietModeChangedBroadCast()V

    goto :goto_0
.end method

.method private requestQuietModeReg(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 363
    const-string v0, "com.android.lgesettings"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "[requestQuietModeReg] mPKG_Name == Settings"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateScheduleTime()V

    .line 366
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v1, "START_TIME"

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 367
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v1, "END_TIME"

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 368
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 370
    :cond_0
    const-string v0, "com.android.lgesettings.DIRECT"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateDirectOn()V

    .line 372
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 387
    const-string v0, "com.android.lgesettings"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    const-string v2, "action"

    const-string v3, "lge.settings.QMODE_OFF_REQUEST"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v2, "START_TIME"

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 394
    const-string v2, "END_TIME"

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 395
    const-string v2, "TEMP_CASE"

    const-string v3, "reg_off_case"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 399
    const-string v1, "beginStartingService! - QUIET_MODE_OFF_SERVICE in REGISTER"

    invoke-direct {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setUPdateDirectOn()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x5265c00

    const/4 v11, 0x0

    const-wide/16 v7, 0x2710

    const-wide/16 v9, -0x1

    .line 333
    new-instance v0, Ljava/util/Date;

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 334
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0, v11}, Ljava/util/Date;->setHours(I)V

    .line 335
    invoke-virtual {v0, v11}, Ljava/util/Date;->setMinutes(I)V

    .line 336
    invoke-virtual {v0, v11}, Ljava/util/Date;->setSeconds(I)V

    .line 337
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 338
    .local v3, s_time:J
    div-long/2addr v3, v7

    .line 339
    mul-long/2addr v3, v7

    .line 341
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v6, "START_TIME"

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 343
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long v1, v5, v12

    .line 345
    .local v1, e_time:J
    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 346
    add-long v5, v1, v12

    invoke-virtual {v0, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 347
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 350
    :cond_0
    div-long/2addr v1, v7

    .line 351
    mul-long/2addr v1, v7

    .line 353
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v6, "END_TIME"

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setUPdateDirectOn] req setting start time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v7, "START_TIME"

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setUPdateDirectOn] req setting end time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v7, "END_TIME"

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setUPdateDirectOn] req setting start time full : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v8, "START_TIME"

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setUPdateDirectOn] req setting end time full : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v8, "END_TIME"

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private setUPdateScheduleTime()V
    .locals 14

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 280
    const-string v0, "com.lge.settings.TIME_SET"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    :cond_0
    const-string v0, "[setUPdateScheduleTime] time_set or timezone change!! update case"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 289
    :cond_1
    new-instance v10, Ljava/util/Date;

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 290
    .local v10, sDate:Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 292
    .local v7, eDate:Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUPdateScheduleTime] before start time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUPdateScheduleTime] before end time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 295
    const/4 v13, 0x1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->currentOnCase(JJJ)Z

    move-result v0

    if-ne v13, v0, :cond_2

    .line 296
    new-instance v10, Ljava/util/Date;

    .end local v10           #sDate:Ljava/util/Date;
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 299
    .restart local v10       #sDate:Ljava/util/Date;
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/util/Date;->setHours(I)V

    .line 300
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 302
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 303
    .local v11, s_time:J
    const-wide/16 v0, 0x2710

    div-long/2addr v11, v0

    .line 304
    const-wide/16 v0, 0x2710

    mul-long/2addr v11, v0

    .line 306
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v11, v12}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/util/Date;->setHours(I)V

    .line 309
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 311
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 313
    .local v8, e_time:J
    cmp-long v0, v11, v8

    if-lez v0, :cond_3

    .line 314
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, v8

    invoke-virtual {v7, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 315
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 318
    :cond_3
    const-wide/16 v0, 0x2710

    div-long/2addr v8, v0

    .line 319
    const-wide/16 v0, 0x2710

    mul-long/2addr v8, v0

    .line 321
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v8, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 328
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUPdateScheduleTime] After start time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUPdateScheduleTime] After end time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 330
    .end local v7           #eDate:Ljava/util/Date;
    .end local v8           #e_time:J
    .end local v10           #sDate:Ljava/util/Date;
    .end local v11           #s_time:J
    :goto_0
    return-void

    .line 284
    :cond_5
    const-string v0, "[setUPdateScheduleTime] Reservation time is the future than the present."

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public QuietModeReceiverDisEnable(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 522
    const-string v1, "QuietModeReceiverEx"

    const-string v2, "QuietModeReceiverEx disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 527
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 82
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 83
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mContext:Landroid/content/Context;

    .line 85
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 86
    const-class v0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    invoke-virtual {v7, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    .line 89
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeSupportModelEx()Z

    move-result v0

    if-ne v10, v0, :cond_3

    .line 93
    const-string v0, "Quiet mdoe suport model!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v1, "PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v1, "START_TIME"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mStart_time:J

    .line 119
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v1, "END_TIME"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mEnd_time:J

    .line 121
    const-string v0, "--------------------------------------------------------------------------------------------------"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 126
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-wide v3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mStart_time:J

    iget-wide v5, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mEnd_time:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;-><init>(Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;Lcom/android/lgesettings/quietmode/QuietModeInfo;JJ)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mTimeInfo:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;

    .line 127
    const-string v0, "QuietModeReceiverEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[00] Action NAME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "QuietModeReceiverEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[01] APP_NAME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[02] Current time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[03] Start time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mStart_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        End time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mEnd_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[04] Start String : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mTimeInfo:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->getStartDayInfoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | End Stirng : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mTimeInfo:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->getEndDayInfoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Current String : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mTimeInfo:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->getCurrentDayInfoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 136
    if-eqz v8, :cond_0

    .line 137
    const-string v0, "uri"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    const-string v0, "[BOOT_COMPLETED] onReceive case!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 142
    const-string v0, "beginStartingService! - BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBootNotiUpdate(I)V

    .line 144
    const/4 v0, 0x2

    sput v0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    .line 145
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateScheduleTime()V

    .line 146
    invoke-static {p1, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BOOT_COMPLETED] - isQuietModeState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 244
    :cond_1
    :goto_1
    const-string v0, "--------------------------------------------------------------------------------------------------"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 245
    :cond_2
    :goto_2
    return-void

    .line 96
    :cond_3
    const-string v0, "Quiet mdoe not suport model!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->QuietModeReceiverDisEnable(Landroid/content/Context;)V

    goto :goto_2

    .line 112
    :cond_4
    const-string v0, "Bundle is null!!"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    const-string v1, "action"

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 150
    :cond_5
    const-string v0, "lge.settings.QMODE_SCHEDULE_NOTI_DELETE"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endNotification()V

    goto :goto_1

    .line 153
    :cond_6
    const-string v0, "lge.settings.QMODE_ON"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    const-string v0, " [QUIET_MODE_ON] insert  "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-ne v10, v0, :cond_7

    .line 156
    const-string v0, " current state on this case return"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->quietModeChangedBroadCast()V

    goto :goto_2

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isDirectChangeQuietModeStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "[QUIET_MODE_ON] isDirectChangeQuietModeStatus"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBeforeQuietModeStatus(I)V

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerAlarmAllTime()V

    goto :goto_2

    .line 168
    :cond_8
    const-string v0, "lge.settings.QMODE_OFF"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/16 v1, 0x4b3

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerAlarmCancel(I)V

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_9

    .line 171
    const-string v0, " current state off, this case return"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->quietModeChangedBroadCast()V

    goto/16 :goto_2

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mPKG_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isDirectChangeQuietModeStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, " [QUIET_MODE_OFF] insert  "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v9}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBeforeQuietModeStatus(I)V

    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const-string v1, "lge.settings.QMODE_CANCEL"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDirectCaseBundleInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    invoke-direct {p0, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeCancel(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 185
    :cond_a
    const-string v0, "lge.settings.QMODE_REGISTER"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    const-string v0, " [QUIET_MODE_REGISTER] insert  "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeReg(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 190
    :cond_b
    const-string v0, "lge.settings.QMODE_CANCEL"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    const-string v0, " [QUIET_MODE_CANCEL] insert  "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeCancel(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 195
    :cond_c
    const-string v0, "lge.settings.QMODE_ON_PLEASE"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 196
    const-string v0, " [QUIET_MODE_ON_PLEASE_ACTION] insert  "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeOn(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 200
    :cond_d
    const-string v0, "lge.settings.QMODE_OFF_PLEASE"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    const-string v0, " [QUIET_MODE_OFF_PLEASE_ACTION] insert  "

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeOff(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 205
    :cond_e
    const-string v0, "lge.settings.QMODE_ON_NOW"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    sput v10, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    .line 207
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeOnNow()V

    goto/16 :goto_2

    .line 210
    :cond_f
    const-string v0, "lge.settings.QMODE_OFF_NOW"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 211
    sput v9, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    .line 212
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->requestQuietModeOffNow()V

    goto/16 :goto_2

    .line 215
    :cond_10
    const-string v0, "com.lge.settings.TIME_SET"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TIME_SET] mIsBeforeTimeChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 219
    sget v0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    if-eq v0, v11, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 223
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateScheduleTime()V

    .line 224
    invoke-static {p1, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 226
    :cond_11
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TIMEZONE_CHANGED] mIsBeforeTimeChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->log(Ljava/lang/String;)V

    .line 230
    sget v0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mIsBeforeTimeChange:I

    if-eq v0, v11, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->setUPdateScheduleTime()V

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 236
    invoke-static {p1, v7}, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 238
    :cond_12
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    goto/16 :goto_2
.end method
