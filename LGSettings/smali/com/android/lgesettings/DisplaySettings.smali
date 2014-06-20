.class public Lcom/android/lgesettings/DisplaySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;,
        Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;
    }
.end annotation


# instance fields
.field private bEASChecked:Z

.field private donotshow:Landroid/widget/CheckBox;

.field private isDialogCheck:Z

.field private isSilentModeChecked:Z

.field private isVideoDialogCheck:Z

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAspectRatioCorrection:Landroid/preference/Preference;

.field private mAutoFitScreen:Landroid/preference/Preference;

.field private mBackend:Lcom/android/lgesettings/DreamBackend;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmotionLED:Landroid/preference/SwitchPreference;

.field private mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

.field private mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

.field private mFontTypePref:Landroid/preference/ListPreference;

.field private mFrontKeyLight:Landroid/preference/Preference;

.field private mFrontTouchKey:Landroid/preference/Preference;

.field mHandler:Landroid/os/Handler;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOnObserver:Landroid/database/ContentObserver;

.field private mKeepVideoOn:Landroid/preference/CheckBoxPreference;

.field private mKnockOnTablet:Landroid/preference/CheckBoxPreference;

.field private mMotionSensorCalibration:Landroid/preference/Preference;

.field private mNotificationFlash:Landroid/preference/PreferenceScreen;

.field private mNotificationObserver:Landroid/database/ContentObserver;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPlcMode:Landroid/preference/CheckBoxPreference;

.field private mPlcModeObserver:Landroid/database/ContentObserver;

.field private mPouchSettings:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/preference/Preference;

.field private mScreenOffEffect:Landroid/preference/Preference;

.field private mScreenSaverPreference:Landroid/preference/SwitchPreference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private screenDialog:Landroid/app/AlertDialog;

.field private videoDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 143
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 151
    iput-boolean v1, p0, Lcom/android/lgesettings/DisplaySettings;->bEASChecked:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isSilentModeChecked:Z

    .line 180
    iput-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    .line 181
    iput-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    .line 182
    iput-boolean v1, p0, Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/lgesettings/DisplaySettings;->isVideoDialogCheck:Z

    .line 184
    iput-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    .line 186
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DisplaySettings$1;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 194
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$2;-><init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOnObserver:Landroid/database/ContentObserver;

    .line 202
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$3;-><init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 210
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$4;-><init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 217
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$5;-><init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 227
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$6;-><init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 237
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$7;-><init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcModeObserver:Landroid/database/ContentObserver;

    .line 244
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DisplaySettings$8;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 1352
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DisplaySettings$16;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1470
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateKeepScreenOnCheckbox()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/DisplaySettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/lgesettings/DisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/lgesettings/DisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/lgesettings/DisplaySettings;->isVideoDialogCheck:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/lgesettings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/DisplaySettings;)Lcom/android/lgesettings/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateScreenTimeOutValue()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateNotificationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updatePlcModeOnCheckbox()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->callDisplayFont()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/DisplaySettings;)Lcom/android/lgesettings/WarnedListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/lgesettings/DisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/lgesettings/DisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z

    return p1
.end method

.method private addPouchSummury()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_preset_or_custom"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 631
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pouch_preset_screen_image_path"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 632
    if-nez v0, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 635
    array-length v2, v0

    if-le v2, v1, :cond_0

    .line 637
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0809b1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private callDisplayFont()V
    .locals 4

    .prologue
    .line 1526
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.jungle.app.fonts"

    const-string v2, "com.jungle.app.fonts.Fonts"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1528
    const/high16 v2, 0x1880

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1529
    const-string v2, "KEY_CALL_FROM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1530
    const-string v2, "KEY_FONTDATA_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    const-string v2, "KEY_UI_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1533
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : activity not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : com.jungle.app.fonts.Fonts"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 8

    .prologue
    .line 1415
    new-instance v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;-><init>(Lcom/android/lgesettings/DisplaySettings$1;)V

    .line 1416
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/lgesettings/DisplaySettings;->readConfiguration(Landroid/content/Context;Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;)V

    .line 1418
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1420
    iget-object v2, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1421
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1423
    iget-object v4, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->familyName:Ljava/lang/String;

    .line 1424
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.current.font.familyname"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1427
    iget v6, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mcc:I

    .line 1428
    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    .line 1430
    iget v7, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mnc:I

    .line 1431
    iget v7, v0, Landroid/content/res/Configuration;->mnc:I

    .line 1433
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1436
    :goto_0
    if-eqz v0, :cond_1

    .line 1437
    iput-object v3, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1438
    iput-object v5, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->familyName:Ljava/lang/String;

    .line 1439
    invoke-direct {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->getCurrentLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->familyLabel:Ljava/lang/String;

    .line 1440
    iput v6, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mcc:I

    .line 1441
    iput v7, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mnc:I

    .line 1443
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/lgesettings/DisplaySettings;->writeConfiguration(Landroid/content/Context;Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;)V

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    iget-object v1, v1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->familyLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1446
    return-void

    .line 1433
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSensor()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1376
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1377
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    move v2, v1

    .line 1381
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1383
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v2, v3

    .line 1381
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1385
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v5, 0x17

    if-ne v0, v5, :cond_2

    move v2, v3

    .line 1386
    goto :goto_1

    .line 1387
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v5, 0x15

    if-ne v0, v5, :cond_0

    move v2, v3

    .line 1388
    goto :goto_1

    .line 1392
    :cond_3
    return v2
.end method

.method private checkSupportChangeFont()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1586
    invoke-static {}, Lcom/android/lgesettings/FontTypeFace;->getUseCappFonts()Z

    move-result v2

    .line 1588
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1589
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1591
    const-string v0, "font_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/FontSettingsPreference;

    .line 1593
    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "gvarfhd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1595
    :cond_0
    const-string v1, "font_category"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1596
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    .line 1597
    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1601
    :goto_0
    const-string v0, "DisplaySettings"

    const-string v1, "warning : changing font not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/4 v0, 0x0

    .line 1604
    :goto_1
    return v0

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1604
    goto :goto_1
.end method

.method private createAddedMenu()V
    .locals 12

    .prologue
    const v11, 0x7f0809d8

    const v10, 0x2070009

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 395
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_home_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 396
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "screen_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 397
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "font_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 398
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "smart_category"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 399
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "advanced_category"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 401
    const-string v5, "font_type"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    .line 402
    const-string v5, "autofit_screen"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    .line 403
    const-string v5, "aspect_ratio_correction"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mAspectRatioCorrection:Landroid/preference/Preference;

    .line 404
    const-string v5, "keepscreenon"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 405
    const-string v5, "keepvideoon"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    .line 406
    const-string v5, "pouch_settings"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    .line 407
    const-string v5, "frontkey_led_timeout"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mFrontKeyLight:Landroid/preference/Preference;

    .line 408
    const-string v5, "front_touch_key"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mFrontTouchKey:Landroid/preference/Preference;

    .line 409
    const-string v5, "motion_sensor_calibration"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mMotionSensorCalibration:Landroid/preference/Preference;

    .line 410
    const-string v5, "emotional_led"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mEmotionLED:Landroid/preference/SwitchPreference;

    .line 411
    const-string v5, "notification_flash"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mNotificationFlash:Landroid/preference/PreferenceScreen;

    .line 412
    const-string v5, "screen_off_effect"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenOffEffect:Landroid/preference/Preference;

    .line 413
    const-string v5, "screen_mode"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenMode:Landroid/preference/Preference;

    .line 414
    const-string v5, "plc_mode"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcMode:Landroid/preference/CheckBoxPreference;

    .line 416
    const-string v5, "knock_on_tablet"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mKnockOnTablet:Landroid/preference/CheckBoxPreference;

    .line 417
    iget-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->mKnockOnTablet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 418
    iget-object v9, p0, Lcom/android/lgesettings/DisplaySettings;->mKnockOnTablet:Landroid/preference/CheckBoxPreference;

    const-string v5, "gesture_trun_screen_on"

    invoke-static {v8, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 420
    const-string v5, "tablet"

    const-string v8, "ro.build.characteristics"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.lge.settings.easy"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "com.jungle.app.fonts"

    invoke-static {v0, v5}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 440
    new-array v0, v6, [Ljava/lang/CharSequence;

    const-string v2, ""

    aput-object v2, v0, v7

    .line 441
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 442
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 443
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->setDisplayFontEnable()V

    .line 444
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->checkForLocaleChange()V

    .line 454
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x207002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 455
    if-eqz v1, :cond_3

    .line 456
    const-string v0, "screen_mode"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    :cond_3
    if-eqz v4, :cond_4

    .line 460
    const-string v0, "plc_mode"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 468
    if-eqz v1, :cond_5

    .line 469
    const-string v0, "knock_on_tablet"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 477
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080f8f

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 481
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.lge.keepscreenon"

    invoke-static {v0, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x2070019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 488
    :cond_7
    if-eqz v3, :cond_8

    .line 489
    const-string v0, "keepscreenon"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    const-string v0, "keepvideoon"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 491
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 515
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x2070017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 516
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->addPouchSummury()V

    .line 524
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20c0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 526
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mEmotionLED:Landroid/preference/SwitchPreference;

    const v2, 0x7f080db7

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 532
    :cond_a
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 533
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mEmotionLED:Landroid/preference/SwitchPreference;

    const v2, 0x7f08105f

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 536
    :cond_b
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->isUpgradeModel()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 539
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 540
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFrontKeyLight:Landroid/preference/Preference;

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 543
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.lge.settings.compatmode"

    invoke-static {v0, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 545
    if-eqz v1, :cond_d

    .line 546
    const-string v0, "autofit_screen"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 549
    :cond_d
    if-eqz v4, :cond_e

    .line 550
    const-string v0, "aspect_ratio_correction"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    :cond_e
    if-eqz v4, :cond_f

    .line 554
    const-string v0, "emotional_led"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 584
    :cond_f
    :goto_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFrontTouchKeyLight()Z

    move-result v0

    if-nez v0, :cond_10

    .line 585
    if-eqz v4, :cond_10

    .line 586
    const-string v0, "frontkey_led_timeout"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 591
    :cond_10
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 593
    :try_start_1
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v7

    .line 594
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "naviBoolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 599
    :goto_5
    if-nez v7, :cond_11

    .line 600
    if-eqz v4, :cond_11

    .line 601
    const-string v0, "front_touch_key"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 606
    :cond_11
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "l1_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 608
    :cond_12
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationFlash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_6
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->checkSensor()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 618
    if-eqz v4, :cond_13

    .line 619
    const-string v0, "motion_sensor_calibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 622
    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_14

    .line 623
    if-eqz v4, :cond_14

    .line 624
    const-string v0, "motion_sensor_calibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 627
    :cond_14
    return-void

    :cond_15
    move v5, v7

    .line 418
    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 431
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f080385

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 446
    :cond_16
    if-eqz v2, :cond_2

    .line 447
    const-string v0, "font_type"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 518
    :cond_17
    if-eqz v1, :cond_9

    .line 519
    const-string v0, "pouch_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 560
    :cond_18
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->isNotUpgradeGModel()Z

    move-result v0

    if-nez v0, :cond_19

    .line 561
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFrontKeyLight:Landroid/preference/Preference;

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 564
    :cond_19
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mAspectRatioCorrection:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.lge.settings.compatmode"

    invoke-static {v0, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 566
    if-eqz v4, :cond_1a

    .line 567
    const-string v0, "aspect_ratio_correction"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    :cond_1a
    if-eqz v1, :cond_1b

    .line 571
    const-string v0, "autofit_screen"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    :cond_1b
    const-string v0, "ro.lge.capp_emotional_led"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 577
    if-eqz v4, :cond_f

    .line 578
    const-string v0, "emotional_led"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 595
    :catch_1
    move-exception v0

    .line 596
    const-string v0, "DisplaySettings"

    const-string v1, "RemoteException front key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 610
    :cond_1c
    if-eqz v4, :cond_1d

    .line 611
    const-string v0, "notification_flash"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 613
    :cond_1d
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove NotificationFlash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 716
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 717
    :goto_0
    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 718
    const-string v0, "DisplaySettings"

    const-string v2, "EAS Non_operation"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iput-boolean v1, p0, Lcom/android/lgesettings/DisplaySettings;->bEASChecked:Z

    .line 750
    :goto_1
    return-void

    :cond_0
    move-wide v3, v5

    .line 716
    goto :goto_0

    .line 722
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v5, "EAS Operation"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 724
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 725
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 726
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 727
    :goto_2
    array-length v9, v6

    if-ge v0, v9, :cond_3

    .line 728
    aget-object v9, v6, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 729
    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    .line 730
    aget-object v9, v5, v0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    aget-object v9, v6, v0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 734
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v5, v5

    if-ne v0, v5, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v5, v6

    if-eq v0, v5, :cond_5

    .line 735
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 737
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 739
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 740
    int-to-long v5, v0

    cmp-long v3, v5, v3

    if-gtz v3, :cond_5

    .line 741
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 748
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 749
    iput-boolean v2, p0, Lcom/android/lgesettings/DisplaySettings;->bEASChecked:Z

    goto/16 :goto_1
.end method

.method private getCurrentLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1449
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1450
    const-string v1, "content://com.jungle.app.fonts.provider/fonts/current/label"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1454
    if-eqz v3, :cond_0

    .line 1455
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v6

    move-object v0, v2

    .line 1456
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1457
    const-string v2, "current_label"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1463
    :cond_1
    if-eqz v3, :cond_2

    .line 1464
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1467
    :cond_2
    :goto_1
    return-object v0

    .line 1460
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 1463
    :goto_2
    if-eqz v3, :cond_2

    .line 1464
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1463
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 1464
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1460
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private isContainfromValues(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 1542
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1543
    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1544
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    const/4 v2, 0x1

    .line 1548
    :goto_1
    return v2

    .line 1543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNotUpgradeGModel()Z
    .locals 2

    .prologue
    .line 1562
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->is_G_model_Device(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHB"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCA"

    const-string v1, "ro.build.target_region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CUCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MON"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ESA"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AME"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_byt_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_free_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_h3g_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_ncm_nw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_nrj_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_open_cis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_open_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_org_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_pls_pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tel_au"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tim_it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tlf_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tln_nw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tmn_pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tmo_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    :cond_0
    const/4 v0, 0x1

    .line 1581
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpgradeModel()Z
    .locals 2

    .prologue
    .line 1552
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lsk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lkt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1555
    :cond_0
    const/4 v0, 0x1

    .line 1557
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1479
    const/4 v1, 0x0

    .line 1481
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    const-string v2, "display.font.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1482
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1483
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mcc:I

    .line 1484
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1490
    if-eqz v0, :cond_0

    .line 1492
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1485
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1490
    :goto_1
    if-eqz v0, :cond_0

    .line 1492
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1493
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1487
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 1490
    :goto_2
    if-eqz v0, :cond_0

    .line 1492
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 1493
    :catch_3
    move-exception v0

    goto :goto_0

    .line 1490
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 1492
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1495
    :cond_1
    :goto_4
    throw v0

    .line 1493
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 1490
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 1487
    :catch_6
    move-exception v1

    goto :goto_2

    .line 1485
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private setDisplayFontEnable()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1396
    const/4 v2, 0x1

    .line 1398
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1399
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1400
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090079

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v0, v2

    move v2, v1

    .line 1402
    :goto_0
    :try_start_1
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 1403
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 1402
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1408
    :goto_1
    const-string v2, "DisplaySettings"

    const-string v3, "setDisplayFontEnable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1412
    return-void

    .line 1407
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateKeepScreenOnCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_screen_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 946
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 948
    return-void
.end method

.method private updateKeepVideoOnCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_video_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 952
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 953
    return-void
.end method

.method private updateNotificationCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 959
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isSilentModeChecked:Z

    .line 961
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mEmotionLED:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/lgesettings/DisplaySettings;->isSilentModeChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 963
    return-void

    .line 959
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePlcModeOnCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 969
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "plc_mode_set"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 971
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcMode:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 972
    return-void

    .line 971
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreenModeSummary()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 667
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_set"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 670
    if-gez v0, :cond_0

    .line 671
    const-string v0, ""

    .line 680
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 674
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenMode:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0809f1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v0, v1, v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenMode:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 678
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateScreenOffEffectSummary()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 648
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_effect_set"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 651
    if-gez v0, :cond_0

    .line 652
    const-string v0, ""

    .line 661
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenOffEffect:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0809eb

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v0, v1, v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 657
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenOffEffect:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen-off effect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 940
    :cond_0
    return-void
.end method

.method private updateScreenTimeOutValue()V
    .locals 6

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1220
    .local v0, currentTimeout:J
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1222
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 925
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateKeepScreenOnCheckbox()V

    .line 926
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateKeepVideoOnCheckbox()V

    .line 927
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 928
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 929
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateWifiDisplaySummary()V

    .line 930
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateScreenOffEffectSummary()V

    .line 931
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateScreenModeSummary()V

    .line 932
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updatePlcModeOnCheckbox()V

    .line 933
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    .line 685
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 687
    const-string v0, ""

    .line 709
    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 710
    return-void

    .line 689
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 690
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 691
    if-eqz v4, :cond_1

    array-length v0, v4

    if-nez v0, :cond_2

    .line 692
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    .line 695
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 696
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 697
    cmp-long v6, p1, v6

    if-ltz v6, :cond_3

    move v2, v0

    .line 695
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 701
    :cond_4
    const-wide/32 v5, 0x3b9aca00

    cmp-long v0, p1, v5

    if-ltz v0, :cond_5

    .line 702
    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 704
    :cond_5
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f08039d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v4, v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 985
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 978
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 981
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1501
    const/4 v1, 0x0

    .line 1503
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    const-string v2, "display.font.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1504
    :try_start_1
    iget-object v1, p1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1505
    iget v1, p1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1506
    iget v1, p1, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mnc:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1507
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1514
    if-eqz v0, :cond_0

    .line 1516
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1508
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1514
    :goto_1
    if-eqz v0, :cond_0

    .line 1516
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1517
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1510
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 1512
    :goto_2
    :try_start_4
    const-string v1, "display.font.preferences"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1514
    if-eqz v0, :cond_0

    .line 1516
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1517
    :catch_3
    move-exception v0

    goto :goto_0

    .line 1514
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 1516
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1519
    :cond_1
    :goto_4
    throw v0

    .line 1517
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 1514
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 1510
    :catch_6
    move-exception v1

    goto :goto_2

    .line 1508
    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected ShowWarningDialog()V
    .locals 4

    .prologue
    .line 1037
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1038
    const v0, 0x7f080387

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1040
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1041
    const v2, 0x7f040140

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1042
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1044
    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    .line 1046
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    const/high16 v3, 0x4198

    invoke-virtual {v0, v2, v3}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/lgesettings/DisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/DisplaySettings$10;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1059
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$11;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DisplaySettings$11;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1069
    const v0, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/DisplaySettings$12;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/DisplaySettings$12;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1083
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1084
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    .line 1086
    :cond_1
    return-void
.end method

.method protected ShowWarningVideoDialog()V
    .locals 8

    .prologue
    .line 1093
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1094
    const v0, 0x7f080f8e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1095
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1096
    const v1, 0x7f040141

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1097
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1099
    const v0, 0x7f0a02d4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    .line 1100
    const v0, 0x7f0a02d0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1101
    const v1, 0x7f0a02d1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1102
    const v2, 0x7f0a02d2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1103
    const v5, 0x7f0a02d3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1106
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1107
    iget-object v5, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    const/4 v6, 0x2

    const/high16 v7, 0x4198

    invoke-virtual {v5, v6, v7}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 1108
    const v5, 0x7f080391

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1109
    const v0, 0x7f080392

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1110
    const v0, 0x7f080393

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1111
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/lgesettings/DisplaySettings$13;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/DisplaySettings$13;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/lgesettings/DisplaySettings;->isVideoDialogCheck:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1123
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DisplaySettings$14;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1133
    const v0, 0x7f08059d

    new-instance v1, Lcom/android/lgesettings/DisplaySettings$15;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/DisplaySettings$15;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1148
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1149
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    .line 1151
    :cond_1
    return-void
.end method

.method floatToIndex(F)I
    .locals 6
    .parameter

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 754
    const-string v1, "ro.sf.lcd_density"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa0

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_0
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 760
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 761
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 762
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 763
    add-int/lit8 v0, v1, -0x1

    .line 767
    :goto_2
    return v0

    .line 756
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 760
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 767
    :cond_3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1016
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1017
    const-string v0, "YSY"

    const-string v1, "screen change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z

    .line 1020
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1021
    iput-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    .line 1022
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->ShowWarningDialog()V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isVideoDialogCheck:Z

    .line 1027
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1028
    iput-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    .line 1029
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->ShowWarningVideoDialog()V

    .line 1031
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 260
    invoke-super/range {p0 .. p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 263
    .local v10, resolver:Landroid/content/ContentResolver;
    const v13, 0x7f060020

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 265
    const-string v13, "brightness"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/lgesettings/BrightnessPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_brightness"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    const-string v13, "accelerometer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "screen_category"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 274
    .local v11, screenCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "font_category"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 276
    .local v5, fontCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 279
    if-eqz v11, :cond_0

    .line 284
    :cond_0
    const-string v13, "screensaver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110040

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 289
    if-eqz v11, :cond_1

    .line 290
    const-string v13, "screensaver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    :cond_1
    const-string v13, "screen_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v14, 0x7f08098f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/lgesettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v14, 0x7f0809d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/lgesettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSubTitle(Ljava/lang/String;)V

    .line 298
    const-string v13, "screen_off_timeout"

    const-wide/16 v14, 0x7530

    invoke-static {v10, v13, v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 300
    .local v3, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x207002f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v14, 0x7f09000b

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntries(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v14, 0x7f09000f

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntryValues(I)V

    .line 311
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 312
    const-string v13, "DisplaySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "currentScreentTimeout: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->isContainfromValues(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/DisplaySettings;->bEASChecked:Z

    if-nez v13, :cond_9

    .line 315
    const-string v13, "DisplaySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "defaultScreenTimeoutChange: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_off_timeout"

    const/16 v15, 0x7530

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    const-string v13, "screen_off_timeout"

    const-wide/16 v14, 0x7530

    invoke-static {v10, v13, v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 318
    .local v1, changeTimeout:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 324
    .end local v1           #changeTimeout:J
    :goto_1
    const-string v13, "font_size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/lgesettings/WarnedListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    const-string v13, "ro.sf.lcd_density"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xa0

    if-le v13, v14, :cond_a

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "vee3e"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "vee3ds"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "l1v"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    const v14, 0x7f090026

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/WarnedListPreference;->setEntries(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    const v14, 0x7f090027

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/WarnedListPreference;->setEntryValues(I)V

    .line 334
    :cond_2
    :goto_2
    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "m4"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "m4ds"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "vee3e"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "vee3ds"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "ro.sf.lcd_density"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xa0

    if-gt v13, v14, :cond_4

    .line 335
    :cond_3
    const/4 v13, 0x2

    new-array v8, v13, [Ljava/lang/CharSequence;

    .line 336
    .local v8, new_list_entries:[Ljava/lang/CharSequence;
    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/CharSequence;

    .line 337
    .local v9, new_list_entryValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090024

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 338
    .local v6, list_entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090025

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 340
    .local v7, list_entryValues:[Ljava/lang/CharSequence;
    const/4 v13, 0x0

    const/4 v14, 0x1

    aget-object v14, v6, v14

    aput-object v14, v8, v13

    .line 341
    const/4 v13, 0x0

    const/4 v14, 0x1

    aget-object v14, v7, v14

    aput-object v14, v9, v13

    .line 342
    const/4 v13, 0x1

    const/4 v14, 0x2

    aget-object v14, v6, v14

    aput-object v14, v8, v13

    .line 343
    const/4 v13, 0x1

    const/4 v14, 0x2

    aget-object v14, v7, v14

    aput-object v14, v9, v13

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    invoke-virtual {v13, v8}, Lcom/android/lgesettings/WarnedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    invoke-virtual {v13, v9}, Lcom/android/lgesettings/WarnedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 348
    .end local v6           #list_entries:[Ljava/lang/CharSequence;
    .end local v7           #list_entryValues:[Ljava/lang/CharSequence;
    .end local v8           #new_list_entries:[Ljava/lang/CharSequence;
    .end local v9           #new_list_entryValues:[Ljava/lang/CharSequence;
    :cond_4
    const-string v13, "notification_pulse"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110024

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-nez v13, :cond_b

    .line 352
    if-eqz v5, :cond_5

    .line 353
    const-string v13, "notification_pulse"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "display"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v13}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 369
    const-string v13, "wifi_display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 370
    if-eqz v5, :cond_6

    .line 371
    const-string v13, "wifi_display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 383
    const-string v13, "font_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/lgesettings/FontSettingsPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->checkSupportChangeFont()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

    invoke-virtual {v13}, Lcom/android/lgesettings/FontSettingsPreference;->connectFontServer()V

    .line 388
    :cond_7
    new-instance v13, Lcom/android/lgesettings/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/lgesettings/DreamBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DisplaySettings;->createAddedMenu()V

    .line 390
    return-void

    .line 307
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v14, 0x7f090009

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntries(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v14, 0x7f09000e

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 322
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/lgesettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    goto/16 :goto_1

    .line 330
    :cond_a
    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "l1v"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    const v14, 0x7f090028

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/WarnedListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 357
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v13, "notification_light_pulse"

    invoke-static {v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 362
    :catch_0
    move-exception v12

    .line 363
    .local v12, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v13, "DisplaySettings"

    const-string v14, "notification_light_pulse not found"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 358
    .end local v12           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_c
    const/4 v13, 0x0

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 911
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08087d

    new-instance v2, Lcom/android/lgesettings/DisplaySettings$9;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/DisplaySettings$9;-><init>(Lcom/android/lgesettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 920
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 880
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 881
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/FontSettingsPreference;->disconnectFontServer()V

    .line 882
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 883
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 884
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 860
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 862
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 866
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 873
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 876
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1316
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1317
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1349
    :goto_0
    return v0

    .line 1321
    :cond_0
    const-string v0, "screen_timeout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 1322
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1325
    int-to-long v4, v0

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :cond_1
    :goto_1
    const-string v0, "font_size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1331
    const-string v0, "1.60"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1332
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sync_large_text"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1333
    const-string v0, "1.30"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1334
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "lge.settings.intent.action.FONT_SIZE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1335
    const-string v0, "DisplaySettings"

    const-string v1, "Font Size send intent(lge.settings.intent.action.FONT_SIZE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-static {p0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->show(Lcom/android/lgesettings/DisplaySettings;)V

    .line 1341
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 1344
    :cond_2
    const-string v0, "screensaver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1345
    const-string v1, "hong"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DreamBackend;->setEnabled(Z)V

    .line 1347
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateScreenSaverSummary()V

    :cond_3
    move v0, v2

    .line 1349
    goto/16 :goto_0

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    const-string v4, "DisplaySettings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1338
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sync_large_text"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1339
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 1365
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 1366
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->showDialog(I)V

    .line 1373
    :goto_0
    return v0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/WarnedListPreference;->click()V

    .line 1373
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x6d

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1225
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 1226
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1312
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    move v0, v1

    .line 1226
    goto :goto_0

    .line 1228
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 1229
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 1230
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v2, :cond_3

    move v1, v0

    :cond_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1233
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_5

    .line 1234
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1236
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    .line 1238
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1239
    const-string v1, "com.lge.settings.compatmode"

    const-string v2, "com.lge.settings.compatmode.CompatibilityMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : activity not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : com.lge.providers.packageconfig.PackageConfig_Act"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1246
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mAspectRatioCorrection:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    .line 1248
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1249
    const-string v1, "com.lge.settings.compatmode"

    const-string v2, "com.lge.settings.compatmode.CompatibilityMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1252
    :catch_1
    move-exception v0

    .line 1253
    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : activity not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : com.lge.providers.packageconfig.PackageConfig_Act"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1256
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 1257
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 1258
    if-eqz v2, :cond_a

    .line 1259
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1260
    const-string v4, "com.lge.keepscreenon"

    const-string v5, "com.lge.keepscreenon.KeepScreenOnService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1263
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keep_screen_on_do_not_show"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1266
    if-nez v3, :cond_9

    .line 1267
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1268
    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z

    .line 1270
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->ShowWarningDialog()V

    .line 1281
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keep_screen_on"

    if-eqz v2, :cond_b

    :goto_4
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1275
    :cond_a
    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1276
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1277
    const-string v4, "com.lge.keepscreenon"

    const-string v5, "com.lge.keepscreenon.KeepScreenOnService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_b
    move v0, v1

    .line 1281
    goto :goto_4

    .line 1282
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 1283
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepVideoOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 1284
    if-eqz v2, :cond_f

    .line 1285
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1286
    const-string v4, "com.lge.keepscreenon"

    const-string v5, "com.lge.keepscreenon.KeepScreenOnService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1288
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keep_video_on_do_not_show"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1290
    if-nez v3, :cond_e

    .line 1291
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1292
    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isVideoDialogCheck:Z

    .line 1294
    :cond_d
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->ShowWarningVideoDialog()V

    .line 1303
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keep_video_on"

    if-eqz v2, :cond_10

    :goto_6
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1297
    :cond_f
    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1298
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1299
    const-string v4, "com.lge.keepscreenon"

    const-string v5, "com.lge.keepscreenon.KeepScreenOnService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_5

    :cond_10
    move v0, v1

    .line 1303
    goto :goto_6

    .line 1304
    :cond_11
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 1305
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 1306
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "plc_mode_set"

    if-eqz v2, :cond_12

    move v1, v0

    :cond_12
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1307
    const-string v1, "YSY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLC mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "plc_mode_set"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1308
    :cond_13
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKnockOnTablet:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 1309
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mKnockOnTablet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1310
    :goto_7
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gesture_trun_screen_on"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 1309
    goto :goto_7
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 810
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 812
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/BrightnessPreference;->updateThermalMAXBrightness()V

    .line 813
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 816
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 819
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->addPouchSummury()V

    .line 822
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings;->updateState()V

    .line 824
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "keep_screen_on"

    invoke-static {v2}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mKeepScreenOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 838
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/DisplaySettings;->isSilentModeChecked:Z

    .line 840
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mEmotionLED:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/lgesettings/DisplaySettings;->isSilentModeChecked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 841
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "plc_mode_set"

    invoke-static {v2}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DisplaySettings;->mPlcModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 852
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/lgesettings/DreamBackend;->isEnabled()Z

    move-result v0

    .line 853
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 854
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 856
    :cond_1
    return-void

    .line 838
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 889
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 892
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 895
    iput-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 900
    iput-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/BrightnessPreference;->stopDialog()V

    .line 907
    :cond_2
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa0

    const/4 v1, 0x1

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    .line 779
    const-string v2, "ro.sf.lcd_density"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vee3e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vee3ds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "l1v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sync_large_text"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 781
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    if-ne v2, v1, :cond_0

    .line 782
    const/4 v0, 0x5

    .line 786
    :cond_0
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "m4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "m4ds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vee3e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vee3ds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ro.sf.lcd_density"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v5, :cond_5

    .line 787
    :cond_1
    if-nez v0, :cond_4

    move v0, v1

    .line 793
    :cond_2
    :goto_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 799
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 800
    const v2, 0x7f090024

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 801
    const-string v4, "ro.sf.lcd_density"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_3

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "vee3e"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "vee3ds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l1v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 802
    const v2, 0x7f090026

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 804
    :cond_3
    const v4, 0x7f0803ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v1, v6

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 806
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    const-string v0, "DisplaySettings"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 789
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 790
    const/4 v0, 0x2

    goto :goto_1

    .line 795
    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1002
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1003
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
