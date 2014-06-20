.class Lcom/android/lgesettings/WirelessSettings$9;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/lgesettings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$9;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    .line 1439
    iget-object v2, p0, Lcom/android/lgesettings/WirelessSettings$9;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 1441
    .local v0, value:Z
    iget-object v2, p0, Lcom/android/lgesettings/WirelessSettings$9;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_style"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/android/lgesettings/WirelessSettings$9;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/WirelessSettings;->access$1300(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1445
    :cond_1
    return-void
.end method
