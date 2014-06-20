.class public Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private called_from_mdm_service:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->called_from_mdm_service:Z

    .line 78
    new-instance v0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x2020239

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 177
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_1

    .line 182
    const v1, 0x7f0800a1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 198
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 199
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 203
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 205
    :cond_0
    return-void

    .line 187
    :cond_1
    iget v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 188
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    :goto_1
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 191
    :cond_2
    const v1, 0x7f08009d

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    iput-boolean v2, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 312
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 313
    .local v1, manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_5

    .line 314
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 320
    .end local v1           #manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 288
    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_2

    .line 292
    const-string v4, "com.lge.mdm.intent.extra.CALLED_FROM_MDM_SERVICE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->called_from_mdm_service:Z

    .line 296
    :cond_2
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 299
    const-string v4, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v4, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_0

    .line 302
    :cond_3
    iput v7, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 305
    :cond_4
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    goto :goto_1

    .line 318
    .restart local v1       #manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    :cond_5
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 320
    goto :goto_1
.end method

.method private proceedAndFinish()V
    .locals 9

    .prologue
    .line 251
    iget-boolean v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v3, :cond_2

    .line 253
    const/4 v2, -0x1

    .line 272
    .local v2, returnCode:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 276
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 278
    return-void

    .line 254
    .end local v2           #returnCode:I
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    iget v5, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v0, v3, v5

    .line 258
    .local v0, endTime:J
    invoke-static {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 260
    iget v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v3, :cond_3

    .line 261
    invoke-static {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 263
    :cond_3
    iget v2, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 265
    .restart local v2       #returnCode:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 266
    const/4 v2, 0x1

    goto :goto_0

    .line 269
    .end local v0           #endTime:J
    .end local v2           #returnCode:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #returnCode:I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 209
    if-eq p1, v1, :cond_0

    .line 210
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 231
    :goto_0
    return-void

    .line 215
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 216
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 223
    :cond_1
    iput-boolean v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 225
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 335
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 234
    packed-switch p2, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 240
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 169
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 167
    const-string v1, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown adapter state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :pswitch_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 115
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->called_from_mdm_service:Z

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity is finished by LG MDM, btState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const-class v1, Lcom/android/lgesettings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_2

    .line 140
    const-string v1, "com.android.lgesettings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 147
    iput-boolean v3, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 142
    :cond_2
    const-string v1, "com.android.lgesettings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 150
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v0, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 155
    :cond_3
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_4

    .line 156
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->called_from_mdm_service:Z

    if-eqz v0, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto/16 :goto_0

    .line 163
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 326
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    :cond_0
    return-void
.end method
