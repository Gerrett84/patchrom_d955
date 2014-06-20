.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiScreenSettingsAsDefault"
.end annotation


# instance fields
.field public mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

.field private mEmptyView:Landroid/widget/TextView;

.field private mSearchView:Landroid/view/View;

.field private mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    return-object v0
.end method


# virtual methods
.method public getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devices"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    goto :goto_0
.end method

.method public getmThisDevicePref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 413
    sget-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevicePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

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
    .line 356
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    new-instance v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 338
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const v6, 0x7f080503

    const v5, 0x7f080307

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 311
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    :cond_0
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 315
    sget-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi070u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$600()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    sget-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi070u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$600()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    :cond_3
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
    .locals 6
    .parameter "wifiscreenSettings"
    .parameter "actionBarSwitch"

    .prologue
    const/16 v5, 0x8

    .line 258
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    .line 260
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const v4, 0x7f060081

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addPreferencesFromResource(I)V

    .line 262
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v4, "wifi_screen_devname"

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 265
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v4, "wifi_screen_devices"

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    .line 266
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-nez v3, :cond_0

    .line 267
    const-string v3, "WifiScreenSettings"

    const-string v4, "mDeviceCategory is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    .line 272
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    const v4, 0x41aaa3d7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 275
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 279
    :cond_1
    sget-object v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    const-string v4, "awifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    const-string v4, "awifi070u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 282
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x1020289

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 283
    .local v2, vg:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    const v3, 0x1020359

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const v3, 0x102035a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 287
    const v3, 0x102035b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f060082

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, buttonBar:Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    const v3, 0x7f0a047e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mSearchView:Landroid/view/View;

    .line 296
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mSearchView:Landroid/view/View;

    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #buttonBar:Landroid/view/View;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method public onRemoveAllDeviceCategory()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "WifiScreenSettings"

    const-string v1, "mDeviceCategory.removeAll() for Default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->removeAll()V

    .line 391
    :cond_0
    return-void
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->scheduleMessageStopSearchProgress(Z)V

    .line 424
    :cond_0
    return-void
.end method
