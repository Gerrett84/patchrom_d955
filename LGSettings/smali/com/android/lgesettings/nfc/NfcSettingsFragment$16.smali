.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$16;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showNfcFirstConnectOffDlg()V
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
    .line 902
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    const/16 v1, 0xc8

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->markUnchecked(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$400(Lcom/android/lgesettings/nfc/NfcSettingsFragment;I)V

    .line 906
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    #calls: Lcom/android/lgesettings/nfc/NfcSettingsFragment;->enableNFC()V
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettingsFragment;->access$900(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V

    .line 907
    const-string v0, "NFC_SETTINGS"

    const-string v1, "showNfcOffDlg onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method
