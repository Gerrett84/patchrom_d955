.class public Lcom/android/lgesettings/TimedSilentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimedSilentReceiver.java"


# instance fields
.field private action:Ljava/lang/String;

.field private isQuietTimeState:Z

.field private mContext:Landroid/content/Context;

.field private mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method alarmReceived(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 98
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/lgesettings/TimedSilentReceiver;->isQuietTimeState:Z

    if-ne v2, v3, :cond_0

    .line 100
    :try_start_0
    const-string v2, "start"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    .local v1, flag:Z
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[1] flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[2] SilentState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[3] Nopeatcase : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[4] RevertTimecase : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->isRevertTimecase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TimedSilentReceiver;->soundProfileStateChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #flag:Z
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TimedSilentReceiver"

    const-string v3, "[5] alarmReceived exception!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "TimedSilentReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "TimedSilentReceiver"

    const-string v3, "silent mode off from the current time."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOff()V

    goto :goto_0
.end method

.method audioModeChangeCheck()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatStartTimeCase()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 162
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[SoundProfileChanged] isSaveTimeCurrentTime_Intaval() -> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBBeforeAudioMode(I)V

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBAfterAudioMode(I)V

    .line 166
    :cond_0
    return-void
.end method

.method bootReceived()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-boolean v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->isQuietTimeState:Z

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 75
    :cond_0
    const-string v0, "TimedSilentReceiver"

    const-string v1, "BOOT_COMPLETED & QuietTime status On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOff()V

    .line 80
    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getDBootCase()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBootCase(I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->registerAlarm(Z)V

    .line 88
    :cond_2
    return-void

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBootCase(I)V

    goto :goto_0
.end method

.method checkActivity()Z
    .locals 2

    .prologue
    .line 169
    const-string v0, "com.android.lgesettings.SubSoundSettings"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.lgesettings.TimedSilentSettings"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[checkActivity] SubSoundSetting or TimedSilentSettings in!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 39
    new-instance v0, Lcom/android/lgesettings/QuietTimeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->isQuietTimeState:Z

    .line 41
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentReceiver;->bootReceived()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "TimedSilentReceiver"

    const-string v1, "action null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentReceiver;->soundProfileChanged_evnet()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setTime(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setTime(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->registerAlarm(Z)V

    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "com.lge.settings.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->registerAlarm(Z)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TimedSilentReceiver;->soundProfileStateChange(Z)V

    goto :goto_0

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "settings.Quiet_Time.ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/TimedSilentReceiver;->alarmReceived(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method setNorepeatCase_mode()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatStartTimeCase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[SP_Changed] silent mode [off] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "quiet_time_chanted_action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    :cond_0
    return-void
.end method

.method soundProfileChanged_evnet()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentReceiver;->audioModeChangeCheck()V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentReceiver;->checkActivity()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentReceiver;->setNorepeatCase_mode()V

    goto :goto_0
.end method

.method soundProfileStateChange(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    .line 119
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] soundProfileStateChange init!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 121
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] NR : silent mode [on] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOn()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] NR : silent mode [off] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOff()V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 129
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] YN : silent mode [off] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 133
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTimeHour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 136
    const-string v0, "TimedSilentReceiver"

    const-string v1, "isSilentState is false!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before Sound profile set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setSoundProfile(I)V

    goto/16 :goto_0

    .line 140
    :cond_4
    const-string v0, "TimedSilentReceiver"

    const-string v1, "isSilentState is true!, silentModeOn!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->silentModeOn()V

    goto/16 :goto_0

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->restorationAudioCheck()V

    goto/16 :goto_0
.end method
