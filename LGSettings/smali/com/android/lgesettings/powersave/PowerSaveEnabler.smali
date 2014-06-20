.class public Lcom/android/lgesettings/powersave/PowerSaveEnabler;
.super Ljava/lang/Object;
.source "PowerSaveEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/app/Fragment;)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    .line 25
    iput-object p3, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mFragment:Landroid/app/Fragment;

    .line 32
    return-void
.end method

.method private doPowerSaveService(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.powersave.PowerSaveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 76
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 77
    .local v2, value:I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->setSwitchChecked(Z)V

    .line 79
    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_enabled"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, preState:I
    if-eq v1, v2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_enabled"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-direct {p0, p2}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->doPowerSaveService(Z)V

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/android/lgesettings/powersave/PowerSaveSettings;

    if-eqz v3, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/lgesettings/powersave/PowerSaveSettings;

    .line 87
    .local v0, fragment:Lcom/android/lgesettings/powersave/PowerSaveSettings;
    invoke-virtual {v0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->onSwitchCheckedChanged(Z)V

    .line 90
    .end local v0           #fragment:Lcom/android/lgesettings/powersave/PowerSaveSettings;
    :cond_1
    return-void

    .end local v1           #preState:I
    .end local v2           #value:I
    :cond_2
    move v2, v3

    .line 76
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_enabled"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 66
    .local v0, isEnabled:Z
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 67
    return-void
.end method

.method public setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    :cond_0
    return-void
.end method
