.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13$1;->this$1:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1072
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove group fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1063
    const-string v0, "WifiP2pSettings"

    const-string v1, " remove group success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13$1;->this$1:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->groupInit()V

    .line 1068
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$502(Z)Z

    .line 1069
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13$1;->this$1:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0816ec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1070
    return-void
.end method
