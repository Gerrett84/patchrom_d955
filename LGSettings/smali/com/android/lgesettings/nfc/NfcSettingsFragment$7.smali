.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showNfcOffDlg()V
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
    .line 764
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 767
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 768
    .local v0, mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 773
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckP2POnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 775
    :cond_1
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 776
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcDiscovery()Z

    .line 777
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcCard()Z

    .line 778
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->deinitNfcSystem()Z

    .line 779
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$7;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 782
    :cond_2
    const-string v1, "NFC_SETTINGS"

    const-string v2, "showNfcOffDlg onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
