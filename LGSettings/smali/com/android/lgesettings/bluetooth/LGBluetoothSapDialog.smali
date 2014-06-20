.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "LGBluetoothSapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createSapDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 5
    .parameter "deviceManager"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 90
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x202026e

    :try_start_0
    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 92
    const v2, 0x7f081507

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->createView(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 94
    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->setupAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LGBluetoothSapDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSapDialog Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createView(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;
    .locals 8
    .parameter "deviceManager"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040021

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 111
    .local v4, view:Landroid/view/View;
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, name:Ljava/lang/String;
    const v5, 0x7f0a0031

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    .local v2, messageView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    const v5, 0x7f081508

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, messageText:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 122
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #messageText:Ljava/lang/String;
    .end local v2           #messageView:Landroid/widget/TextView;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "LGBluetoothSapDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createView Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 144
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.sap.ACTION_SAP_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, sapRespIntent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->finish()V

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v4, "LGBluetoothSapDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI] onCreate : action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v0, :cond_1

    const-string v4, "com.lge.bluetooth.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->finish()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 73
    .local v3, manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    if-nez v3, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->finish()V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 79
    .local v1, deviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 80
    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->createSapDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 82
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.lge.bluetooth.sap.CONNECTION_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method
