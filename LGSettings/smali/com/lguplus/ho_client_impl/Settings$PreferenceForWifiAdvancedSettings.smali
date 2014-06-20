.class public Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;
.super Landroid/preference/Preference;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/ho_client_impl/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceForWifiAdvancedSettings"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field pf:Landroid/preference/PreferenceFragment;

.field wifi_advanced_titlebar:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;II)V
    .locals 3
    .parameter "pf_"
    .parameter "wifi_menu_advanced"
    .parameter "wifi_advanced_titlebar"

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 407
    const-string v0, "lguplusHandover"

    iput-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->TAG:Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->pf:Landroid/preference/PreferenceFragment;

    .line 412
    invoke-virtual {p0}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {p0, p2}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->setTitle(I)V

    .line 414
    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    const-string v1, "lgupho_wifi_setting_advanced_summary"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    iput p3, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->wifi_advanced_titlebar:I

    .line 417
    return-void
.end method


# virtual methods
.method public checkBlackListAps(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lguplus/ho_client_impl/Settings;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    const-string v4, "lgupho_enabled"

    invoke-static {v3, v4, v2}, Lcom/lguplus/ho_client_impl/Settings;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v0, ssids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    const-string v4, "lgupho_disabledAps"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/lguplus/ho_client_impl/Settings;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v1, t:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    const-string v3, "lgupho_disabled_aps"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    const-string v4, "lgupho_alert_disabled_ap"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->setDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onClick()V
    .locals 10

    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 422
    .local v8, a:Landroid/app/Activity;
    instance-of v1, v8, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 423
    move-object v0, v8

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, v0

    const-string v2, "com.android.lgesettings.wifi.AdvancedWifiSettings"

    const/4 v3, 0x0

    iget v4, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->wifi_advanced_titlebar:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->pf:Landroid/preference/PreferenceFragment;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v8           #a:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v9

    .line 428
    .local v9, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref for wifi adv settings, onClick(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ssid"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 446
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 449
    const v1, 0x104000a

    new-instance v2, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;

    invoke-direct {v2, p0, p1}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;-><init>(Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 464
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 465
    return-void
.end method
