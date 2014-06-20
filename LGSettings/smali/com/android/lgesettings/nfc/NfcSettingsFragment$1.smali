.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;
.super Lcom/android/lgesettings/nfc/NfcStateListener;
.source "NfcSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 8
    .parameter "newState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f080274

    const v5, 0x7f08025a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$200(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->setNfcSwitchChecked(Z)V
    invoke-static {v0, v3}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$300(Lcom/android/lgesettings/nfc/NfcSettingsFragment;Z)V

    .line 153
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 149
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$200(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 160
    :pswitch_2
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 163
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$200(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->setNfcSwitchChecked(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$300(Lcom/android/lgesettings/nfc/NfcSettingsFragment;Z)V

    .line 170
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 166
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleP2pStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 130
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public handleRwStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRwStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
