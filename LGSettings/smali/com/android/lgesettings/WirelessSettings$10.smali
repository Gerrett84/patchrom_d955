.class Lcom/android/lgesettings/WirelessSettings$10;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$10;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1451
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 1452
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveWirelessSettingsPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings$10;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1455
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1460
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method
