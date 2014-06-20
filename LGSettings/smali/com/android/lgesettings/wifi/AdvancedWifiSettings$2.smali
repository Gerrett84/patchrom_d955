.class Lcom/android/lgesettings/wifi/AdvancedWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x3

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mManageNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mManageNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
