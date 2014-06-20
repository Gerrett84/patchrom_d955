.class public Lcom/android/lgesettings/LocationSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/LocationSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

.field mAssistedService:Landroid/content/DialogInterface;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mE911:Landroid/preference/Preference;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field mGpsService:Landroid/content/DialogInterface;

.field private mGpsSound:Landroid/preference/CheckBoxPreference;

.field private mGpsVzw:Landroid/preference/CheckBoxPreference;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mVzwLbs:Landroid/preference/CheckBoxPreference;

.field mWarnDCMSwitch:Landroid/app/Dialog;

.field mWarnUscSwitch:Landroid/app/Dialog;

.field mWarnVzwService:Landroid/content/DialogInterface;

.field mWarnVzwSwitch:Landroid/app/Dialog;

.field settingsCursor:Landroid/database/Cursor;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 1148
    new-instance v0, Lcom/android/lgesettings/LocationSettings$17;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/LocationSettings$17;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/lgesettings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/LocationSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->visible:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 206
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 211
    :cond_0
    const-string v3, "CMCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 212
    const v3, 0x7f06002f

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/LocationSettings;->addPreferencesFromResource(I)V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 222
    const-string v3, "location_toggle"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 223
    const-string v3, "location_network"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 224
    const-string v3, "location_gps"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v3, "assisted_gps_for_cmcc"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/DoubleTitleListPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    .line 228
    const-string v3, "assisted_gps"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 229
    const-string v3, "e911_only"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mE911:Landroid/preference/Preference;

    .line 230
    const-string v3, "location_vzw_lbs"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    .line 231
    const-string v3, "location_gps_vzw"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    .line 234
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v4, 0x7f08050c

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v4, 0x7f08050d

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSubTitle(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled_for_cmcc"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, assisted_gps_for_cmcc:I
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v3, p0}, Lcom/android/lgesettings/DoubleTitleListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v4, 0x7f0900ae

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntries(I)V

    .line 243
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntryValues(I)V

    .line 245
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    .local v2, values:[Ljava/lang/CharSequence;
    if-ltz v0, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    :cond_1
    const-string v3, "CMCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 251
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    :goto_1
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 261
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    const-string v3, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mE911:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_2
    :goto_2
    const-string v3, "dcm_gps_sound"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isNotSupportGPSNotificationModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_4
    const-string v3, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 298
    :cond_5
    const-string v3, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 299
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080cad

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080cae

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 307
    :goto_3
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080d2a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080baf

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080bb0

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080bb1

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 331
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 355
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 362
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080508

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 365
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    return-object v1

    .line 217
    .end local v0           #assisted_gps_for_cmcc:I
    .end local v2           #values:[Ljava/lang/CharSequence;
    :cond_a
    const v3, 0x7f06002e

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/LocationSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 255
    .restart local v0       #assisted_gps_for_cmcc:I
    .restart local v2       #values:[Ljava/lang/CharSequence;
    :cond_b
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 268
    :cond_c
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isSupportVZWLocationAccessScenario4_0()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 269
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mE911:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 276
    :cond_d
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 302
    :cond_e
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080bac

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080caf

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 315
    :cond_f
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 316
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isSupportVZWLocationAccessScenario4_0()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 317
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080de4

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f08050b

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private onToggleLocationAccess(Z)V
    .locals 13
    .parameter "checked"

    .prologue
    const v12, 0x7f080aee

    const v8, 0x7f080aed

    const v11, 0x1010355

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 840
    const-string v5, "hong"

    const-string v6, "check_switch2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 843
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 845
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isSupportVZWLocationAccessScenario4_0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 846
    if-eqz p1, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 848
    .local v3, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f040192

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 849
    .local v4, inputView:Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080de5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$8;

    invoke-direct {v7, p0, v0}, Lcom/android/lgesettings/LocationSettings$8;-><init>(Lcom/android/lgesettings/LocationSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/LocationSettings$7;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/LocationSettings$7;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v12, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    .line 884
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 885
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 886
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    new-instance v6, Lcom/android/lgesettings/LocationSettings$9;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/LocationSettings$9;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1105
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #inputView:Landroid/view/View;
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/LocationSettings;->updateLocationToggles()V

    .line 1106
    return-void

    .line 895
    :cond_0
    const-string v5, "gps"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 897
    const-string v5, "network"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 904
    :cond_1
    if-eqz p1, :cond_2

    .line 905
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 906
    .restart local v3       #factory:Landroid/view/LayoutInflater;
    const v5, 0x7f040191

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 907
    .restart local v4       #inputView:Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080de7

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$11;

    invoke-direct {v7, p0, v0}, Lcom/android/lgesettings/LocationSettings$11;-><init>(Lcom/android/lgesettings/LocationSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/LocationSettings$10;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/LocationSettings$10;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v12, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    .line 941
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 942
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 945
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #inputView:Landroid/view/View;
    :cond_2
    const-string v5, "vzw_lbs"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 947
    const-string v5, "gps"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 949
    const-string v5, "network"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 955
    :cond_3
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 956
    :cond_4
    if-eqz p1, :cond_5

    .line 957
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 958
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080bfa

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080bf9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$13;

    invoke-direct {v7, p0, v0}, Lcom/android/lgesettings/LocationSettings$13;-><init>(Lcom/android/lgesettings/LocationSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$12;

    invoke-direct {v7, p0, v0}, Lcom/android/lgesettings/LocationSettings$12;-><init>(Lcom/android/lgesettings/LocationSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnDCMSwitch:Landroid/app/Dialog;

    .line 984
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnDCMSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 985
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnDCMSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 987
    :cond_5
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 988
    const-string v5, "gps"

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 990
    const-string v5, "network"

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 998
    :cond_6
    const-string v5, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1003
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usc_gps_enabled"

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1005
    .local v1, currentValue:J
    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_8

    .line 1006
    if-eqz p1, :cond_7

    .line 1007
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1008
    .restart local v3       #factory:Landroid/view/LayoutInflater;
    const v5, 0x7f04017a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1010
    .restart local v4       #inputView:Landroid/view/View;
    const v5, 0x7f0a034e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->visible:Landroid/widget/CheckBox;

    .line 1011
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1013
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080c59

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c5a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$15;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$15;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c5b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$14;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$14;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnUscSwitch:Landroid/app/Dialog;

    .line 1059
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnUscSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1060
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnUscSwitch:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1061
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnUscSwitch:Landroid/app/Dialog;

    new-instance v6, Lcom/android/lgesettings/LocationSettings$16;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/LocationSettings$16;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 1074
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #inputView:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1076
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1082
    :cond_8
    if-eqz p1, :cond_9

    .line 1083
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1085
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1090
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1100
    .end local v1           #currentValue:J
    :cond_a
    const-string v5, "gps"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1102
    const-string v5, "network"

    invoke-static {v0, v5, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private updateLocationToggles()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 722
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 723
    .local v4, res:Landroid/content/ContentResolver;
    const-string v6, "gps"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 725
    .local v2, gpsEnabled:Z
    const-string v6, "network"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 727
    .local v3, networkEnabled:Z
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 730
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 732
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isSupportVZWLocationAccessScenario4_0()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 733
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 734
    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_0

    if-eqz v3, :cond_7

    :cond_0
    move v6, v8

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 750
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 751
    const-string v6, "ACG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 753
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "assisted_gps_enabled"

    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v8

    :goto_2
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_f

    move v6, v8

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 762
    :goto_4
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 766
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    if-eqz v6, :cond_2

    .line 767
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v6, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEnabled(Z)V

    .line 772
    :cond_2
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    .line 773
    const-string v6, "hong"

    const-string v9, "mGpsSound2"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 777
    :cond_3
    const-string v6, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 779
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "gps_device_managerment_enabled"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 780
    .local v0, GPSstatus:I
    const-string v6, "SPRINT_DM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GPSstatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-nez v0, :cond_12

    .line 782
    const-string v6, "SPRINT_DM"

    const-string v9, " DeviceManagement getGpsState :: GPS_ENABLED "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 784
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 785
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 788
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_5

    .line 789
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "mGps"

    iget-object v10, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    .line 790
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "mNetwork"

    iget-object v10, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    .line 821
    .end local v0           #GPSstatus:I
    :cond_5
    :goto_5
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "g2_open_cn"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 823
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 824
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 825
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 828
    :cond_6
    return-void

    :cond_7
    move v6, v7

    .line 734
    goto/16 :goto_0

    .line 739
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "vzw_lbs"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 741
    .local v5, vzwService:Z
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 742
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 743
    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    move v6, v8

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_a
    move v6, v7

    goto :goto_6

    .line 746
    .end local v5           #vzwService:Z
    :cond_b
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 747
    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    move v6, v8

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_d
    move v6, v7

    goto :goto_7

    :cond_e
    move v6, v7

    .line 753
    goto/16 :goto_2

    :cond_f
    move v6, v7

    .line 756
    goto/16 :goto_3

    .line 759
    :cond_10
    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    invoke-static {v4, v6, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_11

    move v6, v8

    :goto_8
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_11
    move v6, v7

    goto :goto_8

    .line 795
    .restart local v0       #GPSstatus:I
    :cond_12
    if-ne v0, v8, :cond_13

    .line 796
    const-string v6, "SPRINT_DM"

    const-string v8, " DeviceManagement getGpsState :: GPS_DISABLED "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 798
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 799
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 801
    :cond_13
    if-ne v0, v11, :cond_5

    .line 802
    const-string v6, "SPRINT_DM"

    const-string v8, " DeviceManagement getGpsState :: GPS_FORCED "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 804
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 805
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 811
    .end local v0           #GPSstatus:I
    :cond_14
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_5

    .line 812
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 813
    .local v1, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    const-string v8, "mGpsVzw"

    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    .line 814
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    const-string v8, "mGps"

    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    .line 815
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    const-string v8, "mNetwork"

    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    .line 816
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    const-string v8, "mVzwLbs"

    iget-object v9, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    goto/16 :goto_5
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1169
    const v0, 0x7f08088d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 834
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 835
    invoke-direct {p0}, Lcom/android/lgesettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 836
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->visible:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 1145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    .line 165
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 167
    new-instance v0, Lcom/android/lgesettings/LocationSettings$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/lgesettings/LocationSettings$SettingsObserver;-><init>(Lcom/android/lgesettings/LocationSettings;Lcom/android/lgesettings/LocationSettings$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 171
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 172
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v6, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->addLocationPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    .end local v6           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 184
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 186
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1164
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 1165
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 1115
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_toggle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, switchPref:Landroid/preference/SwitchPreference;
    instance-of v2, p1, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1119
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 1121
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "mLocationAccess"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1124
    const/4 v2, 0x0

    .line 1139
    .end local v0           #switchPref:Landroid/preference/SwitchPreference;
    :goto_0
    return v2

    .restart local v0       #switchPref:Landroid/preference/SwitchPreference;
    :cond_1
    move-object v2, p2

    .line 1127
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 1130
    .end local v0           #switchPref:Landroid/preference/SwitchPreference;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "assisted_gps_for_cmcc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1131
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1132
    .local v1, values:[Ljava/lang/CharSequence;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 1133
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 1134
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled_for_cmcc"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1139
    .end local v1           #values:[Ljava/lang/CharSequence;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 391
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    iget-object v7, p0, Lcom/android/lgesettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 715
    :cond_0
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 394
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_3

    .line 396
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 398
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f040190

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 399
    .local v3, inputView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080de7

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$1;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$1;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080aee

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwService:Landroid/content/DialogInterface;

    goto :goto_0

    .line 422
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #inputView:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_lbs"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 428
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_5

    .line 430
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 432
    .restart local v2       #factory:Landroid/view/LayoutInflater;
    const v5, 0x7f04018f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 433
    .restart local v3       #inputView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080dea

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$2;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    .line 461
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #inputView:Landroid/view/View;
    :goto_2
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 462
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 455
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    .line 464
    :cond_5
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_10

    .line 466
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usc_gps_enabled"

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 469
    .local v0, currentValue:J
    const-string v5, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-wide/16 v5, 0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_9

    .line 474
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 475
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 476
    .restart local v2       #factory:Landroid/view/LayoutInflater;
    const v5, 0x7f04017a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 477
    .restart local v3       #inputView:Landroid/view/View;
    const v5, 0x7f0a034e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->visible:Landroid/widget/CheckBox;

    .line 478
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 479
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080c59

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c5a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$3;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c5b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    .line 614
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #inputView:Landroid/view/View;
    :goto_3
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    .line 615
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 619
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    if-eqz v5, :cond_7

    .line 620
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGpsForCMCC:Lcom/android/lgesettings/DoubleTitleListPreference;

    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEnabled(Z)V

    .line 624
    :cond_7
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 625
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 504
    :cond_8
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 505
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_3

    .line 512
    :cond_9
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 513
    :cond_a
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 514
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080bfa

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080bf9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$4;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$4;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    goto/16 :goto_3

    .line 534
    :cond_b
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 539
    :cond_c
    const-string v5, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "TRF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 541
    :cond_d
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 542
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 543
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080baf

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080d57

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$5;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$5;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    goto/16 :goto_3

    .line 563
    :cond_e
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 564
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 610
    :cond_f
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    iget-object v7, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 629
    .end local v0           #currentValue:J
    :cond_10
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_16

    .line 631
    const-string v5, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 632
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 633
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 634
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08050c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080893

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08059d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/LocationSettings$6;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/LocationSettings$6;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080106

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedService:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 653
    :cond_11
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_gps_enabled"

    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x0

    goto :goto_4

    .line 685
    :cond_13
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_gps_enabled"

    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 688
    const-string v5, "ACG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 690
    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "assisted_gps_enabled"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_15

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 691
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 686
    :cond_14
    const/4 v5, 0x0

    goto :goto_5

    .line 690
    :cond_15
    const/4 v5, 0x0

    goto :goto_6

    .line 698
    :cond_16
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_18

    .line 699
    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sound_gps_enabled"

    iget-object v5, p0, Lcom/android/lgesettings/LocationSettings;->mGpsSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    :goto_7
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 703
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.lgesettings.gpsnotification.CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 700
    .end local v4           #intent:Landroid/content/Intent;
    :cond_17
    const/4 v5, 0x0

    goto :goto_7

    .line 712
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 375
    invoke-direct {p0}, Lcom/android/lgesettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 376
    invoke-direct {p0}, Lcom/android/lgesettings/LocationSettings;->updateLocationToggles()V

    .line 386
    return-void
.end method
