.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$2;
.super Landroid/os/Handler;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
