.class Lcom/android/lgesettings/wifi/WifiOpenAPDialog$2;
.super Ljava/lang/Object;
.source "WifiOpenAPDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/lgesettings/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiOpenAPDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 78
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 79
    const-string v0, "WifiOpenAPDialog"

    const-string v1, "Yes Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->access$000(Lcom/android/lgesettings/wifi/WifiOpenAPDialog;)Lcom/android/lgesettings/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->access$200(Lcom/android/lgesettings/wifi/WifiOpenAPDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->access$000(Lcom/android/lgesettings/wifi/WifiOpenAPDialog;)Lcom/android/lgesettings/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->access$100(Lcom/android/lgesettings/wifi/WifiOpenAPDialog;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "WifiOpenAPDialog"

    const-string v1, "No Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
