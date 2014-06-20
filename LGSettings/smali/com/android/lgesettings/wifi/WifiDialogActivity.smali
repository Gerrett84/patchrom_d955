.class public Lcom/android/lgesettings/wifi/WifiDialogActivity;
.super Landroid/app/Activity;
.source "WifiDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 124
    invoke-static {p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 127
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/lgesettings/wifi/AccessPoint;)V
    .locals 2
    .parameter "accessPoint"

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->removeDialog(I)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->showDialog(I)V

    .line 100
    return-void
.end method


# virtual methods
.method forget()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    const-string v0, "WifiSettings WifiDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 112
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->forget()V

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->submit(Lcom/android/lgesettings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 117
    :cond_1
    const-string v0, "WifiSettings WifiDialogActivity"

    const-string v1, "onClick cancel button???"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v2, "WifiSettings WifiDialogActivity"

    const-string v3, "Start WifiDialogActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "APInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, ap:Landroid/os/Bundle;
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    new-instance v2, Lcom/android/lgesettings/wifi/WifiDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity$1;-><init>(Lcom/android/lgesettings/wifi/WifiDialogActivity;)V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 61
    new-instance v2, Lcom/android/lgesettings/wifi/WifiDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity$2;-><init>(Lcom/android/lgesettings/wifi/WifiDialogActivity;)V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 71
    new-instance v2, Lcom/android/lgesettings/wifi/WifiDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity$3;-><init>(Lcom/android/lgesettings/wifi/WifiDialogActivity;)V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    new-instance v2, Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {v2, p0, v0}, Lcom/android/lgesettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;)V

    .line 87
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 105
    .local v0, ap:Lcom/android/lgesettings/wifi/AccessPoint;
    new-instance v1, Lcom/android/lgesettings/wifi/WifiDialog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v0, v2}, Lcom/android/lgesettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    .line 107
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    return-object v1
.end method

.method submit(Lcom/android/lgesettings/wifi/WifiConfigController;)V
    .locals 4
    .parameter "configController"

    .prologue
    const/4 v2, -0x1

    .line 135
    invoke-virtual {p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 137
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->finish()V

    .line 157
    return-void

    .line 144
    :cond_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiDialogActivity;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialogActivity;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
