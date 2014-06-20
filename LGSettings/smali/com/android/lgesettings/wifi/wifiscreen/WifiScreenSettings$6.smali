.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 650
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$800(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 666
    :cond_0
    return-void
.end method
