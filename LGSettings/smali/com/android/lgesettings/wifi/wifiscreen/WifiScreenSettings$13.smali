.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1077
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1080
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$800(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1091
    :cond_0
    return-void
.end method
