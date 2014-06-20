.class public Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "PowerSaveSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$1;,
        Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mListener:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;

    .line 58
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setWidgetLayoutResource(I)V

    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->doPowerSaveService(Z)V

    return-void
.end method

.method private doPowerSaveService(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.powersave.PowerSaveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 67
    const v1, 0x7f0a020b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 69
    const-string v1, "power_save_enabler"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_save_enabled"

    invoke-static {v1, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mListener:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mListener:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void

    :cond_1
    move v1, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string v1, "power_save_eco_mode"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const v1, 0x7f0a0228

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, mDivider:Landroid/widget/ImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_mode"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
