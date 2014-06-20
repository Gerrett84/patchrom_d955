.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$8;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 823
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$8;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$8;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mCheckDirectAndroidBeam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$100(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 827
    return-void
.end method
