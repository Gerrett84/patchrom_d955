.class Lcom/android/lgesettings/nfc/NfcSettings$11;
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
    .line 763
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getInputText()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, inputText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->verifyLockNumber(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/lgesettings/nfc/NfcSettings;->access$1000(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->isNfcLocked()Z
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$1100(Lcom/android/lgesettings/nfc/NfcSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->setNfcLocked(Z)Z
    invoke-static {v2, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$1200(Lcom/android/lgesettings/nfc/NfcSettings;Z)Z

    .line 774
    :goto_1
    return-void

    .line 769
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v2, 0x4

    #setter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$502(Lcom/android/lgesettings/nfc/NfcSettings;I)I

    .line 772
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$11;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v2, 0x5

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    goto :goto_1
.end method
