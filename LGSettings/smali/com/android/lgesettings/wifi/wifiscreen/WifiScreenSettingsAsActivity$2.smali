.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;
.super Ljava/lang/Object;
.source "WifiScreenSettingsAsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 172
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 184
    :cond_0
    return-void
.end method
