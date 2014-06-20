.class Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog$1;
.super Ljava/lang/Object;
.source "WifiP2pInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 74
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 75
    const-string v0, "WifiP2pInfoDialog"

    const-string v1, "OK Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->dismiss()V

    .line 80
    :cond_0
    return-void
.end method
