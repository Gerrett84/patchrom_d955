.class Lcom/android/lgesettings/nfc/NfcSettings$4;
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
    .line 194
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$4;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings$4;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v5

    const v6, 0x7f0a01c3

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 208
    .local v3, edit:Landroid/widget/EditText;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 211
    .local v0, afterLenght:I
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings$4;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v5

    if-nez v5, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    if-eqz v0, :cond_5

    .line 216
    add-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 218
    .local v2, ch:C
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2

    const/16 v5, 0x39

    if-le v2, v5, :cond_4

    :cond_2
    const/16 v5, 0x41

    if-lt v2, v5, :cond_3

    const/16 v5, 0x5a

    if-le v2, v5, :cond_4

    :cond_3
    const/16 v5, 0x61

    if-lt v2, v5, :cond_7

    const/16 v5, 0x7a

    if-gt v2, v5, :cond_7

    .line 220
    :cond_4
    const-string v5, "NFC_SETTINGS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "afterTextChanged : this is ASCII = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v2           #ch:C
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings$4;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 229
    .local v1, btn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 232
    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 222
    .end local v1           #btn:Landroid/widget/Button;
    .restart local v2       #ch:C
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 203
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 198
    return-void
.end method
