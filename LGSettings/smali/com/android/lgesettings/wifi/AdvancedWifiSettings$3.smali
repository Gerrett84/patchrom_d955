.class Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 651
    iput-object p1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->wifiLess:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 656
    const-string v0, "persist.sys.advanced.wifiless"

    const-string v1, "wifi_advanced_wifi_rssi_less_general"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_advanced_wifi_rssi_less_general"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_rssi_polling_threshold_db"

    const/16 v2, -0x55

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 664
    return-void

    .line 658
    :cond_1
    const-string v0, "persist.sys.advanced.wifiless"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_advanced_wifi_rssi_less_city"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->access$200(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_rssi_polling_threshold_db"

    const/16 v2, -0x4b

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 660
    :cond_2
    const-string v0, "persist.sys.advanced.wifiless"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_advanced_wifi_rssi_less_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->access$300(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_rssi_polling_threshold_db"

    const/16 v2, -0x5a

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
