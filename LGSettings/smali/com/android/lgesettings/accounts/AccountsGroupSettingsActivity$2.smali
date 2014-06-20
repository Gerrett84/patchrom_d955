.class Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountsGroupSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$2;->this$0:Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 503
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveManualSyncPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$2;->this$0:Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 509
    :cond_0
    return-void
.end method
