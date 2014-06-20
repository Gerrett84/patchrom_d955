.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 858
    const-string v0, "WifiScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " discover fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 844
    const-string v0, "WifiScreenSettings"

    const-string v1, " discover success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->updateProgressUi(Z)V

    .line 848
    invoke-static {}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1700()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    invoke-static {}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->refreshWFDDeviceForce()I

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->refreshWFDDevice()I

    goto :goto_0
.end method
