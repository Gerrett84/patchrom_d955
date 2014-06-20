.class Lcom/android/lgesettings/DataUsageSummary$18;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 3437
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$18;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3439
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 3440
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveDataUsageSettingPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3442
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$18;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 3443
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$18;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$4500(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$18;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3444
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$18;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3448
    :cond_1
    return-void
.end method
