.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;
.super Ljava/lang/Object;
.source "WifiScreenSettingsAsDialogActivity.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;


# static fields
.field private static mWifiScreenScanState:Z


# instance fields
.field private mCancelView:Landroid/view/View;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

.field private mScanView:Landroid/view/View;

.field public mThisDevicePref:Landroid/preference/Preference;

.field private mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

.field private refreshButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenScanState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->refreshButton:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    return-object v0
.end method


# virtual methods
.method public getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devices"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    goto :goto_0
.end method

.method public getmThisDevicePref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mThisDevicePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mThisDevicePref:Landroid/preference/Preference;

    .line 236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devname"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public onAddDeviceCategory(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 3
    .parameter "peer"
    .parameter "wfd_state"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    new-instance v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 193
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    .line 189
    return-void
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
    .locals 11
    .parameter "wifiscreenSettings"
    .parameter "actionBarSwitch"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    .line 114
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 116
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 120
    .local v5, win:Landroid/view/Window;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v6, v6, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 121
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v6, :cond_4

    .line 122
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 123
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v6, :cond_0

    .line 125
    const-string v6, "WifiScreenSettings"

    const-string v7, "Failed to set up connection with wifi p2p service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object v8, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 131
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const v7, 0x7f060081

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addPreferencesFromResource(I)V

    .line 134
    const/high16 v6, 0x4396

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v9, v6}, Landroid/view/Window;->setLayout(II)V

    .line 136
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v7, "wifi_screen_devname"

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mThisDevicePref:Landroid/preference/Preference;

    .line 137
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v7, "wifi_screen_devices"

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    .line 142
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-nez v6, :cond_1

    .line 143
    const-string v6, "WifiScreenSettings"

    const-string v7, "mDeviceCategory is null on Dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-virtual {v1, v10}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 149
    const v6, 0x1020289

    :try_start_0
    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 151
    .local v4, vg:Landroid/view/ViewGroup;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    const v6, 0x1020359

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v6, 0x102035a

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v6, 0x102035b

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f060083

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, buttonBar:Landroid/view/View;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const v6, 0x7f0a047e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mScanView:Landroid/view/View;

    .line 161
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mScanView:Landroid/view/View;

    new-instance v7, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$1;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v6, 0x7f0a0056

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mCancelView:Landroid/view/View;

    .line 168
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mCancelView:Landroid/view/View;

    new-instance v7, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$2;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v3, v0

    .line 176
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_3

    .line 177
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #buttonBar:Landroid/view/View;
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v4           #vg:Landroid/view/ViewGroup;
    .end local v5           #win:Landroid/view/Window;
    :cond_3
    :goto_1
    return-void

    .line 129
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v5       #win:Landroid/view/Window;
    :cond_4
    const-string v6, "WifiScreenSettings"

    const-string v7, "mWifiScreenManager is null !"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onRemoveAllDeviceCategory()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "WifiScreenSettings"

    const-string v1, "mDeviceCategory.removeAll() for DialogActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->removeAll()V

    .line 220
    :cond_0
    return-void
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->scheduleMessageStopSearchProgress(Z)V

    .line 243
    :cond_0
    return-void
.end method
