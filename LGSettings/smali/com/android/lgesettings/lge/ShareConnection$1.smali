.class Lcom/android/lgesettings/lge/ShareConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "ShareConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/ShareConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ShareConnection;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ShareConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/lgesettings/lge/ShareConnection$1;->this$0:Lcom/android/lgesettings/lge/ShareConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 474
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 475
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveWirelessSettingsPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection$1;->this$0:Lcom/android/lgesettings/lge/ShareConnection;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 478
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 479
    const-string v1, "ShareConnection"

    const-string v2, "MDM Policy changed and activity finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 484
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method
