.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$10;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showBeamOffDlg()V
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
    .line 806
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 808
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 809
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 810
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 811
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 812
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 814
    return-void
.end method
