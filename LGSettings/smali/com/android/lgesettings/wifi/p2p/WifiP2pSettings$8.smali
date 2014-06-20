.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$8;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 479
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startSearch()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    .line 483
    return-void
.end method
