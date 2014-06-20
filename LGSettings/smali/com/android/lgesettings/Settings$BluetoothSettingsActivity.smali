.class public Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2072
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 2076
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2078
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2079
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2080
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2082
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    .line 2086
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 2087
    .local v4, itemId:I
    const v10, 0x102002c

    if-ne v4, v10, :cond_2

    .line 2088
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "settings_style"

    invoke-static {v10, v12, v13}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2089
    .local v5, settingStyle:I
    if-ne v5, v11, :cond_1

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2090
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2091
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2092
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2093
    .local v8, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 2094
    .local v9, topActivityClassName:Ljava/lang/String;
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2095
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v10, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2096
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->onBackPressed()V

    move v10, v11

    .line 2116
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #settingStyle:I
    .end local v8           #topActivity:Landroid/content/ComponentName;
    .end local v9           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return v10

    .line 2099
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    .restart local v3       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5       #settingStyle:I
    .restart local v8       #topActivity:Landroid/content/ComponentName;
    .restart local v9       #topActivityClassName:Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.settings.SETTINGS"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2100
    .local v6, settings:Landroid/content/Intent;
    const/high16 v10, 0x1020

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2101
    invoke-static {v9}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2102
    .local v7, tabIndex:Ljava/lang/String;
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2103
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2104
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->finish()V

    move v10, v11

    .line 2105
    goto :goto_0

    .line 2108
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6           #settings:Landroid/content/Intent;
    .end local v7           #tabIndex:Ljava/lang/String;
    .end local v8           #topActivity:Landroid/content/ComponentName;
    .end local v9           #topActivityClassName:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2109
    .local v2, i:Landroid/content/Intent;
    const/high16 v10, 0x3400

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2110
    const-string v10, "com.android.lgesettings"

    const-string v12, "com.android.lgesettings.Settings"

    invoke-virtual {v2, v10, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2112
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;->finish()V

    move v10, v11

    .line 2113
    goto :goto_0

    .line 2116
    .end local v2           #i:Landroid/content/Intent;
    .end local v5           #settingStyle:I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v10

    goto :goto_0
.end method
