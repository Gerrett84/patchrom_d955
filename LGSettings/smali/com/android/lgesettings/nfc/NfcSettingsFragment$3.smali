.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 401
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 403
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 404
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 409
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->markUnchecked(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$400(Lcom/android/lgesettings/nfc/NfcSettingsFragment;I)V

    .line 411
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckHandover:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$500(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->FirstDisableReminer()V

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->updateView()V

    goto :goto_0
.end method
