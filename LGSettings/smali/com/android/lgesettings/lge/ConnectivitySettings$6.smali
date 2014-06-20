.class Lcom/android/lgesettings/lge/ConnectivitySettings$6;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/ConnectivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$6;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 978
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 979
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveUsbPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$6;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 987
    :cond_1
    return-void
.end method
