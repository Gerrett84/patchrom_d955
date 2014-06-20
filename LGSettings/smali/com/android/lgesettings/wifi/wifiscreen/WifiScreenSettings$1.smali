.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;
.super Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
.source "WifiScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
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
    .line 189
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct {p0}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized(Z)V
    .locals 3
    .parameter "isUnmatched"

    .prologue
    .line 192
    const-string v0, "WifiScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->terminate(Landroid/app/Activity;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public onReady(II)V
    .locals 3
    .parameter "readyCode"
    .parameter "rstCode"

    .prologue
    .line 212
    const-string v0, "WifiScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady: readyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rstCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 215
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onDlnaRefresh()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onDlnaRefresh()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    goto :goto_0
.end method

.method public onWFDAdded(Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 200
    const-string v0, "WifiScreenSettings"

    const-string v1, "onWFDAdded: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onDlnaRefresh()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    .line 204
    return-void
.end method

.method public onWFDInitCompleted(I)V
    .locals 2
    .parameter "rstCode"

    .prologue
    .line 223
    const/16 v0, -0x11

    if-ne p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->informConnectionRequstedUdn(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showConnectionFailToast()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onWFDRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 207
    const-string v0, "WifiScreenSettings"

    const-string v1, "onWFDRemoved: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onDlnaRefresh()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    .line 210
    return-void
.end method
