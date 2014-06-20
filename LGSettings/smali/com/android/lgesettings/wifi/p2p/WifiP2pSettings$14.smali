.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startSearch()V
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
    .line 1316
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V

    .line 1339
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    const/16 v2, 0x64

    const/4 v4, 0x0

    .line 1318
    const-string v0, "WifiP2pSettings"

    const-string v1, " discover success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1321
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1327
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V

    .line 1329
    return-void
.end method
