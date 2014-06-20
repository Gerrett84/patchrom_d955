.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault$1;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->access$500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;->access$500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V

    .line 302
    :cond_0
    return-void
.end method
