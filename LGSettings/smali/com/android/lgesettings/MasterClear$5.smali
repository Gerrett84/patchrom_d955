.class Lcom/android/lgesettings/MasterClear$5;
.super Landroid/content/BroadcastReceiver;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/lgesettings/MasterClear$5;->this$0:Lcom/android/lgesettings/MasterClear;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 535
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveWipeDateChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear$5;->this$0:Lcom/android/lgesettings/MasterClear;

    invoke-virtual {v0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 540
    :cond_0
    return-void
.end method
