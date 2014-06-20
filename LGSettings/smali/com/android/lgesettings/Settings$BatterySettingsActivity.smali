.class public Lcom/android/lgesettings/Settings$BatterySettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatterySettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3031
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 3034
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 3035
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BatterySettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02032b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 3036
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 3040
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 3041
    .local v3, itemId:I
    const v9, 0x102002c

    if-ne v3, v9, :cond_1

    .line 3042
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BatterySettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "settings_style"

    invoke-static {v9, v11, v12}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3044
    .local v4, settingStyle:I
    if-ne v4, v10, :cond_1

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3045
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/Settings$BatterySettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3046
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 3047
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3048
    .local v7, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 3049
    .local v8, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 3050
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v9, "kimyow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "top="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  base="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const-string v9, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3053
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BatterySettingsActivity;->onBackPressed()V

    move v9, v10

    .line 3067
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #settingStyle:I
    .end local v7           #topActivity:Landroid/content/ComponentName;
    .end local v8           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return v9

    .line 3056
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    .restart local v2       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4       #settingStyle:I
    .restart local v7       #topActivity:Landroid/content/ComponentName;
    .restart local v8       #topActivityClassName:Ljava/lang/String;
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.settings.SETTINGS"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3057
    .local v5, settings:Landroid/content/Intent;
    const/high16 v9, 0x1020

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3058
    invoke-static {v8}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3059
    .local v6, tabIndex:Ljava/lang/String;
    const-string v9, "kimyow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tabIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3061
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/Settings$BatterySettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 3062
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$BatterySettingsActivity;->finish()V

    move v9, v10

    .line 3063
    goto :goto_0

    .line 3067
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #settingStyle:I
    .end local v5           #settings:Landroid/content/Intent;
    .end local v6           #tabIndex:Ljava/lang/String;
    .end local v7           #topActivity:Landroid/content/ComponentName;
    .end local v8           #topActivityClassName:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_0
.end method
