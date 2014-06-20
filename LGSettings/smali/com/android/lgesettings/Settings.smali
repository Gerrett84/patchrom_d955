.class public Lcom/android/lgesettings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/lgesettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/Settings$MultiTaskingSettingsActivity;,
        Lcom/android/lgesettings/Settings$BatterySettingsActivity;,
        Lcom/android/lgesettings/Settings$LgtRoamingSettingsActivity;,
        Lcom/android/lgesettings/Settings$UserSettingsActivity;,
        Lcom/android/lgesettings/Settings$AccountsGroupSettingsActivity;,
        Lcom/android/lgesettings/Settings$PowerSaveBatteryDetailActivity;,
        Lcom/android/lgesettings/Settings$SDEncryptionSettings_Extension;,
        Lcom/android/lgesettings/Settings$SDEncryptionHelp_Extension;,
        Lcom/android/lgesettings/Settings$DeviceInfoLgeDSimActivity;,
        Lcom/android/lgesettings/Settings$DeviceInfoLgeActivity;,
        Lcom/android/lgesettings/Settings$UsbTetheringActivity;,
        Lcom/android/lgesettings/Settings$UsbSettingsActivity;,
        Lcom/android/lgesettings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/lgesettings/Settings$OwnerInfoSettingsActivity;,
        Lcom/android/lgesettings/Settings$PowerSaveSettingsActivity;,
        Lcom/android/lgesettings/Settings$LockSettingsActivity;,
        Lcom/android/lgesettings/Settings$HotkeySettingsActivity;,
        Lcom/android/lgesettings/Settings$OneHandOperationSettingsActivity;,
        Lcom/android/lgesettings/Settings$ConnectivityHelperPopupActivity;,
        Lcom/android/lgesettings/Settings$ConnectivitySettingsActivity;,
        Lcom/android/lgesettings/Settings$NfcSettingsActivity;,
        Lcom/android/lgesettings/Settings$NfcSettingsFragmentActivity;,
        Lcom/android/lgesettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/lgesettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/lgesettings/Settings$ManageNetworksActivity;,
        Lcom/android/lgesettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/lgesettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/lgesettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/lgesettings/Settings$UnCryptKeeperSettingsActivity;,
        Lcom/android/lgesettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/lgesettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/lgesettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/lgesettings/Settings$ZonePickerActivity;,
        Lcom/android/lgesettings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/lgesettings/Settings$RunningServicesActivity;,
        Lcom/android/lgesettings/Settings$DreamSettingsActivity;,
        Lcom/android/lgesettings/Settings$PrivacySettingsActivity;,
        Lcom/android/lgesettings/Settings$LocationSettingsActivity;,
        Lcom/android/lgesettings/Settings$SecuritySettingsActivity;,
        Lcom/android/lgesettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/lgesettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/lgesettings/Settings$StorageUseActivity;,
        Lcom/android/lgesettings/Settings$DeviceInfoLgeHardwareWifiActivity;,
        Lcom/android/lgesettings/Settings$ManageApplicationsActivity;,
        Lcom/android/lgesettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/lgesettings/Settings$AccessorySettingsActivity;,
        Lcom/android/lgesettings/Settings$EmotionalLEDEffectActivity;,
        Lcom/android/lgesettings/Settings$DisplaySettingsActivity;,
        Lcom/android/lgesettings/Settings$SoundSettingsActivity;,
        Lcom/android/lgesettings/Settings$TouchFeedbackAndSystemPreferenceActivity;,
        Lcom/android/lgesettings/Settings$RingtonePickerActivity;,
        Lcom/android/lgesettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/lgesettings/Settings$LocalePickerActivity;,
        Lcom/android/lgesettings/Settings$TextLinkSettingsActivity;,
        Lcom/android/lgesettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/lgesettings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/lgesettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;,
        Lcom/android/lgesettings/Settings$WifiScreenSettingsActivity;,
        Lcom/android/lgesettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/lgesettings/Settings$WifiSettingsActivity;,
        Lcom/android/lgesettings/Settings$WifiSettingsDialogActivity;,
        Lcom/android/lgesettings/Settings$StorageSettingsActivity;,
        Lcom/android/lgesettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/lgesettings/Settings$VpnSelectorActivity;,
        Lcom/android/lgesettings/Settings$VpnSettingsActivity;,
        Lcom/android/lgesettings/Settings$TetherSettingsActivity;,
        Lcom/android/lgesettings/Settings$TetherNetworkSettingsActivity;,
        Lcom/android/lgesettings/Settings$ShareConnectionActivity;,
        Lcom/android/lgesettings/Settings$WirelessSettingsActivity;,
        Lcom/android/lgesettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/lgesettings/Settings$RcseSettingsActivity;,
        Lcom/android/lgesettings/Settings$GestureSettingsActivity;,
        Lcom/android/lgesettings/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field public static final SUPPORT_SLIDEASIDE:Z

.field private static mIsWifiOnly:Z

.field private static mRCSHeader:Landroid/preference/PreferenceActivity$Header;

.field private static mSelectedHeader:Landroid/preference/PreferenceActivity$Header;


# instance fields
.field private HASFACING_SENSOR:Z

.field private SETTINGS_FOR_RESTRICTED:[I

.field customList:Landroid/widget/ListView;

.field private mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

.field mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mBreadCrumbTitleDisplayedFlag:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFinshMainUIReceiver:Landroid/content/BroadcastReceiver;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    sput-boolean v1, Lcom/android/lgesettings/Settings;->mIsWifiOnly:Z

    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/Settings;->mRCSHeader:Landroid/preference/PreferenceActivity$Header;

    .line 229
    const-string v0, "ro.lge.capp_slideAside"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/Settings;->SUPPORT_SLIDEASIDE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 149
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/Settings;->HASFACING_SENSOR:Z

    .line 216
    new-instance v0, Lcom/android/lgesettings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/Settings$1;-><init>(Lcom/android/lgesettings/Settings;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mFinshMainUIReceiver:Landroid/content/BroadcastReceiver;

    .line 3246
    new-instance v0, Lcom/android/lgesettings/Settings$7;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/Settings$7;-><init>(Lcom/android/lgesettings/Settings;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 3373
    return-void

    .line 149
    nop

    :array_0
    .array-data 0x4
        0x3ct 0x4t 0xat 0x7ft
        0x3ft 0x4t 0xat 0x7ft
        0x40t 0x4t 0xat 0x7ft
        0x41t 0x4t 0xat 0x7ft
        0x4at 0x4t 0xat 0x7ft
        0x4ct 0x4t 0xat 0x7ft
        0x4et 0x4t 0xat 0x7ft
        0x4ft 0x4t 0xat 0x7ft
        0x52t 0x4t 0xat 0x7ft
        0x57t 0x4t 0xat 0x7ft
        0x54t 0x4t 0xat 0x7ft
        0x56t 0x4t 0xat 0x7ft
        0x55t 0x4t 0xat 0x7ft
        0x59t 0x4t 0xat 0x7ft
        0x5ft 0x4t 0xat 0x7ft
        0x60t 0x4t 0xat 0x7ft
        0x61t 0x4t 0xat 0x7ft
        0x5dt 0x4t 0xat 0x7ft
        0x64t 0x4t 0xat 0x7ft
        0x66t 0x4t 0xat 0x7ft
        0x5bt 0x4t 0xat 0x7ft
        0x67t 0x4t 0xat 0x7ft
        0x6at 0x4t 0xat 0x7ft
        0x6dt 0x4t 0xat 0x7ft
        0x73t 0x4t 0xat 0x7ft
        0x74t 0x4t 0xat 0x7ft
        0x6bt 0x4t 0xat 0x7ft
        0x6ct 0x4t 0xat 0x7ft
        0x6et 0x4t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/lgesettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/lgesettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/lgesettings/Settings;->mIsWifiOnly:Z

    return v0
.end method

.method static synthetic access$400()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private addEachFunctionIcon(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f02032a

    const v5, 0x7f020327

    const v4, 0x7f020325

    const v3, 0x7f020351

    const v2, 0x7f020349

    .line 660
    const-string v0, "com.android.lgesettings.wifi.WifiSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020359

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    .line 853
    return-void

    .line 662
    :cond_1
    const-string v0, "com.android.lgesettings.wifi.AdvancedWifiSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020359

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 664
    :cond_2
    const-string v0, "com.android.lgesettings.wifi.WifiAutoControl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020359

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 666
    :cond_3
    const-string v0, "com.android.lgesettings.TetherSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 668
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020339

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 670
    :cond_4
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020338

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 674
    :cond_5
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020337

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 676
    :cond_6
    const-string v0, "com.android.lgesettings.wifi.p2p.WifiP2pSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 677
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02035a

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 678
    :cond_7
    const-string v0, "com.android.lgesettings.bluetooth.BluetoothSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 679
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032c

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 681
    :cond_8
    const-string v0, "com.android.lgesettings.bluetooth.DeviceProfilesSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 682
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032c

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 684
    :cond_9
    const-string v0, "com.android.lgesettings.TetherNetworkSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 685
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020344

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 686
    :cond_a
    const-string v0, "com.android.lgesettings.SoundSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 687
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020353

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 688
    :cond_b
    const-string v0, "com.android.lgesettings.DisplaySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 689
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020331

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 690
    :cond_c
    const-string v0, "com.android.lgesettings.lockscreen.LockSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020340

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 692
    :cond_d
    const-string v0, "com.android.lgesettings.GestureSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 693
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020334

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 694
    :cond_e
    const-string v0, "com.android.lgesettings.hotkey.HotkeySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 695
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 696
    :cond_f
    const-string v0, "com.android.lgesettings.hotkey.AllAppsList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 697
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 698
    :cond_10
    const-string v0, "com.android.lgesettings.OneHandOperationSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 699
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020348

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 700
    :cond_11
    const-string v0, "com.android.lgesettings.OneHandOperationHelp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 701
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020348

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 702
    :cond_12
    const-string v0, "com.android.lgesettings.powersave.PowerSaveSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 703
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02034b

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 704
    :cond_13
    const-string v0, "com.android.lgesettings.powersave.PowerSaverTips"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 705
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02034b

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 706
    :cond_14
    const-string v0, "com.android.lgesettings.powersave.BatterySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 707
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032b

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 708
    :cond_15
    const-string v0, "com.android.lgesettings.accounts.ManageAccountsSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 709
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 710
    :cond_16
    const-string v0, "com.android.lgesettings.accounts.AccountsGroupSettingsActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 711
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 712
    :cond_17
    const-string v0, "com.android.lgesettings.LocationSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 713
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02033f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 714
    :cond_18
    const-string v0, "com.android.lgesettings.SecuritySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 715
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 716
    :cond_19
    const-string v0, "com.android.lgesettings.inputmethod.InputMethodAndLanguageSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 717
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02033e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 718
    :cond_1a
    const-string v0, "com.android.lgesettings.PrivacySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 719
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 720
    :cond_1b
    const-string v0, "com.android.lgesettings.DateTimeSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 721
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020326

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 722
    :cond_1c
    const-string v0, "com.android.lgesettings.AccessibilitySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 723
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020323

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 724
    :cond_1d
    const-string v0, "com.android.lgesettings.lge.ConnectivitySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.android.lgesettings.lge.UsbTethering"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.android.lgesettings.deviceinfo.UsbSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.android.lgesettings.lge.ConnectivityHelperPopup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 728
    :cond_1e
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032d

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 729
    :cond_1f
    const-string v0, "com.android.lgesettings.DevelopmentSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 730
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020330

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 731
    :cond_20
    const-string v0, "com.android.lgesettings.DeviceInfoSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 732
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 733
    :cond_21
    const-string v0, "com.android.lgesettings.applications.ManageApplications"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 734
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 735
    :cond_22
    const-string v0, "com.android.lgesettings.deviceinfo.Memory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 736
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020354

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 737
    :cond_23
    const-string v0, "com.android.lgesettings.DataUsageSummary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 738
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 739
    :cond_24
    const-string v0, "com.android.lgesettings.fuelgauge.PowerSaveBatteryDetail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 740
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032b

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 741
    :cond_25
    const-string v0, "com.android.lgesettings.fuelgauge.PowerUsageDetail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 742
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02032b

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 743
    :cond_26
    const-string v0, "com.android.lgesettings.MasterClear"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 744
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 745
    :cond_27
    const-string v0, "com.android.lgesettings.LocalePicker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 746
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02033e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 747
    :cond_28
    const-string v0, "com.android.lgesettings.lockscreen.ChooseLockGeneric$ChooseLockGenericFragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 748
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020340

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 749
    :cond_29
    const-string v0, "com.android.lgesettings.applications.InstalledAppDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 750
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 751
    :cond_2a
    const-string v0, "com.android.lgesettings.applications.RunningServiceDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 752
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 753
    :cond_2b
    const-string v0, "com.android.lgesettings.CryptKeeperSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 754
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 755
    :cond_2c
    const-string v0, "com.android.lgesettings.tts.TextToSpeechSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 756
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02033e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 757
    :cond_2d
    const-string v0, "com.android.lgesettings.TextLinkSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 758
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0203aa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 759
    :cond_2e
    const-string v0, "com.android.lgesettings.TextlinkHelperPopup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 760
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0203aa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 761
    :cond_2f
    const-string v0, "com.android.lgesettings.MasterClearConfirm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 762
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 763
    :cond_30
    const-string v0, "com.android.lgesettings.DeviceAdminSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 764
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 765
    :cond_31
    const-string v0, "com.android.lgesettings.TrustedCredentialsSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 766
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 767
    :cond_32
    const-string v0, "com.android.lgesettings.accounts.AccountSyncSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 768
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 769
    :cond_33
    const-string v0, "com.android.lgesettings.wifi.p2p.WifiP2pAdvanced"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 770
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02035a

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 771
    :cond_34
    const-string v0, "com.android.lgesettings.nfc.AndroidBeam"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "com.android.lgesettings.nfc.NfcSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "com.android.lgesettings.nfc.NfcSettingsFragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 773
    :cond_35
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020345

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 775
    :cond_36
    const-string v0, "com.android.lgesettings.vpn2.VpnSelector"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 776
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020358

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 778
    :cond_37
    const-string v0, "com.android.lgesettings.vpn2.VpnSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 779
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020358

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 780
    :cond_38
    const-string v0, "com.android.lgesettings.lge.UsbTetheringHelp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 781
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020337

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 782
    :cond_39
    const-string v0, "com.android.lgesettings.wifi.p2p.WifiP2pHelp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 783
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02035a

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 784
    :cond_3a
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLge"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 785
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 786
    :cond_3b
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLgeDSim"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 787
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 788
    :cond_3c
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLgeTSim"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 789
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 790
    :cond_3d
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLgeBattery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 791
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 792
    :cond_3e
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLgeSoftwareInformation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 793
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 794
    :cond_3f
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLgeLegal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 795
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 796
    :cond_40
    const-string v0, "com.android.lgesettings.deviceinfo.MediaFormat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 797
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020354

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 798
    :cond_41
    const-string v0, "com.android.lgesettings.PhoneUpdates"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 799
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0203a8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 802
    :cond_42
    const-string v0, "com.android.lgesettings.lge.AutoLaunchSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 803
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020328

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 804
    :cond_43
    const-string v0, "com.android.lgesettings.lge.ShareConnection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 805
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020352

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 806
    :cond_44
    const-string v0, "com.android.lgesettings.lge.PouchClockType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 807
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0202ad

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 808
    :cond_45
    const-string v0, "com.android.lgesettings.lge.DeviceInfoLgeSoftwareUpdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 809
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 810
    :cond_46
    const-string v0, "com.android.lgesettings.lge.AccessorySettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "com.android.lgesettings.lge.QuickCase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 812
    :cond_47
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020324

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 813
    :cond_48
    const-string v0, "com.android.lgesettings.QuickCaseView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 814
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0202b1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 815
    :cond_49
    const-string v0, "com.android.lgesettings.QuickCameraCase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 816
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0201e9

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 817
    :cond_4a
    const-string v0, "com.android.lgesettings.lge.ScreenOffEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 818
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02034f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 819
    :cond_4b
    const-string v0, "com.android.lgesettings.lge.FrontKeyLight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "com.android.lgesettings.lge.FrontTouchKey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "com.android.lgesettings.lge.FrontTouchKeyTheme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "com.android.lgesettings.lge.HideNavigation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "com.android.lgesettings.lge.HideNavigationAppSelect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 824
    :cond_4c
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0200c4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 825
    :cond_4d
    const-string v0, "com.android.lgesettings.lge.EmotionalLEDEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 826
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0201cb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 827
    :cond_4e
    const-string v0, "com.android.lgesettings.lge.LedLightSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 828
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f0202a2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 829
    :cond_4f
    const-string v0, "com.android.lgesettings.DreamSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 830
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02009d

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 831
    :cond_50
    const-string v0, "com.android.lgesettings.MultiTaskingSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 832
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020343

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 833
    :cond_51
    const-string v0, "com.android.lgesettings.ZonePicker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 834
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020326

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 835
    :cond_52
    const-string v0, "com.android.lgesettings.lge.QuickCoverView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 836
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02034d

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 837
    :cond_53
    const-string v0, "com.android.lgesettings.lge.QuickCaseLollipop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 838
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020292

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 839
    :cond_54
    const-string v0, "com.android.lgesettings.lge.QuickCaseLollipopSettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 840
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020292

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 844
    :cond_55
    const-string v0, "com.android.lgesettings.accessibility.EasyAccessFragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 845
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020149

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 846
    :cond_56
    const-string v0, "com.android.lgesettings.accessibility.NegativeColorFragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 847
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f02014a

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 848
    :cond_57
    const-string v0, "com.android.lgesettings.accessibility.AssistiveTouchFragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string v0, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    const v1, 0x7f020148

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private changeAirplanePreferActivity(I)V
    .locals 6
    .parameter

    .prologue
    .line 3325
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3327
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3329
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 3330
    const/4 v2, 0x0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 3331
    const/4 v2, 0x1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 3333
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lge.settings.easy"

    const-string v4, "com.lge.settings.easy.EasySettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3335
    return-void
.end method

.method private changeDisplayPreferActivity(I)V
    .locals 7
    .parameter

    .prologue
    .line 3293
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3294
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.lgesettings.DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3296
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3297
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3299
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/ComponentName;

    .line 3300
    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lge.settings.easy"

    const-string v6, "com.lge.settings.easy.EasySettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 3301
    const/4 v3, 0x1

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.Settings$DisplaySettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 3303
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3305
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3306
    return-void
.end method

.method private changeSoundPreferActivity(I)V
    .locals 7
    .parameter

    .prologue
    .line 3309
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3310
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3312
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3313
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3315
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/ComponentName;

    .line 3316
    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lge.settings.easy"

    const-string v6, "com.lge.settings.easy.EasySettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 3317
    const/4 v3, 0x1

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.Settings$SoundSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 3319
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3321
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3322
    return-void
.end method

.method private checkActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1993
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1994
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1995
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1996
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1997
    const-string v2, "kimyow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const-string v2, "com.android.lgesettings.Settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2002
    :goto_0
    return v0

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    const-string v0, "kimyow"

    const-string v2, "checkActivity: NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2002
    goto :goto_0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 1399
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1401
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 1418
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1402
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.lgesettings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/lgesettings/Settings;->mTopLevelHeaderId:I

    .line 1403
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.lgesettings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 1406
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.lgesettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1407
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.lgesettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1408
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1409
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1410
    iget-object v3, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1411
    if-eqz v2, :cond_0

    .line 1412
    iget-object v3, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1415
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getTopActivityName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1979
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1980
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1981
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1982
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1983
    const-string v1, "kimyow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    :goto_0
    return-object v0

    .line 1985
    :catch_0
    move-exception v0

    .line 1986
    const-string v0, "kimyow"

    const-string v1, "topActivity: NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const-string v0, ""

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 542
    if-eqz p1, :cond_1

    .line 543
    sget-object v1, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 544
    sget-object v1, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    int-to-long v2, p1

    iput-wide v2, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 548
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 550
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 555
    .end local v0           #index:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f080773

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1322
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1323
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1324
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v4, v3

    .line 1325
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1326
    if-nez v8, :cond_1

    .line 1324
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1329
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/lgesettings/Settings;->isVisibleAccounts(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1333
    array-length v0, v9

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1335
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1336
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1337
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_2

    .line 1338
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 1340
    :cond_2
    if-eqz v0, :cond_5

    .line 1341
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1342
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1343
    const-class v0, Lcom/android/lgesettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1346
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1348
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1363
    :cond_3
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1333
    goto :goto_2

    .line 1351
    :cond_5
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1352
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1353
    const-class v0, Lcom/android/lgesettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1355
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1359
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1367
    :cond_6
    new-instance v0, Lcom/android/lgesettings/Settings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/Settings$4;-><init>(Lcom/android/lgesettings/Settings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1378
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1379
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    .line 1381
    :cond_7
    iget-boolean v0, p0, Lcom/android/lgesettings/Settings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_8

    .line 1382
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1383
    iput-boolean v1, p0, Lcom/android/lgesettings/Settings;->mListeningToAccountUpdates:Z

    .line 1385
    :cond_8
    return p2
.end method

.method private final isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3409
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isCallable(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1319
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleAccounts(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 2048
    const-string v1, "com.mobileleader.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2063
    :cond_0
    :goto_0
    return v0

    .line 2051
    :cond_1
    const-string v1, "com.lge.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2054
    const-string v1, "com.att.aab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    :cond_2
    const-string v1, "com.lge.vmemo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2060
    const-string v1, "com.lge.android.weather.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2063
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/Settings;->mInLocalHeaderSwitch:Z

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/Settings;->mInLocalHeaderSwitch:Z

    .line 476
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 502
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 504
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 505
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 507
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 508
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.lgesettings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 510
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 511
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 512
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 513
    iput-object v4, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 515
    invoke-direct {p0, v4}, Lcom/android/lgesettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 516
    iget v7, p0, Lcom/android/lgesettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/lgesettings/Settings;->highlightHeader(I)V

    .line 518
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 519
    iget-object v7, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.lgesettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 521
    iget-object v7, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.lgesettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v3

    .line 524
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchToTab()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 3257
    new-instance v3, Landroid/content/IntentFilter;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3258
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3260
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x10040

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 3264
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 3265
    new-array v7, v6, [Landroid/content/ComponentName;

    move v2, v0

    move v1, v0

    .line 3267
    :goto_0
    if-ge v2, v6, :cond_0

    .line 3268
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3269
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v2

    .line 3270
    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v1, :cond_1

    .line 3271
    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 3267
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 3274
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.lge.settings.easy"

    const-string v6, "com.lge.settings.easy.EasySettings"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1, v7, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3276
    invoke-direct {p0, v1}, Lcom/android/lgesettings/Settings;->changeSoundPreferActivity(I)V

    .line 3277
    invoke-direct {p0, v1}, Lcom/android/lgesettings/Settings;->changeDisplayPreferActivity(I)V

    .line 3278
    invoke-direct {p0, v1}, Lcom/android/lgesettings/Settings;->changeAirplanePreferActivity(I)V

    .line 3280
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_style"

    invoke-static {v0, v1, v11}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3282
    const/high16 v0, 0x300

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3283
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lge.settings.easy"

    const-string v2, "com.lge.settings.easy.EasySettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3284
    const/high16 v0, 0x1000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3286
    const-string v0, "Change_tab"

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3288
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 3290
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 867
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 869
    instance-of v1, v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 870
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->setSettingsMenu(Landroid/content/res/Resources;Landroid/widget/ListAdapter;)V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 878
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->checkSensor()V

    .line 879
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v1, v2

    .line 880
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    .line 881
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 883
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    .line 884
    const v3, 0x7f0a0449

    if-eq v6, v3, :cond_1

    const v3, 0x7f0a0458

    if-ne v6, v3, :cond_23

    .line 885
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/lgesettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 1040
    :cond_2
    :goto_1
    const v3, 0x7f0a046e

    if-ne v6, v3, :cond_3

    .line 1041
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportTangibleSettings(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1042
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1047
    :cond_3
    const v3, 0x7f0a0442

    if-ne v6, v3, :cond_6

    .line 1048
    const-string v3, "ATT"

    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1049
    const v3, 0x7f02018f

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1052
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1054
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1057
    :cond_6
    const v3, 0x7f0a0443

    if-ne v6, v3, :cond_9

    .line 1059
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1061
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1067
    :cond_9
    const v3, 0x7f0a0444

    if-ne v6, v3, :cond_c

    .line 1069
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "SPRINT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1076
    :cond_a
    const-string v3, "ro.sprint.hfa.flag"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    const-string v7, "activationOK"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1078
    const-string v3, "Settings"

    const-string v7, "HFA yes"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1085
    :goto_2
    if-eqz v3, :cond_49

    .line 1086
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "RoamPreference_MenuDisplay"

    invoke-static {v3, v7, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1098
    :goto_3
    if-nez v3, :cond_b

    .line 1099
    const-string v3, "Settings"

    const-string v7, "remove roaming menu"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1108
    :cond_b
    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "SPRINT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 1111
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1119
    :cond_c
    :goto_4
    const v3, 0x7f0a0453

    if-ne v6, v3, :cond_d

    .line 1120
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportOneHandOperation(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1121
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1126
    :cond_d
    const v3, 0x7f0a0457

    if-ne v6, v3, :cond_f

    .line 1127
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/android/lgesettings/Settings;->SUPPORT_SLIDEASIDE:Z

    if-nez v3, :cond_f

    .line 1128
    :cond_e
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1134
    :cond_f
    const v3, 0x7f0a046b

    if-ne v6, v3, :cond_10

    .line 1135
    const-string v3, "com.android.lgesettingsaccessibility"

    invoke-static {p0, v3}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1136
    const-string v3, "Settings"

    const-string v7, "Remove native accessibility"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1141
    :cond_10
    const v3, 0x7f0a046c

    if-ne v6, v3, :cond_11

    .line 1142
    const-string v3, "com.android.lgesettingsaccessibility"

    invoke-static {p0, v3}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1143
    const-string v3, "Settings"

    const-string v7, "Remove lge accessibility"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1149
    :cond_11
    const v3, 0x7f0a044d

    if-ne v6, v3, :cond_12

    .line 1150
    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnableEasyUI()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1151
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1156
    :cond_12
    const v3, 0x7f0a0452

    if-ne v6, v3, :cond_13

    .line 1157
    iget-boolean v3, p0, Lcom/android/lgesettings/Settings;->HASFACING_SENSOR:Z

    if-eqz v3, :cond_4c

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1158
    iput-boolean v4, p0, Lcom/android/lgesettings/Settings;->HASFACING_SENSOR:Z

    .line 1165
    :cond_13
    :goto_5
    const v3, 0x7f0a0445

    if-ne v6, v3, :cond_14

    .line 1169
    sput-object v0, Lcom/android/lgesettings/Settings;->mRCSHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1170
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->checkRcsDB()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1171
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1175
    :cond_14
    const v3, 0x7f0a0446

    if-ne v6, v3, :cond_15

    .line 1176
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.summit.beam.SHOW_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/Settings;->isCallable(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1177
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1180
    :cond_15
    const v3, 0x7f0a046f

    if-ne v6, v3, :cond_16

    .line 1181
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1182
    const-string v3, "l1v"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1195
    :cond_16
    :goto_6
    const v3, 0x7f0a0473

    if-ne v6, v3, :cond_18

    .line 1197
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSelectOldVersion()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1198
    :cond_17
    const-string v3, "aboutphone"

    const-string v7, "about_settings, removed !"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1203
    :cond_18
    const v3, 0x7f0a0474

    if-ne v6, v3, :cond_1a

    .line 1205
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSelectOldVersion()Z

    move-result v3

    if-eq v3, v4, :cond_19

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1206
    :cond_19
    const-string v3, "aboutphone"

    const-string v7, "about_settings_lge, removed !"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1211
    :cond_1a
    const v3, 0x7f0a0475

    if-ne v6, v3, :cond_1b

    .line 1213
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1214
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1218
    :cond_1b
    const v3, 0x7f0a0476

    if-ne v6, v3, :cond_1c

    .line 1220
    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1221
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1227
    :cond_1c
    const v3, 0x7f0a0469

    if-ne v6, v3, :cond_1d

    .line 1228
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportHotkey(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1229
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1234
    :cond_1d
    const v3, 0x7f0a0472

    if-ne v6, v3, :cond_1e

    .line 1235
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1236
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1240
    :cond_1e
    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1241
    const v7, 0x7f0a0462

    if-ne v6, v7, :cond_1f

    .line 1242
    const-string v7, "CN"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1243
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1247
    :cond_1f
    const v7, 0x7f0a0463

    if-ne v6, v7, :cond_20

    .line 1248
    const-string v7, "CN"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1249
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1254
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_21

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_21

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/lgesettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v3, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1257
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1261
    :cond_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_50

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_50

    .line 1263
    iget-object v3, p0, Lcom/android/lgesettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_22

    invoke-static {v0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_22

    .line 1265
    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1267
    :cond_22
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    add-int/lit8 v0, v1, 0x1

    :goto_7
    move v1, v0

    .line 1270
    goto/16 :goto_0

    .line 886
    :cond_23
    const v3, 0x7f0a043f

    if-ne v6, v3, :cond_24

    .line 888
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 889
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 891
    :cond_24
    const v3, 0x7f0a0440

    if-ne v6, v3, :cond_25

    .line 893
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 894
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 897
    :cond_25
    const v3, 0x7f0a043d

    if-ne v6, v3, :cond_26

    .line 898
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v3

    if-nez v3, :cond_2

    .line 899
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 902
    :cond_26
    const v3, 0x7f0a0450

    if-ne v6, v3, :cond_27

    .line 903
    const-string v3, "tablet"

    const-string v7, "ro.build.characteristics"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 904
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 906
    :cond_27
    const v3, 0x7f0a0451

    if-ne v6, v3, :cond_28

    .line 907
    const-string v3, "tablet"

    const-string v7, "ro.build.characteristics"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 908
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 910
    :cond_28
    const v3, 0x7f0a0441

    if-ne v6, v3, :cond_2d

    .line 912
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 915
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 916
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_29
    :goto_8
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 923
    const v3, 0x7f0807d8

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_1

    .line 924
    :cond_2a
    const-string v3, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 927
    :cond_2b
    const v3, 0x7f080a7c

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_1

    .line 928
    :cond_2c
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 929
    const v3, 0x7f080fa3

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_1

    .line 935
    :cond_2d
    const v3, 0x7f0a0464

    if-ne v6, v3, :cond_2f

    .line 936
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 937
    add-int/lit8 v1, v1, 0x1

    .line 938
    invoke-direct {p0, p1, v1}, Lcom/android/lgesettings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v1

    goto/16 :goto_1

    .line 940
    :cond_2e
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 942
    :cond_2f
    const v3, 0x7f0a045b

    if-ne v6, v3, :cond_30

    .line 943
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 944
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 946
    :cond_30
    const v3, 0x7f0a0466

    if-ne v6, v3, :cond_31

    .line 947
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 949
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 951
    :cond_31
    const v3, 0x7f0a045d

    if-ne v6, v3, :cond_33

    .line 952
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 955
    :cond_32
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 957
    :cond_33
    const v3, 0x7f0a0470

    if-ne v6, v3, :cond_34

    .line 958
    if-nez v5, :cond_2

    .line 959
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 961
    :cond_34
    const v3, 0x7f0a0447

    if-ne v6, v3, :cond_36

    .line 962
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportShareConnect(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 963
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 966
    :cond_35
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->OnlyWirelessStorage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 967
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 969
    :cond_36
    const v3, 0x7f0a0448

    if-ne v6, v3, :cond_37

    .line 970
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->OnlyWirelessStorage(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 971
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 974
    :cond_37
    const v3, 0x7f0a044a

    if-ne v6, v3, :cond_39

    .line 975
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 976
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 979
    :cond_38
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 980
    const v3, 0x7f0200bf

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_1

    .line 982
    :cond_39
    const v3, 0x7f0a044b

    if-ne v6, v3, :cond_3c

    .line 983
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 984
    :cond_3a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 985
    :cond_3b
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 986
    const v3, 0x7f08010c

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 987
    const v3, 0x7f0200be

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 988
    const v3, 0x7f08010b

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_1

    .line 990
    :cond_3c
    const v3, 0x7f0a045a

    if-ne v6, v3, :cond_3d

    .line 991
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 992
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1002
    :cond_3d
    const v3, 0x7f0a0471

    if-ne v6, v3, :cond_3e

    .line 1004
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sprint.dsa"

    const-string v8, "com.sprint.dsa.DsaClient"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/Settings;->isCallable(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1005
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1007
    :cond_3e
    const v3, 0x7f0a045c

    if-ne v6, v3, :cond_40

    .line 1008
    const-string v3, "com.lge.cloudhub"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/Settings;->appIsEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1009
    :cond_3f
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1011
    :cond_40
    const v3, 0x7f0a0465

    if-ne v6, v3, :cond_42

    .line 1012
    const-string v3, "com.lge.cloudhub"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/Settings;->appIsEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1013
    :cond_41
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1015
    :cond_42
    const v3, 0x7f0a0468

    if-ne v6, v3, :cond_44

    .line 1017
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "com.skyfire.browser.toolbar.att"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/Settings;->appIsEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "com.skyfire.browser.toolbar.att.service"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/Settings;->appIsEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1019
    :cond_43
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1021
    :cond_44
    const v3, 0x7f0a045e

    if-ne v6, v3, :cond_47

    .line 1022
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.lge.launcher2"

    const-string v8, "com.lge.launcher2.plushome.setting.LGPlusHomeSetting"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/Settings;->isCallable(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1023
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1025
    :cond_45
    const-string v3, "kids"

    const-string v7, "service.plushome.currenthome"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1026
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1029
    :cond_46
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-ne v4, v3, :cond_2

    .line 1030
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1033
    :cond_47
    const v3, 0x7f0a043e

    if-ne v6, v3, :cond_2

    .line 1034
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1035
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1081
    :cond_48
    const-string v3, "Settings"

    const-string v7, "HFA  No"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1082
    goto/16 :goto_2

    .line 1090
    :cond_49
    const-string v3, "ro.debuggable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4a

    .line 1091
    const-string v3, "Settings"

    const-string v7, "user debug mode roaming menu on"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1092
    goto/16 :goto_3

    :cond_4a
    move v3, v2

    .line 1094
    goto/16 :goto_3

    .line 1112
    :cond_4b
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1113
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1160
    :cond_4c
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1186
    :cond_4d
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1190
    :cond_4e
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1271
    :cond_4f
    return-void

    .line 918
    :catch_0
    move-exception v3

    goto/16 :goto_8

    :cond_50
    move v0, v1

    goto/16 :goto_7
.end method


# virtual methods
.method public appIsEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3234
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3237
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3241
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v3

    .line 3238
    :catch_0
    move-exception v0

    .line 3239
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkRcsDB()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1274
    .line 1276
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lge.ims.provisioning/workings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1279
    if-nez v0, :cond_0

    .line 1280
    const-string v0, "kimyow"

    const-string v1, "R.id.rcs_setting : objCursor==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :goto_0
    return v7

    .line 1283
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1284
    const-string v1, "kimyow"

    const-string v2, "R.id.rcs_setting : objCursor.moveToNext()==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1297
    const-string v0, "kimyow"

    const-string v1, "Exception occured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_1
    move v7, v0

    .line 1300
    goto :goto_0

    .line 1289
    :cond_1
    :try_start_1
    const-string v1, "show_settings"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1290
    if-ge v1, v6, :cond_2

    .line 1291
    const-string v2, "kimyow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R.id.rcs_setting:status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 1299
    goto :goto_1
.end method

.method public checkSensor()V
    .locals 5

    .prologue
    .line 1304
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1306
    .local v2, sensorManager:Landroid/hardware/SensorManager;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1308
    .local v1, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1309
    const-string v4, "Settings"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_0

    .line 1311
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/lgesettings/Settings;->HASFACING_SENSOR:Z

    .line 1308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1314
    :cond_1
    return-void
.end method

.method protected cloudEnable()Z
    .locals 4

    .prologue
    .line 1389
    const/4 v0, 0x0

    .line 1390
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1391
    if-eqz v1, :cond_0

    .line 1392
    const-string v0, "BUA+"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm.hasSystemFeature(com.lge.cloudservice.enabled); : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.lge.cloudservice.enabled"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v0, "com.lge.cloudservice.enabled"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1395
    :cond_0
    return v0
.end method

.method public confirmDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3206
    .line 3207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080bfa

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/Settings$6;

    invoke-direct {v2, p0, p1}, Lcom/android/lgesettings/Settings$6;-><init>(Lcom/android/lgesettings/Settings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/Settings$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/Settings$5;-><init>(Lcom/android/lgesettings/Settings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080cbb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3229
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3230
    return-void
.end method

.method public getBreadCrumb()Lcom/android/lgesettings/SettingsBreadCrumb;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 559
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 560
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 563
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 565
    const-string v0, ":android:show_fragment"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 567
    if-eqz v3, :cond_0

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 572
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    .line 583
    :goto_1
    return-object v0

    .line 570
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 575
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.lgesettings.Settings$WifiSettingsDialogActivity"

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.lgesettings.Settings$WifiScreenSettingsDialogActivity"

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 579
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 583
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1427
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 603
    :cond_0
    :goto_0
    return-object v0

    .line 593
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 596
    :cond_2
    const-string v1, "com.android.lgesettings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.lgesettings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.lgesettings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    :cond_3
    const-class v0, Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1422
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public needBreadCrumb()Z
    .locals 3

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings.Settings$WifiSettingsDialogActivity"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.lgesettings.Settings$WifiScreenSettingsDialogActivity"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 377
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 2042
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 2043
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->invalidateHeaders()V

    .line 2044
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 209
    :try_start_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    const v0, 0x7f06005c

    invoke-virtual {p0, v0, p1}, Lcom/android/lgesettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 862
    invoke-direct {p0, p1}, Lcom/android/lgesettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 863
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 631
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragmentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-class v1, Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/Settings$RingtonePickerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    :cond_1
    const-class v1, Lcom/android/lgesettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 656
    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/Settings;->addEachFunctionIcon(Landroid/content/Intent;Ljava/lang/String;)V

    .line 657
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f080107

    const/high16 v5, 0x7f03

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setIcon(I)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 258
    :cond_1
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/Settings;->mIsWifiOnly:Z

    .line 261
    new-instance v0, Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    .line 262
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v3}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 265
    const-string v0, "development"

    invoke-virtual {p0, v0, v2}, Lcom/android/lgesettings/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 268
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;->getMetaData()V

    .line 269
    iput-boolean v4, p0, Lcom/android/lgesettings/Settings;->mInLocalHeaderSwitch:Z

    .line 270
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    iput-boolean v2, p0, Lcom/android/lgesettings/Settings;->mInLocalHeaderSwitch:Z

    .line 273
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->customList:Landroid/widget/ListView;

    .line 274
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->customList:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 276
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->needBreadCrumb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    new-instance v0, Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SettingsBreadCrumb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 278
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->attach()V

    .line 279
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/lgesettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 281
    iput-boolean v4, p0, Lcom/android/lgesettings/Settings;->mBreadCrumbTitleDisplayedFlag:Z

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget v0, p0, Lcom/android/lgesettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/Settings;->highlightHeader(I)V

    .line 289
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/Settings;->setTitle(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setIcon(I)V

    .line 296
    :cond_3
    if-eqz p1, :cond_4

    .line 297
    const-string v0, "com.android.lgesettings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 298
    const-string v0, "com.android.lgesettings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 302
    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/lgesettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_6

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/lgesettings/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/Settings$2;-><init>(Lcom/android/lgesettings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/lgesettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 317
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LargeText_Flag"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_7

    .line 321
    const-string v1, "SETTINGS_FUNCTION_ICON_RRESOURCE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 322
    if-lez v0, :cond_7

    .line 323
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 326
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 328
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 333
    :cond_8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    const-string v1, "com.lge.FINISH_MAIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mFinshMainUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    if-nez p1, :cond_9

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 339
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->showSettingsTipEasy()V

    .line 345
    :cond_9
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_a

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->addMainSettingsPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 349
    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    :cond_a
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 450
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 452
    iget-boolean v0, p0, Lcom/android/lgesettings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mFinshMainUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->clean()V

    .line 470
    :cond_2
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 612
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 614
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 615
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 617
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 618
    iput-object v1, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 622
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1747
    .line 1748
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a0466

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 1750
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    move v2, v0

    .line 1825
    :cond_0
    :goto_0
    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_f

    .line 1826
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/Settings;->highlightHeader(I)V

    .line 1830
    :goto_1
    return-void

    .line 1751
    :cond_1
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a045a

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1752
    const-string v0, "com.nttdocomo.android.docomoset"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->appIsEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 1755
    :cond_2
    const-string v0, "com.nttdocomo.android.docomoset"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->confirmDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1768
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a043d

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 1769
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    .line 1771
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1772
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    if-eqz v3, :cond_0

    .line 1773
    check-cast v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/Settings$HeaderAdapter;->updateAirplaneModeEnabler(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1769
    goto :goto_2

    .line 1776
    :cond_5
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0a0471

    cmp-long v0, v0, v3

    if-nez v0, :cond_6

    .line 1777
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1778
    const-string v1, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    const-string v1, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    const-string v1, "com.sprint.dsa.source"

    const-string v3, "menu"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1781
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1783
    :cond_6
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0a045c

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0a0465

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    .line 1784
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.cloudhub.action.ACCOUNT_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1785
    const-string v1, "hsmodel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const-string v1, "package.name"

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1789
    :cond_8
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0a045e

    cmp-long v0, v0, v3

    if-nez v0, :cond_9

    .line 1790
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    const-string v1, "com.lge.launcher2"

    const-string v3, "com.lge.launcher2.plushome.setting.LGPlusHomeSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    const/high16 v1, 0x1081

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1793
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1795
    :cond_9
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0a043e

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    .line 1796
    invoke-direct {p0, p0}, Lcom/android/lgesettings/Settings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1797
    const v0, 0x7f0811c7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1800
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_0

    .line 1804
    :cond_b
    const/4 v0, 0x0

    .line 1805
    if-eqz p1, :cond_c

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 1806
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1809
    :cond_c
    if-eqz v0, :cond_d

    const-string v1, "com.fusionone.account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1810
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->cloudEnable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1811
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.vzw.bua.intent.action.SUBSCRIBE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1822
    :cond_d
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_0

    .line 1814
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1815
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.lge.cloudvmm"

    const-string v4, "com.lge.cloudvmm.ApplicationGateActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1817
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1818
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1819
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1828
    :cond_f
    iput-object p1, p0, Lcom/android/lgesettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_1
.end method

.method public onIsMultiPane()Z
    .locals 4

    .prologue
    .line 234
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    .line 235
    const-string v1, "MultiPane"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsMultiPane="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 238
    const-string v1, "MultiPane"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsMultiPane::lg_preferences_prefer_dual_pane="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f08000b

    const/high16 v8, 0x1020

    const/4 v5, 0x0

    const/high16 v7, 0x1028

    const/4 v1, 0x1

    .line 1848
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v2, 0x1234

    if-ne v0, v2, :cond_2

    .line 1849
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_style_do_not_show"

    invoke-static {v0, v1, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1850
    if-lez v0, :cond_1

    .line 1851
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;->switchToTab()V

    .line 1852
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    .line 1974
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1854
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/SettingsStyleAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1855
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1856
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1858
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 1859
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "settings_style"

    invoke-static {v0, v2, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1860
    if-ne v0, v1, :cond_e

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1861
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1862
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1863
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1864
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1865
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1866
    invoke-static {p0, v3}, Lcom/android/lgesettings/Utils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 1867
    const-string v3, "kimyow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  base="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const-string v3, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1869
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onBackPressed()V

    move v0, v1

    .line 1870
    goto/16 :goto_1

    .line 1871
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.lgesettings."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1872
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1873
    const-string v3, "CHRISWON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHRISWON : Doing nothing! + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1877
    const-string v3, "com.android.lgesettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1878
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1880
    goto/16 :goto_1

    .line 1881
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.lgesettings."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1883
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1884
    const-string v3, "CHRISWON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHRISWON : Doing nothing! + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1888
    const-string v3, "com.android.lgesettings"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1890
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1891
    goto/16 :goto_1

    .line 1892
    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "com.android.lgesettings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1895
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1898
    const-string v3, "com.android.lgesettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1899
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1900
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1901
    goto/16 :goto_1

    .line 1902
    :cond_6
    const-string v2, "com.android.lgesettings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.lgesettings.Settings$ShareConnectionActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1905
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1906
    const-string v3, "com.android.lgesettings"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1907
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1910
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1911
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1912
    goto/16 :goto_1

    .line 1914
    :cond_8
    const-string v2, "com.android.lgesettings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1916
    const-string v2, "JKJK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baseActivityClassName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | topActivityClassName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onBackPressed()V

    move v0, v1

    .line 1926
    goto/16 :goto_1

    .line 1929
    :cond_9
    const-string v2, "com.android.lgesettings.Settings$WifiP2pSettingsActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1930
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onBackPressed()V

    move v0, v1

    .line 1931
    goto/16 :goto_1

    .line 1934
    :cond_a
    const-string v2, "com.android.lgesettings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1935
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onBackPressed()V

    move v0, v1

    .line 1936
    goto/16 :goto_1

    .line 1938
    :cond_b
    const-string v2, "com.android.lgesettings.SubSettings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.android.lgesettings.Settings$TetherNetworkSettingsActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1940
    const-string v2, "TEST"

    const-string v3, "It from SubSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1942
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1945
    const-string v3, "com.android.lgesettings"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1947
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1948
    goto/16 :goto_1

    .line 1949
    :cond_c
    const-string v2, "com.android.lgesettings.Settings$PowerSaveBatteryDetailActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1950
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->onBackPressed()V

    move v0, v1

    .line 1951
    goto/16 :goto_1

    .line 1953
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1955
    invoke-static {v4}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1956
    const-string v3, "kimyow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tabIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1958
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1959
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1960
    goto/16 :goto_1

    .line 1963
    :cond_e
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    .line 1964
    const-string v2, "kimyow_upkey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const-string v2, "com.android.lgesettings.SubSettings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1966
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1968
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->finish()V

    move v0, v1

    .line 1970
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 438
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 439
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 440
    check-cast v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->pause()V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 446
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2011
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 2012
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/lgesettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2013
    const v3, 0x7f08039f

    .line 2020
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/lgesettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2022
    const/4 v0, 0x1

    return v0

    .line 2014
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2016
    const v3, 0x7f08013e

    goto :goto_0

    .line 2017
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/lgesettings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    const v3, 0x7f08060a

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x1234

    const/4 v0, 0x0

    .line 1835
    .line 1836
    const-string v1, "kimyow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " menu.toString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/lgesettings/Settings;->checkActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1838
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1839
    const v1, 0x7f080d04

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v4, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1841
    :cond_0
    const/4 v0, 0x1

    .line 1843
    :cond_1
    return v0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 398
    new-instance v0, Lcom/android/lgesettings/Settings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/Settings$3;-><init>(Lcom/android/lgesettings/Settings;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 404
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 408
    instance-of v0, v1, Lcom/android/lgesettings/Settings$HeaderAdapter;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 409
    check-cast v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->resume()V

    .line 411
    sget-object v0, Lcom/android/lgesettings/Settings;->mRCSHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->checkRcsDB()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 412
    const-string v0, "Settings"

    const-string v2, "checkRCS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    check-cast v1, Lcom/android/lgesettings/Settings$HeaderAdapter;

    .line 414
    invoke-virtual {v1}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getCount()I

    move-result v6

    move v5, v4

    move v2, v4

    .line 417
    :goto_0
    if-ge v4, v6, :cond_1

    .line 418
    invoke-virtual {v1, v4}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-object v0, Lcom/android/lgesettings/Settings;->mRCSHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v9, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_0

    move v2, v3

    .line 421
    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0a044a

    cmp-long v0, v7, v9

    if-nez v0, :cond_3

    move v0, v4

    .line 417
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_0

    .line 425
    :cond_1
    if-nez v2, :cond_2

    .line 426
    const-string v0, "Settings"

    const-string v2, "insert RCS Header"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v0, Lcom/android/lgesettings/Settings;->mRCSHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v5}, Lcom/android/lgesettings/Settings$HeaderAdapter;->insert(Ljava/lang/Object;I)V

    .line 431
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->invalidateHeaders()V

    .line 432
    return-void

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 386
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "com.android.lgesettings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 390
    const-string v0, "com.android.lgesettings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 392
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 2031
    if-nez p1, :cond_0

    .line 2032
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2036
    :goto_0
    return-void

    .line 2034
    :cond_0
    new-instance v0, Lcom/android/lgesettings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/Settings;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/lgesettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/lgesettings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter "targetIntent"

    .prologue
    .line 2026
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumbTitleDisplayedFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0, p1, p2}, Lcom/android/lgesettings/SettingsBreadCrumb;->showBreadCrumb(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showSettingsTipEasy()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 3386
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_settings_settings_tips"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3388
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "settings_tip_count"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3390
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;->checkActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3391
    if-ne v1, v5, :cond_0

    if-lt v0, v6, :cond_0

    .line 3392
    const/4 v0, 0x4

    .line 3395
    :cond_0
    if-gt v0, v6, :cond_1

    .line 3396
    add-int/lit8 v0, v0, 0x1

    .line 3397
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_tip_count"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3398
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tips count(Settings) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;->checkActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v1, v5, :cond_2

    if-ne v0, v6, :cond_2

    .line 3403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/SettingsTipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3404
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 3406
    :cond_2
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 4
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-boolean v0, p0, Lcom/android/lgesettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 481
    iput-object v1, p0, Lcom/android/lgesettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 482
    iput-object v1, p0, Lcom/android/lgesettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 485
    :cond_0
    sget-object v0, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumbTitleDisplayedFlag:Z

    .line 489
    :cond_1
    sput-object p1, Lcom/android/lgesettings/Settings;->mSelectedHeader:Landroid/preference/PreferenceActivity$Header;

    .line 490
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/lgesettings/Settings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->removeSwitch()V

    .line 494
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 495
    return-void
.end method
