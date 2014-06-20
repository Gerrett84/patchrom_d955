.class Lcom/android/lgesettings/TetherNetworkSettings$22;
.super Landroid/content/BroadcastReceiver;
.source "TetherNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$22;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2128
    .local v0, action:Ljava/lang/String;
    const-string v1, "CHRISWON"

    const-string v2, "Airplane Evenr arrives!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2130
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings$22;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateAirplaneModeState(Z)V
    invoke-static {v1, v4}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    .line 2137
    :goto_0
    return-void

    .line 2134
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings$22;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateAirplaneModeState(Z)V
    invoke-static {v1, v3}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    goto :goto_0
.end method
