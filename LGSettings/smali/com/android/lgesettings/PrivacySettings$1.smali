.class Lcom/android/lgesettings/PrivacySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/PrivacySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/lgesettings/PrivacySettings$1;->this$0:Lcom/android/lgesettings/PrivacySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 367
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveWipeDateChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/lgesettings/PrivacySettings$1;->this$0:Lcom/android/lgesettings/PrivacySettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 372
    :cond_0
    return-void
.end method
