.class public Lcom/android/lgesettings/Airplanemode_dummy;
.super Landroid/app/Activity;
.source "Airplanemode_dummy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 22
    .local v2, setting_style_default_value:I
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    const/4 v2, 0x1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Airplanemode_dummy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_style"

    invoke-static {v4, v5, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 28
    .local v3, style:I
    if-nez v3, :cond_4

    .line 29
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, component:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Airplanemode_dummy;->startActivity(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/lgesettings/Airplanemode_dummy;->finish()V

    .line 56
    return-void

    .line 33
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isVeeModel(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 36
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$TetherNetworkSettingsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 41
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 44
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_5
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isVeeModel(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 45
    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 47
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$TetherNetworkSettingsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto/16 :goto_0
.end method
