.class public Lcom/android/lgesettings/lockscreen/LockSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    const-string v2, "com.lge.intent.action.DISABLED_POWER_BUTTON_LOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v2, "lockscreensettings"

    const-string v3, "Disable Power button lock intent action received from EAS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_0

    .line 22
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const-string v2, "config_feature_fcc_notification"

    invoke-static {p1, v2}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "Settings"

    const-string v3, " Bootcompleted Settings......................"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1}, Lcom/android/lgesettings/lockscreen/LockUtil;->getFccNotificationFirstBootFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1}, Lcom/android/lgesettings/lockscreen/LockUtil;->notifyFccNotification(Landroid/content/Context;)V

    goto :goto_0
.end method
