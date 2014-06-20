.class public Lcom/android/lgesettings/nfc/NfcSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_NFC_HANDOVER:Ljava/lang/String;

.field private final KEY_NFC_P2P:Ljava/lang/String;

.field private final KEY_NFC_P2P_ONOFF:Ljava/lang/String;

.field private final KEY_SHOW_NFC_EVERY:Ljava/lang/String;

.field private final KEY_SHOW_NFC_FIRSTCONNECT:Ljava/lang/String;

.field private final KEY_SHOW_POPUP_HANDOVER:Ljava/lang/String;

.field private final KEY_SHOW_POPUP_P2P:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mCategory:Landroid/preference/PreferenceCategory;

.field private mCategoryType:Landroid/preference/PreferenceCategory;

.field private mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

.field private mCheckEvery:Landroid/preference/CheckBoxPreference;

.field private mCheckHandover:Landroid/preference/CheckBoxPreference;

.field private mCheckP2P:Landroid/preference/CheckBoxPreference;

.field private mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

.field private mCheckRmider:Landroid/preference/CheckBoxPreference;

.field private mCheckSound:Landroid/preference/CheckBoxPreference;

.field mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

.field private mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

.field private mPreferenceHelp:Landroid/preference/Preference;

.field private mSoundCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 48
    const-string v0, "NFC_SETTINGS"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "nfc_p2p"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_NFC_P2P:Ljava/lang/String;

    .line 50
    const-string v0, "nfc_handover"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_NFC_HANDOVER:Ljava/lang/String;

    .line 51
    const-string v0, "nfc_p2p_kr"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_NFC_P2P_ONOFF:Ljava/lang/String;

    .line 53
    const-string v0, "show_popup_p2p"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_SHOW_POPUP_P2P:Ljava/lang/String;

    .line 54
    const-string v0, "show_popup_handover"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_SHOW_POPUP_HANDOVER:Ljava/lang/String;

    .line 85
    const-string v0, "nfc_first_connect"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_SHOW_NFC_FIRSTCONNECT:Ljava/lang/String;

    .line 87
    const-string v0, "nfc_every"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->KEY_SHOW_NFC_EVERY:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/nfc/NfcSettingsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->setNfcSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/nfc/NfcSettingsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->markUnchecked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->enableNFC()V

    return-void
.end method

.method private enableNFC()V
    .locals 3

    .prologue
    .line 718
    const-string v1, "hwhw"

    const-string v2, "start enable NFC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 721
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 726
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 727
    const-string v1, "NFC_SETTINGS"

    const-string v2, "[NfcSettingsFragment]initNfcSystem. Flag : --enableNFC()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_1
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 735
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 737
    const-string v1, "NFC_SETTINGS"

    const-string v2, "enable only cardmode by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 742
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    :cond_3
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    goto :goto_0

    .line 745
    :cond_4
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->updateP2pState()Z

    goto :goto_0
.end method

.method private isUnchecked(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "nfc_settings"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 596
    .local v0, preferences:Landroid/content/SharedPreferences;
    sparse-switch p1, :sswitch_data_0

    .line 611
    :goto_0
    return v1

    .line 598
    :sswitch_0
    const-string v2, "show_popup_p2p"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 600
    :sswitch_1
    const-string v2, "show_popup_handover"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 602
    :sswitch_2
    const-string v1, "nfc_reminders"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 604
    :sswitch_3
    const-string v2, "nfc_first_connect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 606
    :sswitch_4
    const-string v2, "nfc_every"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method private markUnchecked(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "nfc_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    .local v0, preferences:Landroid/content/SharedPreferences;
    sparse-switch p1, :sswitch_data_0

    .line 637
    :goto_0
    return-void

    .line 620
    :sswitch_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_popup_p2p"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    const-string v1, "NFC_SETTINGS"

    const-string v2, "markUnchecked : KEY_SHOW_POPUP_P2P"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :sswitch_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_popup_handover"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    const-string v1, "NFC_SETTINGS"

    const-string v2, "markUnchecked : NUMBER_HANDOVER_CHECKBOX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :sswitch_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "nfc_first_connect"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 632
    :sswitch_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "nfc_every"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 618
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method private setNfcSwitchChecked(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 754
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitchChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method


# virtual methods
.method public FirstDisableReminer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 985
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 987
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 988
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 990
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 991
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 992
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 994
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 995
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 996
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 998
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "nfc_settings"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 999
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "nfc_reminders"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1000
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1003
    return-void
.end method

.method public airplaneDlg()V
    .locals 4

    .prologue
    .line 952
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 953
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080286

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 954
    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 956
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/NfcSettingsFragment$19;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$19;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$18;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$18;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 979
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 643
    const-string v4, "hwhw"

    const-string v5, "swtich"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 647
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    if-ne p1, v4, :cond_0

    .line 652
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 655
    .local v1, newValue:Z
    if-ne v1, v2, :cond_8

    .line 656
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn()Z

    move-result v4

    if-ne v4, v2, :cond_2

    .line 657
    const-string v2, "hwhw"

    const-string v4, "charging mode on"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f08027d

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 663
    :cond_2
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 665
    const/16 v3, 0xc8

    invoke-direct {p0, v3}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_4

    .line 668
    const-string v3, "NFC_SETTINGS"

    const-string v4, "update nfc setting : false : airplane on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->airplaneDlg()V

    .line 687
    :goto_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 672
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showNfcFirstConnectOffDlg()V

    goto :goto_1

    .line 676
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_6

    .line 677
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->airplaneDlg()V

    goto :goto_1

    .line 679
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->enableNFC()V

    goto :goto_1

    .line 684
    :cond_7
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->enableNFC()V

    goto :goto_1

    .line 692
    :cond_8
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 693
    if-nez v1, :cond_9

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->setNfcSwitchChecked(Z)V

    .line 694
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->invalidate()V

    .line 695
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->requestLayout()V

    .line 696
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showNfcOffDlg()V

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 693
    goto :goto_2

    .line 697
    :cond_a
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 698
    if-nez v1, :cond_b

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->setNfcSwitchChecked(Z)V

    .line 699
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->invalidate()V

    .line 700
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->requestLayout()V

    .line 701
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcDiscovery()Z

    .line 702
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcCard()Z

    .line 703
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->deinitNfcSystem()Z

    .line 704
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 705
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 706
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 698
    goto :goto_3

    .line 709
    :cond_c
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcDiscovery()Z

    .line 710
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcCard()Z

    .line 711
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->deinitNfcSystem()Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 190
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/lgesettings/nfc/NfcSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$2;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 201
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 202
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 203
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2, v8, v2, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 205
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 207
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v10, v10, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0801ec

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 219
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    const v4, 0x7f060035

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->addPreferencesFromResource(I)V

    .line 221
    const-string v4, "nfc_p2p"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    .line 222
    const-string v4, "nfc_handover"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    .line 223
    const-string v4, "nfc_p2p_kr"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

    .line 225
    const-string v4, "nfc_reminders"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v4, "nfc_everyday"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    .line 227
    const-string v4, "nfc_security_reminder"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCategoryType:Landroid/preference/PreferenceCategory;

    .line 228
    const-string v4, "nfc_sound"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckSound:Landroid/preference/CheckBoxPreference;

    .line 229
    const-string v4, "nfc_sound_reminder"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mSoundCategory:Landroid/preference/PreferenceCategory;

    .line 231
    const-string v4, "direct_android_beam"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    .line 232
    const-string v4, "help"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mPreferenceHelp:Landroid/preference/Preference;

    .line 233
    const-string v4, "direct_android_help"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCategory:Landroid/preference/PreferenceCategory;

    .line 234
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mPreferenceHelp:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v4

    if-nez v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f080266

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 254
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 278
    :goto_1
    new-instance v4, Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/lgesettings/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    .line 280
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 281
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    .line 286
    :goto_2
    invoke-direct {p0, v9}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 287
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 288
    .local v1, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v1, v9, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 289
    invoke-direct {p0, v9}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->markUnchecked(I)V

    .line 292
    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_3
    return-void

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mSoundCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 257
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "nfc_lock_number"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCategoryType:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 272
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 283
    :cond_7
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcManager;->pause()V

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->removeSwitch()V

    .line 304
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 390
    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 392
    .local v2, newValue:Z
    const-string v4, "NFC_SETTINGS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_5

    .line 395
    if-nez v2, :cond_1

    invoke-direct {p0, v6}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0804ae

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 399
    const v4, 0x7f08027b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 400
    const v4, 0x7f08059d

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0812e1

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x1010355

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v0           #AlertDlg:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    move v4, v5

    .line 589
    :goto_1
    return v4

    .line 422
    :cond_1
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 423
    .local v1, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v1, :cond_2

    move v4, v5

    .line 424
    goto :goto_1

    .line 427
    :cond_2
    if-eqz v2, :cond_4

    .line 428
    invoke-virtual {v1, v6, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 434
    :goto_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 435
    invoke-virtual {v1, v6, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 436
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showReminderDlg()V

    :cond_3
    move v4, v6

    .line 440
    goto :goto_1

    .line 430
    :cond_4
    invoke-virtual {v1, v6, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    goto :goto_2

    .line 442
    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_a

    .line 443
    if-nez v2, :cond_6

    invoke-direct {p0, v9}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 445
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .restart local v0       #AlertDlg:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0804ae

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 447
    const v4, 0x7f08027c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 448
    const v4, 0x7f08059d

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettingsFragment$4;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$4;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0812e1

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x1010355

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 471
    .end local v0           #AlertDlg:Landroid/app/AlertDialog$Builder;
    :cond_6
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 472
    .restart local v1       #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v1, :cond_7

    move v4, v5

    .line 473
    goto :goto_1

    .line 476
    :cond_7
    if-eqz v2, :cond_9

    .line 477
    invoke-virtual {v1, v9, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 483
    :goto_3
    if-nez v2, :cond_8

    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_8

    .line 484
    invoke-virtual {v1, v9, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 485
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showReminderDlg()V

    :cond_8
    move v4, v6

    .line 489
    goto/16 :goto_1

    .line 479
    :cond_9
    invoke-virtual {v1, v9, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    goto :goto_3

    .line 491
    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_a
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_12

    .line 492
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 493
    .restart local v1       #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 494
    if-ne v2, v6, :cond_c

    .line 495
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 496
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    :cond_b
    :goto_4
    if-nez v1, :cond_d

    move v4, v5

    .line 504
    goto/16 :goto_1

    .line 498
    :cond_c
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 499
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4

    .line 507
    :cond_d
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterDiscoveryState()I

    move-result v4

    const/16 v7, 0x15

    if-ne v4, v7, :cond_10

    .line 508
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    .line 509
    goto/16 :goto_1

    .line 511
    :cond_e
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    .line 512
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 513
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v4

    if-nez v4, :cond_f

    .line 514
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f080261

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_5
    move v4, v6

    .line 528
    goto/16 :goto_1

    .line 517
    :cond_10
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterDiscoveryState()I

    move-result v4

    const/16 v7, 0x17

    if-ne v4, v7, :cond_f

    .line 518
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcDiscovery()Z

    move-result v4

    if-nez v4, :cond_11

    move v4, v5

    .line 519
    goto/16 :goto_1

    .line 521
    :cond_11
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 522
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 523
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v4

    if-nez v4, :cond_f

    .line 524
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f080262

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 529
    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_12
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_14

    .line 530
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 532
    .restart local v1       #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-ne v2, v6, :cond_13

    .line 533
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    :goto_6
    move v4, v6

    .line 537
    goto/16 :goto_1

    .line 535
    :cond_13
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showBeamOffDlg()V

    goto :goto_6

    .line 539
    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_14
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_16

    .line 541
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "nfc_settings"

    invoke-virtual {v4, v7, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 543
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "nfc_reminders"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    if-ne v2, v6, :cond_15

    .line 546
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 547
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 548
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 550
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 551
    .restart local v1       #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v1, v6, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 552
    invoke-virtual {v1, v9, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 554
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 555
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 556
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :goto_7
    move v4, v6

    .line 563
    goto/16 :goto_1

    .line 561
    :cond_15
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showReminderDlg()V

    goto :goto_7

    .line 565
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :cond_16
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_18

    .line 566
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 567
    .restart local v1       #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-ne v2, v6, :cond_17

    .line 569
    invoke-virtual {v1, v10, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 570
    const-string v4, "NFC_SETTINGS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set Turn on EveryDay    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move v4, v6

    .line 576
    goto/16 :goto_1

    .line 572
    :cond_17
    invoke-virtual {v1, v10, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 573
    const-string v4, "NFC_SETTINGS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set Turn off EveryDay   "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 578
    .end local v1           #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_18
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckSound:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 579
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 580
    .restart local v1       #mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-ne v2, v6, :cond_19

    .line 581
    invoke-virtual {v1, v11, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 582
    const-string v4, "NFC_SETTINGS"

    const-string v5, "set Turn on Sound Call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move v4, v6

    .line 587
    goto/16 :goto_1

    .line 584
    :cond_19
    invoke-virtual {v1, v11, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 585
    const-string v4, "NFC_SETTINGS"

    const-string v5, "set Turn off Sound Call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 317
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 319
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcManager;->resume()V

    .line 325
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->updateView()V

    .line 329
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 331
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->addSwitch(Landroid/widget/Switch;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 310
    return-void
.end method

.method public showBeamOffDlg()V
    .locals 4

    .prologue
    .line 799
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 800
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 801
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 806
    :goto_0
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$10;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$10;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/NfcSettingsFragment$9;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$9;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$8;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 830
    return-void

    .line 804
    :cond_0
    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showNfcFirstConnectOffDlg()V
    .locals 6

    .prologue
    .line 894
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 895
    .local v0, FirstAlertDlg:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08025f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 897
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 898
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400d0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 899
    .local v1, dialogView:Landroid/widget/ScrollView;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 902
    const v3, 0x7f08059d

    new-instance v4, Lcom/android/lgesettings/nfc/NfcSettingsFragment$16;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$16;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0812e1

    new-instance v5, Lcom/android/lgesettings/nfc/NfcSettingsFragment$15;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$15;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/nfc/NfcSettingsFragment$14;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$14;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 923
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    .line 924
    sget-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 926
    sget-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 928
    new-instance v3, Lcom/android/lgesettings/nfc/NfcSettingsFragment$17;

    invoke-direct {v3, p0, v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$17;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 948
    return-void
.end method

.method public showNfcOffDlg()V
    .locals 4

    .prologue
    .line 760
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 762
    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 764
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/NfcSettingsFragment$6;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$6;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$5;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 794
    return-void
.end method

.method public showReminderDlg()V
    .locals 4

    .prologue
    .line 835
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 836
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 837
    const v1, 0x7f080284

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 838
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$13;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$13;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/NfcSettingsFragment$12;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$12;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;-><init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 887
    return-void
.end method

.method public updateView()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 346
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 351
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 361
    const-string v1, "NFC_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update view nfc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", p2p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",handover = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 375
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 378
    invoke-virtual {v0, v5, v4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 379
    invoke-virtual {v0, v6, v4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 380
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 382
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckEvery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method
