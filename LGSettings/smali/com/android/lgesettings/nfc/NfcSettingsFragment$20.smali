.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 956
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    const/16 v1, 0xc8

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->isUnchecked(I)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$1000(Lcom/android/lgesettings/nfc/NfcSettingsFragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showNfcFirstConnectOffDlg()V

    .line 965
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 966
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$20;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->enableNFC()V
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$900(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    goto :goto_0
.end method
