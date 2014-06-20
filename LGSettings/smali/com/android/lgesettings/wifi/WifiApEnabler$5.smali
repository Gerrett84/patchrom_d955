.class Lcom/android/lgesettings/wifi/WifiApEnabler$5;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 503
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$902(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 504
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 505
    .local v2, wifiApState:I
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 507
    .local v3, wifiState:I
    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    .line 508
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 509
    .local v1, secureIndex:I
    if-eq v1, v7, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 510
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4, v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1102(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 512
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 513
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 515
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 517
    .end local v0           #password:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v4, v7}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 518
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 519
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1300(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    .line 530
    .end local v1           #secureIndex:I
    :cond_3
    :goto_0
    return-void

    .line 520
    :cond_4
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    .line 521
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v4, v8}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 522
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v4, v8}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 523
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 525
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_3

    .line 526
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    goto :goto_0
.end method
