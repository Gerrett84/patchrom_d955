.class Lcom/android/lgesettings/nfc/NfcSettings$10;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getInputText()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, inputText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->verifyNfcLockInitNumber(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/lgesettings/nfc/NfcSettings;->access$900(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v2, 0x3

    #setter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$502(Lcom/android/lgesettings/nfc/NfcSettings;I)I

    .line 743
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v2, 0x6

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 750
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/lgesettings/nfc/NfcSettings;->oldPin:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$602(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 749
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$10;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v2, 0x1

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    goto :goto_0
.end method
