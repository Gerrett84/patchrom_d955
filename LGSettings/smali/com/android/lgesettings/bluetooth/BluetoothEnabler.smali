.class public final Lcom/android/lgesettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 92
    iput-boolean v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 94
    invoke-static {p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 95
    .local v0, manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 97
    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 98
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 102
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.lge.bluetooth.action.UPDATE_CONNECT_DEV_NAME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    .line 107
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/BluetoothEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSummary(I)V

    return-void
.end method

.method private isBlockedByMdm()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/android/lgesettings/lge/OverlayUtils;->getBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 276
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 280
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    :cond_1
    return-void
.end method

.method private setSummary(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 297
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 305
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_2

    .line 306
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    const v4, 0x7f080c16

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 313
    :cond_2
    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    .line 315
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getConnectedDevices()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, devicesName:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothProfileConnectionManager;->getProfileConnectionAmount(Ljava/lang/String;)I

    move-result v0

    .line 317
    .local v0, devicesAmount:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f081059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothProfileConnectionManager;->getConnectedDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, summary:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .end local v0           #devicesAmount:I
    .end local v1           #devicesName:Ljava/lang/String;
    .end local v2           #summary:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 336
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 321
    .restart local v0       #devicesAmount:I
    .restart local v1       #devicesName:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 322
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    const v4, 0x7f08105a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 324
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    const v4, 0x7f08105b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 329
    .end local v0           #devicesAmount:I
    .end local v1           #devicesName:Ljava/lang/String;
    :cond_5
    const/16 v3, 0xb

    if-ne p1, v3, :cond_6

    .line 330
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    const v4, 0x7f081058

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 332
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 338
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 249
    invoke-direct {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 253
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSummary(I)V

    .line 257
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/widget/Switch;)Z

    .line 264
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->isBlockedByMdm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 270
    :cond_1
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 212
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f080292

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 225
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/widget/Switch;)Z

    .line 230
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 144
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/widget/Switch;)Z

    .line 124
    :cond_1
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->isBlockedByMdm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEnabler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 168
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 173
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v7, :cond_2

    move-object v3, p0

    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    const/16 v0, 0xa

    .line 176
    .local v0, bluetoothState:I
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 179
    :cond_3
    const/16 v3, 0xc

    if-ne v0, v3, :cond_6

    move v2, v4

    .line 180
    .local v2, isOn:Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_7

    move v1, v4

    .line 181
    .local v1, isOff:Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_4

    if-eqz v1, :cond_8

    :cond_4
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEnabler;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSummary(I)V

    .line 195
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_5

    .line 196
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/widget/Switch;)Z

    .line 202
    :cond_5
    sget-boolean v3, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v3, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->isBlockedByMdm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 205
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_6
    move v2, v5

    .line 179
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_7
    move v1, v5

    .line 180
    goto :goto_2

    .restart local v1       #isOff:Z
    :cond_8
    move v4, v5

    .line 182
    goto :goto_3
.end method

.method public setSwitch(Landroid/widget/Switch;Landroid/widget/TextView;)V
    .locals 0
    .parameter "switch_"
    .parameter "summary_"

    .prologue
    .line 163
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->mSummaryTextView:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 165
    return-void
.end method
