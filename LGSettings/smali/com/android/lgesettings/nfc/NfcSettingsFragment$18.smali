.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$18;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->airplaneDlg()V
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
    .line 972
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$18;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$18;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$200(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 976
    return-void
.end method
