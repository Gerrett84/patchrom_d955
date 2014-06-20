.class Lcom/android/lgesettings/wifi/WifiApEnabler$12;
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
    .line 1294
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1296
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 1298
    const-string v1, "WifiApEnabler"

    const-string v2, "[YHD] pwDialogHandler - BUTTON_POSITIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1102(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1301
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1305
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setInitFalse()V

    .line 1306
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1300(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    .line 1320
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1308
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 1310
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v2, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 1311
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1313
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_3

    .line 1314
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    .line 1317
    :cond_3
    const-string v1, "WifiApEnabler"

    const-string v2, "[YHD] pwDialogHandler - BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
