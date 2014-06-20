.class Lcom/android/lgesettings/bluetooth/BluetoothSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1100
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 1101
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->receiveBluetoothChangeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1103
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1108
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method
