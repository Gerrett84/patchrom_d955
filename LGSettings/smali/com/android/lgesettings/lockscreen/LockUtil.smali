.class public Lcom/android/lgesettings/lockscreen/LockUtil;
.super Ljava/lang/Object;
.source "LockUtil.java"


# static fields
.field private static FCC_NOTI_ID:I

.field private static FCC_NOTI_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "FCC_NOTIFICATION_KEY"

    sput-object v0, Lcom/android/lgesettings/lockscreen/LockUtil;->FCC_NOTI_KEY:Ljava/lang/String;

    .line 23
    const/16 v0, 0x3e9

    sput v0, Lcom/android/lgesettings/lockscreen/LockUtil;->FCC_NOTI_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFccNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    invoke-static {p0}, Lcom/android/lgesettings/lockscreen/LockUtil;->getFccNotificationFirstBootFlag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 116
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/android/lgesettings/lockscreen/LockUtil;->FCC_NOTI_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/lgesettings/lockscreen/LockUtil;->setFccNotificationFirstBootFlag(Landroid/content/Context;I)V

    .line 119
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public static getActivatedLockScreen(Landroid/app/Activity;)I
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 25
    if-nez p0, :cond_0

    .line 63
    :goto_0
    return v2

    .line 28
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v6

    if-nez v6, :cond_4

    .line 30
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lockscreen_type_password_unspecified"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, curLockScreenType:I
    const-string v2, "config_feature_easy_ui"

    invoke-static {p0, v2}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    move v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v2, "config_feature_touch_lock"

    invoke-static {p0, v2}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, v5, :cond_3

    move v2, v5

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    .line 46
    .end local v0           #curLockScreenType:I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 48
    const/4 v2, 0x4

    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 52
    :sswitch_0
    const/4 v2, 0x5

    goto :goto_0

    .line 54
    :sswitch_1
    const/4 v2, 0x6

    goto :goto_0

    .line 56
    :sswitch_2
    const/4 v2, 0x7

    goto :goto_0

    .line 58
    :sswitch_3
    const/16 v2, 0x8

    goto :goto_0

    .line 60
    :sswitch_4
    const/16 v2, 0x9

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getFccNotificationFirstBootFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/lgesettings/lockscreen/LockUtil;->FCC_NOTI_KEY:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, firstBoot:I
    if-ne v1, v3, :cond_0

    .line 125
    const/4 v2, 0x1

    .line 127
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, result:Z
    const-string v5, "config_feature_enable_kids_home_pattern"

    invoke-static {p0, v5}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, other:Landroid/content/Context;
    const/4 v2, 0x0

    .line 73
    .local v2, pref:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v5, "com.lge.launcher2"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 74
    const-string v5, "show_the_kids_guide"

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    :goto_0
    if-eqz v2, :cond_0

    .line 80
    const-string v5, "plushome_mode_enable"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 82
    :cond_0
    if-eqz v3, :cond_1

    const-string v5, "kids"

    const-string v6, "service.plushome.currenthome"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    .line 86
    .end local v1           #other:Landroid/content/Context;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_1
    return v4

    .line 76
    .restart local v1       #other:Landroid/content/Context;
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static notifyFccNotification(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/lgesettings/lockscreen/FccNotificationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    const v3, 0x7f02036d

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 99
    const v3, 0x7f081063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 100
    const v3, 0x7f081064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 101
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 102
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 104
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 108
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 109
    sget v2, Lcom/android/lgesettings/lockscreen/LockUtil;->FCC_NOTI_ID:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 110
    return-void
.end method

.method public static setFccNotificationFirstBootFlag(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/lgesettings/lockscreen/LockUtil;->FCC_NOTI_KEY:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    return-void
.end method
