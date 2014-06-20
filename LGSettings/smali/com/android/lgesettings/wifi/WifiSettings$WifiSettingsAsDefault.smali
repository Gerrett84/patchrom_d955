.class public Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSettingsAsDefault"
.end annotation


# instance fields
.field private mEmptyView:Landroid/widget/TextView;

.field private mP2pSupported:Z

.field private mSetupWizardMode:Z

.field private mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isSetupWizardMode"

    .prologue
    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mSetupWizardMode:Z

    .line 324
    return-void
.end method


# virtual methods
.method public createTutorialYNPopup()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public getExpandableNotificationIndex()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandableNotificationYesButton()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public hideExpandableNotificationGuide()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 413
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mSetupWizardMode:Z

    if-nez v0, :cond_7

    .line 343
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mP2pSupported:Z

    if-eqz v0, :cond_1

    .line 346
    const v0, 0x7f0802a1

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 350
    :cond_1
    const/4 v0, 0x6

    const v1, 0x7f080307

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 364
    :cond_2
    :goto_0
    const v0, 0x7f08029e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 368
    const v0, 0x7f0802a0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 371
    const v0, 0x7f08029c

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 376
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_3

    .line 377
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getAllowWiFiProfileManagement()Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 383
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isConnectionHistory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    const/16 v0, 0x64

    const v1, 0x7f08168a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 388
    :cond_4
    const/4 v0, 0x5

    const v1, 0x7f0802ee

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 392
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    const/16 v0, 0x65

    const v1, 0x7f081619

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 407
    :cond_5
    :goto_1
    return-void

    .line 355
    :cond_6
    const/4 v0, 0x6

    const v1, 0x7f080307

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 358
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mP2pSupported:Z

    if-eqz v0, :cond_2

    .line 359
    const v0, 0x7f0802a1

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 398
    :cond_7
    const v0, 0x7f08029e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 402
    const v0, 0x7f0802a0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 430
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
    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 2
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    .line 329
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    .line 331
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x41aaa3d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 333
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/WifiSettings;->mP2pSupported:Z

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mP2pSupported:Z

    .line 338
    :cond_0
    return-void
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 440
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 436
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 444
    return-void
.end method

.method public setExpandableNotificationIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 491
    return-void
.end method

.method public setExpandableNotificationYesButton(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 482
    return-void
.end method

.method public showExpandableNotificationGuide(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 453
    return-void
.end method

.method public showExpandableNotificationGuide2(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 469
    return-void
.end method
