.class public Lcom/android/lgesettings/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_SHOW_NFC_FIRSTCONNECT:Ljava/lang/String;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

.field private mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

.field private mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    const-string v0, "nfc_first_connect"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->KEY_SHOW_NFC_FIRSTCONNECT:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/lgesettings/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$1;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/nfc/AndroidBeam;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/AndroidBeam;->setBeamSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/nfc/AndroidBeam;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/nfc/AndroidBeam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->checkDisallowAndroidBeamPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    return-object v0
.end method

.method private checkDisallowAndroidBeamPolicy()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 342
    const/4 v0, 0x1

    .line 343
    .local v0, policy:I
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    .line 344
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    .line 346
    :cond_0
    if-eq v0, v1, :cond_1

    .line 347
    const-string v2, "AndroidBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDisallowAndroidBeamPolicy Block: policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const v1, 0x7f08026d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->checkDisallowAndroidBeamPolicy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const v1, 0x7f080273

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 164
    return-void

    .line 157
    :cond_1
    const v1, 0x7f08026e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setAnimation()V
    .locals 4

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 331
    .local v0, animationImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/lgesettings/nfc/AndroidBeam$4;

    invoke-direct {v1, p0, v0}, Lcom/android/lgesettings/nfc/AndroidBeam$4;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;Landroid/widget/ImageView;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    return-void
.end method

.method private setBeamSwitchChecked(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 320
    return-void
.end method


# virtual methods
.method public airplaneDlg()V
    .locals 4

    .prologue
    .line 450
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080286

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 452
    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 454
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/AndroidBeam$11;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$11;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/AndroidBeam$10;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$10;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/AndroidBeam$9;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$9;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 488
    return-void
.end method

.method public isUnchecked(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "nfc_settings"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    .local v0, preferences:Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 364
    :goto_0
    return v1

    .line 359
    :pswitch_0
    const-string v2, "nfc_first_connect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public markUnchecked(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "nfc_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    .local v0, preferences:Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 373
    :pswitch_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "nfc_first_connect"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const v7, 0x7f08025c

    const v6, 0x7f08025b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    const/4 v0, 0x0

    .line 171
    .local v0, success:Z
    if-eqz p2, :cond_c

    .line 173
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 175
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/nfc/AndroidBeam;->isUnchecked(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 178
    const-string v1, "AndroidBeam"

    const-string v2, "update nfc setting : false : airplane on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->airplaneDlg()V

    .line 271
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->showNfcFirstConnectOffDlg()V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-ne v1, v3, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->airplaneDlg()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 196
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.enableNfcDiscovery : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    move-result v0

    .line 200
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.enableNfcP2p : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 209
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 210
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 212
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 213
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 214
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    .line 215
    const-string v3, "AndroidBeam"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNfcAdapter.initNfcSystem : desiredState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v3

    if-ne v3, v1, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 219
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 224
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 225
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 226
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.enableNfcDiscovery : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    move-result v0

    .line 229
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.enableNfcP2p : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 238
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 239
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 241
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 242
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 243
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    .line 244
    const-string v3, "AndroidBeam"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNfcAdapter.initNfcSystem : desiredState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v3

    if-ne v3, v1, :cond_9

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 248
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 251
    :cond_a
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 252
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 253
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.enableNfcDiscovery : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_b
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    move-result v0

    .line 256
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.enableNfcP2p : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :cond_c
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v3

    if-ne v3, v1, :cond_e

    .line 261
    if-nez p2, :cond_d

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/lgesettings/nfc/AndroidBeam;->setBeamSwitchChecked(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->invalidate()V

    .line 263
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->requestLayout()V

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->showBeamOffDlg()V

    .line 265
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showBeamOffDlg : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move v1, v2

    .line 261
    goto :goto_1

    .line 267
    :cond_e
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    move-result v0

    .line 268
    const-string v1, "AndroidBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.disableNfcP2p : desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0801ef

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 99
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 100
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 101
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 112
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/nfc/AndroidBeam$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$2;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 136
    new-instance v3, Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/lgesettings/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    .line 137
    iget-object v3, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    iget-object v4, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mListener:Lcom/android/lgesettings/nfc/NfcStateListener;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    .line 138
    return-void

    .line 115
    .restart local v1       #padding:I
    .restart local v2       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080257

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 143
    const v0, 0x7f04000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcManager;->pause()V

    .line 277
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 285
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->checkDisallowAndroidBeamPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    .line 290
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->setAnimation()V

    .line 292
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcManager;->resume()V

    .line 293
    return-void
.end method

.method public showBeamOffDlg()V
    .locals 4

    .prologue
    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 306
    :goto_0
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/AndroidBeam$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$3;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    return-void

    .line 303
    :cond_0
    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showNfcFirstConnectOffDlg()V
    .locals 6

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, FirstAlertDlg:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08025f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 387
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400d0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 388
    .local v1, dialogView:Landroid/widget/ScrollView;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 391
    const v3, 0x7f08059d

    new-instance v4, Lcom/android/lgesettings/nfc/AndroidBeam$7;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$7;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0812e1

    new-instance v5, Lcom/android/lgesettings/nfc/AndroidBeam$6;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$6;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/nfc/AndroidBeam$5;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/AndroidBeam$5;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    .line 421
    sget-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 423
    sget-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    new-instance v3, Lcom/android/lgesettings/nfc/AndroidBeam$8;

    invoke-direct {v3, p0, v1}, Lcom/android/lgesettings/nfc/AndroidBeam$8;-><init>(Lcom/android/lgesettings/nfc/AndroidBeam;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method
