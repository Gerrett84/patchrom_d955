.class public Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiTaskingSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3336
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 3339
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 3340
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020343

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 3341
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 3345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 3346
    .local v3, itemId:I
    const v9, 0x102002c

    if-ne v3, v9, :cond_1

    .line 3347
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "settings_style"

    invoke-static {v9, v11, v12}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3349
    .local v4, settingStyle:I
    if-ne v4, v10, :cond_1

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3350
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3351
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 3352
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3353
    .local v7, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 3354
    .local v8, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 3355
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v9, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3356
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;->onBackPressed()V

    move v9, v10

    .line 3369
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #settingStyle:I
    .end local v7           #topActivity:Landroid/content/ComponentName;
    .end local v8           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return v9

    .line 3359
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

    .line 3360
    .local v5, settings:Landroid/content/Intent;
    const/high16 v9, 0x1020

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3361
    invoke-static {v8}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3362
    .local v6, tabIndex:Ljava/lang/String;
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3363
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 3364
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;->finish()V

    move v9, v10

    .line 3365
    goto :goto_0

    .line 3369
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
