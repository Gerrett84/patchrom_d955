.class Lcom/android/lgesettings/nfc/NfcSettings$5;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/NfcSettings;
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
    .line 236
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$5;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$5;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$5;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 253
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 245
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 240
    return-void
.end method
