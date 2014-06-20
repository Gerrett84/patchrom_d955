.class Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "QuietModeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "QuietModeMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - Quietmode changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v1

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$102(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;Z)Z

    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSwitchClickable(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setCheckedUpdate()V

    .line 131
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSelectable(Z)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setCheckedUpdate()V

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeMainActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setSwitchClickable(Z)V

    .line 139
    :cond_1
    return-void
.end method
