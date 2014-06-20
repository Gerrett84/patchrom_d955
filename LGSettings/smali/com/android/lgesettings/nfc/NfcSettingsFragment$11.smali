.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showReminderDlg()V
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
    .line 873
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 875
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 876
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckRmider:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$700(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 878
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2P:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$600(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v0, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 879
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$500(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 882
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "nfc_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 883
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "nfc_reminders"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 884
    return-void
.end method
