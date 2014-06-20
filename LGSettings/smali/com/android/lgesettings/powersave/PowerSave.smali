.class public Lcom/android/lgesettings/powersave/PowerSave;
.super Ljava/lang/Object;
.source "PowerSave.java"


# static fields
.field private static MINIMUM_BACKLIGHT:I

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mPowerSavePref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave;->mPowerSavePref:Landroid/content/SharedPreferences;

    .line 119
    sput-object p1, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    .line 120
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    const-string v1, "pref_power_save"

    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave;->mPowerSavePref:Landroid/content/SharedPreferences;

    .line 124
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    .line 127
    const-string v0, "PowerSave"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MINIMUM_BACKLIGHT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveWifi()V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveAutoScreenTone()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doSync()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doBrightness()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doTouch()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doScreenTimeout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doFrontLed()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doCpu()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doEmotionalLED()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->doAutoScreenTone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveNfc()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveBrightness()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveTouch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveEmotionalLED()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveCpu()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveScreenTimeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveFrontLed()V

    return-void
.end method

.method private applyPowerSaveAutoScreenTone()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 534
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isOLEDModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_auto_screen_tone"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "plc_mode_set"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 539
    .local v0, current_mode:I
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_auto_screen_tone_restore"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "plc_mode_set"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveBrightness()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    .line 309
    sget-object v4, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "power_save_brightness_adjust"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v4, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "power_save_brightness"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, brightnessPercent:I
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSave;->getValue(I)I

    move-result v0

    .line 320
    .local v0, brightness:I
    invoke-static {}, Lcom/android/lgesettings/powersave/PowerSave;->getCurrentBrightness()I

    move-result v2

    .line 322
    .local v2, currentBrightness:I
    const-string v4, "PowerSave"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyPowerSaveBrightness()- currentBrightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget v4, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    add-int/2addr v4, v0

    if-le v2, v4, :cond_0

    .line 326
    sget v4, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    add-int/2addr v4, v0

    invoke-static {v4}, Lcom/android/lgesettings/powersave/PowerSave;->setBrightness(I)V

    .line 328
    sget-object v4, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 329
    .local v3, current_db_to_restore:I
    sget-object v4, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    sget v6, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    add-int/2addr v6, v0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    const-string v4, "PowerSave"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_db_to_restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-gt v3, v7, :cond_2

    if-gez v3, :cond_3

    .line 334
    :cond_2
    move v3, v2

    .line 337
    :cond_3
    sget-object v4, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "power_save_brightness_restore"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveBt()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 255
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_bt"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "power_save_bt"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    .line 278
    :cond_0
    return-void
.end method

.method private applyPowerSaveCpu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 300
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportQuadCore()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_cpu_adjust"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "eco_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 304
    .local v0, current_mode:I
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_cpu_restore"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "eco_mode"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveEmotionalLED()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportEmotionalLED(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_emotional_led"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 529
    .local v0, current_mode:I
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_emotional_led_restore"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveFrontLed()V
    .locals 6

    .prologue
    const/16 v5, 0x5dc

    .line 568
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led_adjust"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "frontkey_led_timeout"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 575
    .local v0, currentTimeout:I
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 583
    .local v1, value:I
    :goto_1
    const-string v2, "PowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyPowerSaveFrontLed()- currentTimeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-le v0, v1, :cond_0

    .line 587
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "frontkey_led_timeout"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led_restore"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 579
    .end local v1           #value:I
    :cond_2
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #value:I
    goto :goto_1
.end method

.method private applyPowerSaveNfc()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 292
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_nfc"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "power_save_nfc"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    .line 295
    :cond_0
    return-void
.end method

.method private applyPowerSaveScreenTimeout()V
    .locals 6

    .prologue
    const/16 v5, 0x3a98

    .line 544
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout_adjust"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 550
    .local v0, currentTimeout:I
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 553
    .local v1, value:I
    const-string v2, "PowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyPowerSaveScreenTimeout()- currentTimeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-le v0, v1, :cond_0

    if-lt v1, v5, :cond_0

    .line 557
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout_restore"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 248
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync_restore"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :cond_0
    return-void
.end method

.method private applyPowerSaveTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 496
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch_restore"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_wifi"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "power_save_wifi"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method private doAutoScreenTone()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1349
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_auto_screen_tone_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1350
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAutoScreenTone() - restoreValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    if-ltz v0, :cond_0

    .line 1352
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "plc_mode_set"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1353
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_auto_screen_tone_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1355
    :cond_0
    return-void
.end method

.method private doBrightness()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1272
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_brightness_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1275
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBrightness() - brightnessRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    if-le v0, v4, :cond_0

    sget v1, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    if-lt v0, v1, :cond_0

    .line 1278
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->setBrightness(I)V

    .line 1279
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1282
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_brightness_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1285
    :cond_0
    return-void
.end method

.method private doCpu()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1263
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_cpu_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1264
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCpu() - restore_cpu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    if-ltz v0, :cond_0

    .line 1266
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "eco_mode"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1267
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_cpu_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1269
    :cond_0
    return-void
.end method

.method private doEmotionalLED()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1340
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_emotional_led_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1341
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doEmotionalLED() - restoreValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    if-ltz v0, :cond_0

    .line 1343
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1344
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_emotional_led_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1346
    :cond_0
    return-void
.end method

.method private doFrontLed()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1314
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_front_led_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1317
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFrontLed - frontLedRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    if-le v0, v4, :cond_0

    .line 1320
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "frontkey_led_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1323
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_front_led_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1326
    :cond_0
    return-void
.end method

.method private doScreenTimeout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1299
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_screen_timeout_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1302
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScreenTimeout - screenTimeoutRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/16 v1, 0x3a98

    if-lt v0, v1, :cond_0

    .line 1306
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1309
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_screen_timeout_restore"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1312
    :cond_0
    return-void
.end method

.method private doSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1161
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync_restore"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1168
    :cond_0
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync_restore"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    :cond_1
    return-void
.end method

.method private doTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1287
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch_restore"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1289
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1291
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1294
    :cond_0
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch_restore"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1297
    :cond_1
    return-void
.end method

.method public static getBrightnessMode()I
    .locals 4

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 627
    .local v0, automatic_mode:I
    :try_start_0
    sget-object v2, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 631
    :goto_0
    return v0

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentBrightness()I
    .locals 5

    .prologue
    .line 1358
    const-string v3, "sys/class/leds/lcd-backlight/brightness"

    .line 1360
    const/4 v2, 0x0

    .line 1361
    const-string v0, ""

    .line 1364
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1366
    const-string v2, "PowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current brightness -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1374
    if-eqz v1, :cond_0

    .line 1375
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1382
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1383
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1386
    :goto_1
    return v0

    .line 1369
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 1370
    :goto_2
    :try_start_3
    const-string v2, "PowerSave"

    const-string v3, "Brightness file read fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1374
    if-eqz v1, :cond_0

    .line 1375
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1377
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1374
    :goto_3
    if-eqz v1, :cond_1

    .line 1375
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1379
    :cond_1
    :goto_4
    throw v0

    .line 1386
    :cond_2
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1377
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 1373
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1369
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static getValue(I)I
    .locals 6
    .parameter "percent"

    .prologue
    .line 635
    sget v2, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    rsub-int v2, v2, 0xff

    int-to-double v2, v2

    int-to-double v4, p0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    div-double v0, v2, v4

    .line 636
    .local v0, value:D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private sendToOthers(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1138
    const-string v1, "PowerSave"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToOthers, Power save mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "activate"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.lgesettings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    const-string v2, "powersave_activation"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1141
    if-eqz p1, :cond_0

    .line 1142
    const-string v0, "powersave_name"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    :cond_0
    sget-object v0, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1145
    return-void

    .line 1138
    :cond_1
    const-string v0, "restore"

    goto :goto_0

    .line 1140
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setBrightness(I)V
    .locals 8
    .parameter "brightness"

    .prologue
    const/4 v7, 0x1

    .line 599
    invoke-static {}, Lcom/android/lgesettings/powersave/PowerSave;->getBrightnessMode()I

    move-result v0

    .line 600
    .local v0, automatic_mode:I
    sget-object v4, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 602
    .local v1, automatic_sensor_supported:Z
    const-string v4, "PowerSave"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBrightness, automatic_sensor_supported:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 606
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 608
    if-ne v1, v7, :cond_1

    if-ne v0, v7, :cond_1

    .line 611
    sget v4, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    sub-int/2addr p0, v4

    .line 612
    int-to-float v4, p0

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    sget v5, Lcom/android/lgesettings/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    rsub-int v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 613
    .local v3, valf:F
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 622
    .end local v2           #power:Landroid/os/IPowerManager;
    .end local v3           #valf:F
    :cond_0
    :goto_0
    return-void

    .line 616
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-interface {v2, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public doPowerSave()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "PowerSave"

    const-string v1, "Start doPowerSave()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveBt()V

    .line 136
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSave$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSave$1;-><init>(Lcom/android/lgesettings/powersave/PowerSave;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave$1;->start()V

    .line 163
    return-void
.end method

.method public doRestore()V
    .locals 2

    .prologue
    .line 1103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    .line 1107
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSave$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSave$2;-><init>(Lcom/android/lgesettings/powersave/PowerSave;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave$2;->start()V

    .line 1135
    return-void
.end method

.method public getBatteryImgId(Landroid/content/res/Resources;Landroid/content/Intent;I)I
    .locals 10
    .parameter "res"
    .parameter "intent"
    .parameter "battery"

    .prologue
    .line 798
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 799
    .local v0, bSupportChargingCurrent:Z
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 800
    .local v6, plugType:I
    const-string v8, "status"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 801
    .local v7, status:I
    if-lez v6, :cond_1

    const/4 v2, 0x1

    .line 803
    .local v2, isPluged:Z
    :goto_0
    if-eqz v0, :cond_d

    .line 804
    const/16 v1, 0x1ae

    .line 805
    .local v1, high_temperature_min:I
    const/16 v3, -0x50

    .line 807
    .local v3, low_temperature_min:I
    const-string v8, "temperature"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 808
    .local v4, mBatteryTemperature:I
    const-string v8, "charging_current"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 809
    .local v5, mChargingCurrent:I
    if-eqz v2, :cond_8

    .line 810
    if-gt v4, v1, :cond_0

    if-ge v4, v3, :cond_2

    .line 811
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getChargingBatteryImgId(I)I

    move-result v8

    .line 904
    .end local v1           #high_temperature_min:I
    .end local v3           #low_temperature_min:I
    .end local v4           #mBatteryTemperature:I
    .end local v5           #mChargingCurrent:I
    :goto_1
    return v8

    .line 801
    .end local v2           #isPluged:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 813
    .restart local v1       #high_temperature_min:I
    .restart local v2       #isPluged:Z
    .restart local v3       #low_temperature_min:I
    .restart local v4       #mBatteryTemperature:I
    .restart local v5       #mChargingCurrent:I
    :cond_2
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 814
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getIncompatibleBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 815
    :cond_3
    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 816
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getChargingBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 817
    :cond_4
    const/4 v8, 0x4

    if-ne v5, v8, :cond_5

    .line 818
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getIncompatibleBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 819
    :cond_5
    const/4 v8, 0x5

    if-ne v5, v8, :cond_6

    .line 820
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getIncompatibleBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 822
    :cond_6
    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    .line 823
    const v8, 0x7f02012f

    goto :goto_1

    .line 825
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getChargingBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 830
    :cond_8
    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 831
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getChargingBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 832
    :cond_9
    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    .line 833
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getDischargingBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 834
    :cond_a
    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 835
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/powersave/PowerSave;->getIncompatibleBatteryImgId(I)I

    move-result v8

    goto :goto_1

    .line 836
    :cond_b
    const/4 v8, 0x5

    if-ne v7, v8, :cond_c

    .line 837
    const v8, 0x7f02012f

    goto :goto_1

    .line 839
    :cond_c
    const v8, 0x7f020142

    goto :goto_1

    .line 843
    .end local v1           #high_temperature_min:I
    .end local v3           #low_temperature_min:I
    .end local v4           #mBatteryTemperature:I
    .end local v5           #mChargingCurrent:I
    :cond_d
    const/16 v8, 0x62

    if-lt p3, v8, :cond_e

    .line 844
    const v8, 0x7f020118

    goto :goto_1

    .line 846
    :cond_e
    const/16 v8, 0x5d

    if-lt p3, v8, :cond_f

    .line 847
    const v8, 0x7f020117

    goto :goto_1

    .line 849
    :cond_f
    const/16 v8, 0x58

    if-lt p3, v8, :cond_10

    .line 850
    const v8, 0x7f020116

    goto :goto_1

    .line 852
    :cond_10
    const/16 v8, 0x53

    if-lt p3, v8, :cond_11

    .line 853
    const v8, 0x7f020115

    goto :goto_1

    .line 855
    :cond_11
    const/16 v8, 0x4e

    if-lt p3, v8, :cond_12

    .line 856
    const v8, 0x7f020114

    goto :goto_1

    .line 858
    :cond_12
    const/16 v8, 0x49

    if-lt p3, v8, :cond_13

    .line 859
    const v8, 0x7f020113

    goto/16 :goto_1

    .line 861
    :cond_13
    const/16 v8, 0x44

    if-lt p3, v8, :cond_14

    .line 862
    const v8, 0x7f020112

    goto/16 :goto_1

    .line 864
    :cond_14
    const/16 v8, 0x3f

    if-lt p3, v8, :cond_15

    .line 865
    const v8, 0x7f020111

    goto/16 :goto_1

    .line 867
    :cond_15
    const/16 v8, 0x3a

    if-lt p3, v8, :cond_16

    .line 868
    const v8, 0x7f020110

    goto/16 :goto_1

    .line 870
    :cond_16
    const/16 v8, 0x35

    if-lt p3, v8, :cond_17

    .line 871
    const v8, 0x7f02010f

    goto/16 :goto_1

    .line 873
    :cond_17
    const/16 v8, 0x30

    if-lt p3, v8, :cond_18

    .line 874
    const v8, 0x7f02010e

    goto/16 :goto_1

    .line 876
    :cond_18
    const/16 v8, 0x2b

    if-lt p3, v8, :cond_19

    .line 877
    const v8, 0x7f02010d

    goto/16 :goto_1

    .line 879
    :cond_19
    const/16 v8, 0x26

    if-lt p3, v8, :cond_1a

    .line 880
    const v8, 0x7f02010c

    goto/16 :goto_1

    .line 882
    :cond_1a
    const/16 v8, 0x21

    if-lt p3, v8, :cond_1b

    .line 883
    const v8, 0x7f02010b

    goto/16 :goto_1

    .line 885
    :cond_1b
    const/16 v8, 0x1c

    if-lt p3, v8, :cond_1c

    .line 886
    const v8, 0x7f02010a

    goto/16 :goto_1

    .line 888
    :cond_1c
    const/16 v8, 0x17

    if-lt p3, v8, :cond_1d

    .line 889
    const v8, 0x7f020109

    goto/16 :goto_1

    .line 891
    :cond_1d
    const/16 v8, 0x12

    if-lt p3, v8, :cond_1e

    .line 892
    const v8, 0x7f020108

    goto/16 :goto_1

    .line 894
    :cond_1e
    const/16 v8, 0xd

    if-lt p3, v8, :cond_1f

    .line 895
    const v8, 0x7f020107

    goto/16 :goto_1

    .line 897
    :cond_1f
    const/16 v8, 0x8

    if-lt p3, v8, :cond_20

    .line 898
    const v8, 0x7f020106

    goto/16 :goto_1

    .line 900
    :cond_20
    const/4 v8, 0x3

    if-lt p3, v8, :cond_21

    .line 901
    const v8, 0x7f020105

    goto/16 :goto_1

    .line 904
    :cond_21
    const v8, 0x7f020104

    goto/16 :goto_1
.end method

.method public getChargingBatteryImgId(I)I
    .locals 1
    .parameter

    .prologue
    .line 974
    const/16 v0, 0x62

    if-lt p1, v0, :cond_0

    .line 975
    const v0, 0x7f02012f

    .line 1032
    :goto_0
    return v0

    .line 977
    :cond_0
    const/16 v0, 0x5d

    if-lt p1, v0, :cond_1

    .line 978
    const v0, 0x7f020141

    goto :goto_0

    .line 980
    :cond_1
    const/16 v0, 0x58

    if-lt p1, v0, :cond_2

    .line 981
    const v0, 0x7f020140

    goto :goto_0

    .line 983
    :cond_2
    const/16 v0, 0x53

    if-lt p1, v0, :cond_3

    .line 984
    const v0, 0x7f02013f

    goto :goto_0

    .line 986
    :cond_3
    const/16 v0, 0x4e

    if-lt p1, v0, :cond_4

    .line 987
    const v0, 0x7f02013e

    goto :goto_0

    .line 989
    :cond_4
    const/16 v0, 0x49

    if-lt p1, v0, :cond_5

    .line 990
    const v0, 0x7f02013d

    goto :goto_0

    .line 992
    :cond_5
    const/16 v0, 0x44

    if-lt p1, v0, :cond_6

    .line 993
    const v0, 0x7f02013c

    goto :goto_0

    .line 995
    :cond_6
    const/16 v0, 0x3f

    if-lt p1, v0, :cond_7

    .line 996
    const v0, 0x7f02013b

    goto :goto_0

    .line 998
    :cond_7
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_8

    .line 999
    const v0, 0x7f02013a

    goto :goto_0

    .line 1001
    :cond_8
    const/16 v0, 0x35

    if-lt p1, v0, :cond_9

    .line 1002
    const v0, 0x7f020139

    goto :goto_0

    .line 1004
    :cond_9
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    .line 1005
    const v0, 0x7f020138

    goto :goto_0

    .line 1007
    :cond_a
    const/16 v0, 0x2b

    if-lt p1, v0, :cond_b

    .line 1008
    const v0, 0x7f020137

    goto :goto_0

    .line 1010
    :cond_b
    const/16 v0, 0x26

    if-lt p1, v0, :cond_c

    .line 1011
    const v0, 0x7f020136

    goto :goto_0

    .line 1013
    :cond_c
    const/16 v0, 0x21

    if-lt p1, v0, :cond_d

    .line 1014
    const v0, 0x7f020135

    goto :goto_0

    .line 1016
    :cond_d
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_e

    .line 1017
    const v0, 0x7f020134

    goto :goto_0

    .line 1019
    :cond_e
    const/16 v0, 0x15

    if-lt p1, v0, :cond_f

    .line 1020
    const v0, 0x7f020133

    goto :goto_0

    .line 1022
    :cond_f
    const/16 v0, 0x10

    if-lt p1, v0, :cond_10

    .line 1023
    const v0, 0x7f020132

    goto :goto_0

    .line 1025
    :cond_10
    const/16 v0, 0xb

    if-lt p1, v0, :cond_11

    .line 1026
    const v0, 0x7f020131

    goto/16 :goto_0

    .line 1028
    :cond_11
    const/4 v0, 0x6

    if-lt p1, v0, :cond_12

    .line 1029
    const v0, 0x7f020130

    goto/16 :goto_0

    .line 1032
    :cond_12
    const v0, 0x7f02012e

    goto/16 :goto_0
.end method

.method public getDischargingBatteryImgId(I)I
    .locals 1
    .parameter

    .prologue
    .line 1037
    const/16 v0, 0x62

    if-lt p1, v0, :cond_0

    .line 1038
    const v0, 0x7f0200ef

    .line 1095
    :goto_0
    return v0

    .line 1040
    :cond_0
    const/16 v0, 0x5d

    if-lt p1, v0, :cond_1

    .line 1041
    const v0, 0x7f020103

    goto :goto_0

    .line 1043
    :cond_1
    const/16 v0, 0x58

    if-lt p1, v0, :cond_2

    .line 1044
    const v0, 0x7f020102

    goto :goto_0

    .line 1046
    :cond_2
    const/16 v0, 0x53

    if-lt p1, v0, :cond_3

    .line 1047
    const v0, 0x7f020101

    goto :goto_0

    .line 1049
    :cond_3
    const/16 v0, 0x4e

    if-lt p1, v0, :cond_4

    .line 1050
    const v0, 0x7f020100

    goto :goto_0

    .line 1052
    :cond_4
    const/16 v0, 0x49

    if-lt p1, v0, :cond_5

    .line 1053
    const v0, 0x7f0200ff

    goto :goto_0

    .line 1055
    :cond_5
    const/16 v0, 0x44

    if-lt p1, v0, :cond_6

    .line 1056
    const v0, 0x7f0200fe

    goto :goto_0

    .line 1058
    :cond_6
    const/16 v0, 0x3f

    if-lt p1, v0, :cond_7

    .line 1059
    const v0, 0x7f0200fd

    goto :goto_0

    .line 1061
    :cond_7
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_8

    .line 1062
    const v0, 0x7f0200fc

    goto :goto_0

    .line 1064
    :cond_8
    const/16 v0, 0x35

    if-lt p1, v0, :cond_9

    .line 1065
    const v0, 0x7f0200fb

    goto :goto_0

    .line 1067
    :cond_9
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    .line 1068
    const v0, 0x7f0200fa

    goto :goto_0

    .line 1070
    :cond_a
    const/16 v0, 0x2b

    if-lt p1, v0, :cond_b

    .line 1071
    const v0, 0x7f0200f9

    goto :goto_0

    .line 1073
    :cond_b
    const/16 v0, 0x26

    if-lt p1, v0, :cond_c

    .line 1074
    const v0, 0x7f0200f8

    goto :goto_0

    .line 1076
    :cond_c
    const/16 v0, 0x21

    if-lt p1, v0, :cond_d

    .line 1077
    const v0, 0x7f0200f7

    goto :goto_0

    .line 1079
    :cond_d
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_e

    .line 1080
    const v0, 0x7f0200f6

    goto :goto_0

    .line 1082
    :cond_e
    const/16 v0, 0x15

    if-lt p1, v0, :cond_f

    .line 1083
    const v0, 0x7f0200f5

    goto :goto_0

    .line 1085
    :cond_f
    const/16 v0, 0x10

    if-lt p1, v0, :cond_10

    .line 1086
    const v0, 0x7f0200f4

    goto :goto_0

    .line 1088
    :cond_10
    const/16 v0, 0xb

    if-lt p1, v0, :cond_11

    .line 1089
    const v0, 0x7f0200f2

    goto/16 :goto_0

    .line 1091
    :cond_11
    const/4 v0, 0x6

    if-lt p1, v0, :cond_12

    .line 1092
    const v0, 0x7f0200f0

    goto/16 :goto_0

    .line 1095
    :cond_12
    const v0, 0x7f0200ed

    goto/16 :goto_0
.end method

.method public getIncompatibleBatteryImgId(I)I
    .locals 1
    .parameter "battery"

    .prologue
    .line 911
    const/16 v0, 0x62

    if-lt p1, v0, :cond_0

    .line 912
    const v0, 0x7f02011a

    .line 969
    :goto_0
    return v0

    .line 914
    :cond_0
    const/16 v0, 0x5d

    if-lt p1, v0, :cond_1

    .line 915
    const v0, 0x7f02012c

    goto :goto_0

    .line 917
    :cond_1
    const/16 v0, 0x58

    if-lt p1, v0, :cond_2

    .line 918
    const v0, 0x7f02012b

    goto :goto_0

    .line 920
    :cond_2
    const/16 v0, 0x53

    if-lt p1, v0, :cond_3

    .line 921
    const v0, 0x7f02012a

    goto :goto_0

    .line 923
    :cond_3
    const/16 v0, 0x4e

    if-lt p1, v0, :cond_4

    .line 924
    const v0, 0x7f020129

    goto :goto_0

    .line 926
    :cond_4
    const/16 v0, 0x49

    if-lt p1, v0, :cond_5

    .line 927
    const v0, 0x7f020128

    goto :goto_0

    .line 929
    :cond_5
    const/16 v0, 0x44

    if-lt p1, v0, :cond_6

    .line 930
    const v0, 0x7f020127

    goto :goto_0

    .line 932
    :cond_6
    const/16 v0, 0x3f

    if-lt p1, v0, :cond_7

    .line 933
    const v0, 0x7f020126

    goto :goto_0

    .line 935
    :cond_7
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_8

    .line 936
    const v0, 0x7f020125

    goto :goto_0

    .line 938
    :cond_8
    const/16 v0, 0x35

    if-lt p1, v0, :cond_9

    .line 939
    const v0, 0x7f020124

    goto :goto_0

    .line 941
    :cond_9
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    .line 942
    const v0, 0x7f020123

    goto :goto_0

    .line 944
    :cond_a
    const/16 v0, 0x2b

    if-lt p1, v0, :cond_b

    .line 945
    const v0, 0x7f020122

    goto :goto_0

    .line 947
    :cond_b
    const/16 v0, 0x26

    if-lt p1, v0, :cond_c

    .line 948
    const v0, 0x7f020121

    goto :goto_0

    .line 950
    :cond_c
    const/16 v0, 0x21

    if-lt p1, v0, :cond_d

    .line 951
    const v0, 0x7f020120

    goto :goto_0

    .line 953
    :cond_d
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_e

    .line 954
    const v0, 0x7f02011f

    goto :goto_0

    .line 956
    :cond_e
    const/16 v0, 0x15

    if-lt p1, v0, :cond_f

    .line 957
    const v0, 0x7f02011e

    goto :goto_0

    .line 959
    :cond_f
    const/16 v0, 0x10

    if-lt p1, v0, :cond_10

    .line 960
    const v0, 0x7f02011d

    goto :goto_0

    .line 962
    :cond_10
    const/16 v0, 0xb

    if-lt p1, v0, :cond_11

    .line 963
    const v0, 0x7f02011c

    goto/16 :goto_0

    .line 965
    :cond_11
    const/4 v0, 0x6

    if-lt p1, v0, :cond_12

    .line 966
    const v0, 0x7f02011b

    goto/16 :goto_0

    .line 969
    :cond_12
    const v0, 0x7f020119

    goto/16 :goto_0
.end method

.method public getPopupBatteryImgId(I)I
    .locals 2
    .parameter "battery"

    .prologue
    .line 708
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    if-ge p1, v0, :cond_3

    .line 709
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 710
    const v0, 0x7f020046

    .line 783
    :goto_0
    return v0

    .line 712
    :cond_0
    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 713
    const v0, 0x7f020040

    goto :goto_0

    .line 715
    :cond_1
    const/4 v0, 0x6

    if-lt p1, v0, :cond_2

    .line 716
    const v0, 0x7f02003a

    goto :goto_0

    .line 719
    :cond_2
    const v0, 0x7f020034

    goto :goto_0

    .line 722
    :cond_3
    const/16 v0, 0x62

    if-lt p1, v0, :cond_4

    .line 723
    const v0, 0x7f020045

    goto :goto_0

    .line 725
    :cond_4
    const/16 v0, 0x5d

    if-lt p1, v0, :cond_5

    .line 726
    const v0, 0x7f020044

    goto :goto_0

    .line 728
    :cond_5
    const/16 v0, 0x58

    if-lt p1, v0, :cond_6

    .line 729
    const v0, 0x7f020043

    goto :goto_0

    .line 731
    :cond_6
    const/16 v0, 0x53

    if-lt p1, v0, :cond_7

    .line 732
    const v0, 0x7f020042

    goto :goto_0

    .line 734
    :cond_7
    const/16 v0, 0x4e

    if-lt p1, v0, :cond_8

    .line 735
    const v0, 0x7f020041

    goto :goto_0

    .line 737
    :cond_8
    const/16 v0, 0x49

    if-lt p1, v0, :cond_9

    .line 738
    const v0, 0x7f02003f

    goto :goto_0

    .line 740
    :cond_9
    const/16 v0, 0x44

    if-lt p1, v0, :cond_a

    .line 741
    const v0, 0x7f02003e

    goto :goto_0

    .line 743
    :cond_a
    const/16 v0, 0x3f

    if-lt p1, v0, :cond_b

    .line 744
    const v0, 0x7f02003d

    goto :goto_0

    .line 746
    :cond_b
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_c

    .line 747
    const v0, 0x7f02003c

    goto :goto_0

    .line 749
    :cond_c
    const/16 v0, 0x35

    if-lt p1, v0, :cond_d

    .line 750
    const v0, 0x7f02003b

    goto :goto_0

    .line 752
    :cond_d
    const/16 v0, 0x30

    if-lt p1, v0, :cond_e

    .line 753
    const v0, 0x7f020039

    goto :goto_0

    .line 755
    :cond_e
    const/16 v0, 0x2b

    if-lt p1, v0, :cond_f

    .line 756
    const v0, 0x7f020038

    goto :goto_0

    .line 758
    :cond_f
    const/16 v0, 0x26

    if-lt p1, v0, :cond_10

    .line 759
    const v0, 0x7f020037

    goto :goto_0

    .line 761
    :cond_10
    const/16 v0, 0x21

    if-lt p1, v0, :cond_11

    .line 762
    const v0, 0x7f020036

    goto/16 :goto_0

    .line 764
    :cond_11
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_12

    .line 765
    const v0, 0x7f020035

    goto/16 :goto_0

    .line 767
    :cond_12
    const/16 v0, 0x17

    if-lt p1, v0, :cond_13

    .line 768
    const v0, 0x7f020033

    goto/16 :goto_0

    .line 770
    :cond_13
    const/16 v0, 0x12

    if-lt p1, v0, :cond_14

    .line 771
    const v0, 0x7f020032

    goto/16 :goto_0

    .line 773
    :cond_14
    const/16 v0, 0xd

    if-lt p1, v0, :cond_15

    .line 774
    const v0, 0x7f020031

    goto/16 :goto_0

    .line 776
    :cond_15
    const/16 v0, 0x8

    if-lt p1, v0, :cond_16

    .line 777
    const v0, 0x7f020030

    goto/16 :goto_0

    .line 779
    :cond_16
    const/4 v0, 0x3

    if-lt p1, v0, :cond_17

    .line 780
    const v0, 0x7f02002f

    goto/16 :goto_0

    .line 783
    :cond_17
    const v0, 0x7f02002e

    goto/16 :goto_0
.end method

.method public isRunningPowerSaveService()Z
    .locals 8

    .prologue
    .line 666
    const/4 v3, 0x0

    .line 667
    .local v3, isRunning:Z
    const-string v1, ""

    .line 669
    .local v1, className:Ljava/lang/String;
    sget-object v6, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 670
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 672
    .local v4, rs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v4, :cond_0

    .line 673
    const/4 v6, 0x1

    .line 689
    :goto_0
    return v6

    .line 676
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 677
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 678
    .local v5, rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 683
    const-string v6, "com.android.lgesettings.powersave.PowerSaveService"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 684
    const/4 v3, 0x1

    .end local v5           #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    move v6, v3

    .line 689
    goto :goto_0

    .line 676
    .restart local v5       #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public updateActivationPowerControl()V
    .locals 2

    .prologue
    .line 698
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.lgesettings.powersave.action.ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 700
    return-void
.end method

.method public updatePowerControl()V
    .locals 2

    .prologue
    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.lgesettings.powersave.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/android/lgesettings/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    return-void
.end method
