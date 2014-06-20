.class Lcom/android/lgesettings/nfc/NfcSettings$12;
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
    .line 791
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getInputText()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->verifyLockNumber(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$1000(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$502(Lcom/android/lgesettings/nfc/NfcSettings;I)I

    .line 796
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v1, 0x5

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 803
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getInputText()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/nfc/NfcSettings;->oldPin:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$602(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 802
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$12;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    goto :goto_0
.end method
