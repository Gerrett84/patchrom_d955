.class public Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmotionalLEDEffectActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2512
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 2515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 2516
    .local v4, itemId:I
    const v9, 0x102002c

    if-ne v4, v9, :cond_2

    .line 2517
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "settings_style"

    invoke-static {v9, v11, v12}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2519
    .local v5, settingStyle:I
    if-ne v5, v10, :cond_1

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2520
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2521
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2522
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2523
    .local v7, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 2524
    .local v8, topActivityClassName:Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2525
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

    .line 2527
    const-string v9, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2528
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->onBackPressed()V

    move v9, v10

    .line 2548
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #settingStyle:I
    .end local v7           #topActivity:Landroid/content/ComponentName;
    .end local v8           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return v9

    .line 2531
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    .restart local v3       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5       #settingStyle:I
    .restart local v7       #topActivity:Landroid/content/ComponentName;
    .restart local v8       #topActivityClassName:Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.settings.SETTINGS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2532
    .local v6, settings:Landroid/content/Intent;
    const/high16 v9, 0x1020

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2533
    const-string v9, "android.intent.extra.TEXT"

    const-string v11, "display"

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2534
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->startActivity(Landroid/content/Intent;)V

    .line 2535
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->finish()V

    move v9, v10

    .line 2536
    goto :goto_0

    .line 2539
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6           #settings:Landroid/content/Intent;
    .end local v7           #topActivity:Landroid/content/ComponentName;
    .end local v8           #topActivityClassName:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2540
    .local v2, i:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2541
    const-string v9, "com.android.lgesettings"

    const-string v11, "com.android.lgesettings.Settings$DisplaySettingsActivity"

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2543
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->startActivity(Landroid/content/Intent;)V

    .line 2544
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;->finish()V

    move v9, v10

    .line 2545
    goto :goto_0

    .line 2548
    .end local v2           #i:Landroid/content/Intent;
    .end local v5           #settingStyle:I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_0
.end method
