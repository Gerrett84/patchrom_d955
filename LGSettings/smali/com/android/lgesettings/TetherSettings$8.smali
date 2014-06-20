.class Lcom/android/lgesettings/TetherSettings$8;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2029
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$8;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2031
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 2032
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveTetherPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2033
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$8;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2034
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2039
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method
