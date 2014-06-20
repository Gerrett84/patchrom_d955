.class public Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;
.super Ljava/lang/Object;
.source "WifiSettingsAsDialogActivity.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;


# instance fields
.field private mAccessPointCategory:Landroid/preference/PreferenceCategory;

.field private mCancelView:Landroid/view/View;

.field private mSettingsView:Landroid/view/View;

.field private mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTutorialYNPopup()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public getExpandableNotificationIndex()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandableNotificationYesButton()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public hideExpandableNotificationGuide()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    .line 105
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onGetAccessPointCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 7
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    .line 39
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v5, 0x7f06008b

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 41
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v5, "wifi_access_point"

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    .line 50
    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, activity:Landroid/app/Activity;
    const v4, 0x1020289

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 59
    .local v3, vg:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    const v4, 0x1020359

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const v4, 0x102035a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v4, 0x102035b

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f060097

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, buttonBar:Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const v4, 0x7f0a0056

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mCancelView:Landroid/view/View;

    .line 71
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mCancelView:Landroid/view/View;

    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v4, 0x7f0a0482

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mSettingsView:Landroid/view/View;

    .line 79
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mSettingsView:Landroid/view/View;

    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #buttonBar:Landroid/view/View;
    .end local v3           #vg:Landroid/view/ViewGroup;
    :catch_0
    move-exception v2

    .line 98
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 139
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 135
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 143
    return-void
.end method

.method public setExpandableNotificationIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 198
    return-void
.end method

.method public setExpandableNotificationYesButton(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 189
    return-void
.end method

.method public showExpandableNotificationGuide(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 160
    return-void
.end method

.method public showExpandableNotificationGuide2(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 176
    return-void
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 150
    :cond_0
    return-void
.end method
