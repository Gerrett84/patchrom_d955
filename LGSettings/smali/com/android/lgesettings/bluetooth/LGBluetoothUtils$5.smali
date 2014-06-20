.class final Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;
.super Landroid/text/InputFilter$LengthFilter;
.source "LGBluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$maxLength:I


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const v4, 0x7f0814ee

    .line 349
    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->val$maxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 351
    .local v0, keep:I
    if-gtz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 353
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    .line 354
    const-string v1, ""

    .line 362
    :goto_0
    return-object v1

    .line 355
    :cond_0
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_1

    .line 356
    const/4 v1, 0x0

    goto :goto_0

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    .line 361
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 362
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
