.class public Lcom/android/providers/settings/SimChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimChangedReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 35
    iput-object p1, p0, Lcom/android/providers/settings/SimChangedReceiver;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 40
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, stateExtra:Ljava/lang/String;
    const-string v6, "SettingsProviderInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Extra] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " == \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "LOADED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' ??"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v4, :cond_0

    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    new-instance v3, Lcom/android/providers/settings/SettingsProviderInitializer;

    invoke-direct {v3}, Lcom/android/providers/settings/SettingsProviderInitializer;-><init>()V

    .line 46
    .local v3, mSettingsProviderInitializer:Lcom/android/providers/settings/SettingsProviderInitializer;
    iget-object v6, p0, Lcom/android/providers/settings/SimChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/android/providers/settings/SettingsProviderInitializer;->initSettingsProvider(Landroid/content/Context;)V

    .line 73
    .end local v3           #mSettingsProviderInitializer:Lcom/android/providers/settings/SettingsProviderInitializer;
    .end local v4           #stateExtra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 52
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    .line 54
    .local v2, isSecondaryUser:Z
    :goto_1
    if-eq v6, v2, :cond_0

    .line 58
    iget-object v6, p0, Lcom/android/providers/settings/SimChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "time_zone_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, timezoneID:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 60
    iget-object v6, p0, Lcom/android/providers/settings/SimChangedReceiver;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 61
    .local v1, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 63
    iget-object v6, p0, Lcom/android/providers/settings/SimChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "time_zone_id"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    const-string v6, "SettingsProviderInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[timezoneID] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v1           #alarm:Landroid/app/AlarmManager;
    .end local v2           #isSecondaryUser:Z
    .end local v5           #timezoneID:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 67
    .restart local v2       #isSecondaryUser:Z
    .restart local v5       #timezoneID:Ljava/lang/String;
    :cond_3
    const-string v6, "SettingsProviderInitializer"

    const-string v7, "timezoneID is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
