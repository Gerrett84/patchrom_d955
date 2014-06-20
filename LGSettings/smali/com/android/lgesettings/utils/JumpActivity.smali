.class public Lcom/android/lgesettings/utils/JumpActivity;
.super Landroid/preference/PreferenceActivity;
.source "JumpActivity.java"


# instance fields
.field private final KEY_SHARE_CONNECT_SETTINGS:Ljava/lang/String;

.field private final KEY_TETHER_NETWORK_SETTINGS:Ljava/lang/String;

.field private final KEY_WIRELESS_SETTINGS:Ljava/lang/String;

.field private mShareConnectSettings:Landroid/preference/Preference;

.field private mTetherNetworkSettings:Landroid/preference/Preference;

.field private mWirelessSettings:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    const-string v0, "wireless_settings"

    iput-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->KEY_WIRELESS_SETTINGS:Ljava/lang/String;

    .line 23
    const-string v0, "share_connect"

    iput-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->KEY_SHARE_CONNECT_SETTINGS:Ljava/lang/String;

    .line 24
    const-string v0, "tether_network_settings"

    iput-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->KEY_TETHER_NETWORK_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method private CreateWirelessNetworksMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "wireless_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/JumpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->mWirelessSettings:Landroid/preference/Preference;

    .line 40
    const-string v0, "share_connect"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/JumpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->mShareConnectSettings:Landroid/preference/Preference;

    .line 41
    const-string v0, "tether_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/JumpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->mTetherNetworkSettings:Landroid/preference/Preference;

    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->mWirelessSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/JumpActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/utils/JumpActivity;->mWirelessSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 46
    iput-object v2, p0, Lcom/android/lgesettings/utils/JumpActivity;->mWirelessSettings:Landroid/preference/Preference;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->mShareConnectSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 51
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportShareConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/JumpActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/utils/JumpActivity;->mShareConnectSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 53
    iput-object v2, p0, Lcom/android/lgesettings/utils/JumpActivity;->mShareConnectSettings:Landroid/preference/Preference;

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/utils/JumpActivity;->mTetherNetworkSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/JumpActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/utils/JumpActivity;->mTetherNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    iput-object v2, p0, Lcom/android/lgesettings/utils/JumpActivity;->mTetherNetworkSettings:Landroid/preference/Preference;

    .line 63
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0400ae

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/JumpActivity;->addPreferencesFromResource(I)V

    .line 34
    invoke-direct {p0}, Lcom/android/lgesettings/utils/JumpActivity;->CreateWirelessNetworksMenu()V

    .line 36
    return-void
.end method
