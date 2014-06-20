.class Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/LockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockSettingsUiupdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/LockSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/LockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 937
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lge.intent.action.UPDATE_POWER_BUTTON_INSTANT_LOCK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$000(Lcom/android/lgesettings/lockscreen/LockSettings;)Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 939
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$100(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$100(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 942
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockUtil;->isGuestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$100(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 944
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$200(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 951
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    return-void

    .line 946
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$100(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 947
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$200(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
