.class public interface abstract Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiScreenSettingsAs"
.end annotation


# virtual methods
.method public abstract getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;
.end method

.method public abstract getmThisDevicePref()Landroid/preference/Preference;
.end method

.method public abstract onAddDeviceCategory(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
.end method

.method public abstract onAddMessage(I)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
.end method

.method public abstract onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
.end method

.method public abstract onRemoveAllDeviceCategory()V
.end method

.method public abstract updateProgressUi(Z)V
.end method
