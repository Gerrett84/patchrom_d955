.class Lcom/android/lgesettings/Settings$7;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/Settings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 3246
    iput-object p1, p0, Lcom/android/lgesettings/Settings$7;->this$0:Lcom/android/lgesettings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3248
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 3249
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveMainSettingsPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3250
    iget-object v0, p0, Lcom/android/lgesettings/Settings$7;->this$0:Lcom/android/lgesettings/Settings;

    invoke-virtual {v0}, Lcom/android/lgesettings/Settings;->finish()V

    .line 3253
    :cond_0
    return-void
.end method
