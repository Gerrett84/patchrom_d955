.class Lcom/android/lgesettings/wifi/WifiApEnabler$4;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;->createWifiOffWarningDialogForATT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$4;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$4;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "WifiApEnabler"

    const-string v2, "Wi-Fi off in createWifiOffWarningDialogForATT()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$4;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 480
    const-string v1, "wifi_saved_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$4;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->createHotspotWarningPopupForATT()V
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1000(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    .line 482
    return-void
.end method
