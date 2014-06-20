.class public Lcom/android/lgesettings/wifi/WifiAutoControlRegister;
.super Ljava/lang/Object;
.source "WifiAutoControlRegister.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mWifiOffPendingIntent:Landroid/app/PendingIntent;

.field private mWifiOnPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0x800

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v2, "WifiAutoControlRegister"

    const-string v3, "WifiAutoControlRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mContext:Landroid/content/Context;

    .line 30
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mAlarmManager:Landroid/app/AlarmManager;

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.settings.wifi.WIFI_AUTO_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, sendWifiOnIntent:Landroid/content/Intent;
    const-string v2, "wifi_auto_control_state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mWifiOnPendingIntent:Landroid/app/PendingIntent;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.settings.wifi.WIFI_AUTO_CONTROL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, sendWifiOffIntent:Landroid/content/Intent;
    const-string v2, "wifi_auto_control_state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mWifiOffPendingIntent:Landroid/app/PendingIntent;

    .line 42
    .end local v0           #sendWifiOffIntent:Landroid/content/Intent;
    .end local v1           #sendWifiOnIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateWifiControlTime(IILandroid/app/PendingIntent;)Z
    .locals 11
    .parameter "hour"
    .parameter "minute"
    .parameter "intent"

    .prologue
    const/16 v10, 0xc

    const/16 v6, 0xb

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v4, :cond_2

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 84
    .local v7, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 87
    .local v8, curHour:I
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 89
    .local v9, curMinute:I
    if-lt p1, v8, :cond_0

    if-ne p1, v8, :cond_1

    if-gt p2, v9, :cond_1

    .line 90
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v7, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 92
    :cond_1
    invoke-virtual {v7, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v7, v10, p2}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v4, 0xd

    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 95
    const/16 v4, 0xe

    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 99
    .local v2, triggerAtTime:J
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 100
    const-string v0, "WifiAutoControlRegister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Wi-Fi control time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v2           #triggerAtTime:J
    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v8           #curHour:I
    .end local v9           #curMinute:I
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private updateWifiOffAlarm(II)Z
    .locals 1
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mWifiOffPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiControlTime(IILandroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method private updateWifiOnAlarm(II)Z
    .locals 1
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mWifiOnPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiControlTime(IILandroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelWifiAutoAlarms()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mWifiOnPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->mWifiOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 69
    :cond_0
    return-void
.end method

.method public updateWifiOffAlarm(I)Z
    .locals 3
    .parameter "wifiOffTime"

    .prologue
    .line 55
    if-gez p1, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 61
    :goto_0
    return v2

    .line 58
    :cond_0
    div-int/lit8 v0, p1, 0x3c

    .line 59
    .local v0, hourOfDay:I
    rem-int/lit8 v1, p1, 0x3c

    .line 61
    .local v1, minute:I
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiOffAlarm(II)Z

    move-result v2

    goto :goto_0
.end method

.method public updateWifiOnAlarm(I)Z
    .locals 3
    .parameter "wifiOnTime"

    .prologue
    .line 45
    if-gez p1, :cond_0

    .line 46
    const/4 v2, 0x0

    .line 51
    :goto_0
    return v2

    .line 48
    :cond_0
    div-int/lit8 v0, p1, 0x3c

    .line 49
    .local v0, hourOfDay:I
    rem-int/lit8 v1, p1, 0x3c

    .line 51
    .local v1, minute:I
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiOnAlarm(II)Z

    move-result v2

    goto :goto_0
.end method
