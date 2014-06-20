.class public Lcom/android/lgesettings/lge/DeviceInfoLgeSoftwareUpdate;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLgeSoftwareUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "aboutphone  # DeviceInfoLge"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeSoftwareUpdate;->addPreferencesFromResource(I)V

    .line 40
    return-void
.end method
