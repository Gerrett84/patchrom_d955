.class Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 759
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 760
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveExternalStoragePolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    #calls: Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveWipeDateChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    #calls: Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    goto :goto_0
.end method
