.class Lcom/android/lgesettings/powersave/BatterySettings$2;
.super Landroid/database/ContentObserver;
.source "BatterySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/powersave/BatterySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/BatterySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/BatterySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/lgesettings/powersave/BatterySettings$2;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 181
    const-string v1, "BatterySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableObserver::onChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings$2;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    #calls: Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/lgesettings/powersave/BatterySettings;->access$500(Lcom/android/lgesettings/powersave/BatterySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_enabled"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 184
    .local v0, isChecked:Z
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings$2;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    #getter for: Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;
    invoke-static {v1}, Lcom/android/lgesettings/powersave/BatterySettings;->access$600(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings$2;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    #getter for: Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;
    invoke-static {v1}, Lcom/android/lgesettings/powersave/BatterySettings;->access$600(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setChecked(Z)V

    .line 187
    :cond_1
    return-void
.end method
