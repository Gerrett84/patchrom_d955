.class Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditorText:Landroid/widget/EditText;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMaxBytes:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "maxBytes"
    .parameter "context"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    .line 61
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;I)V
    .locals 2
    .parameter "context"
    .parameter "editText"
    .parameter "maxBytes"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mEditorText:Landroid/widget/EditText;

    .line 67
    iput p3, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 75
    const/4 v5, 0x0

    .line 77
    .local v5, srcByteCount:I
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 78
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 79
    .local v0, c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v5, v6

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const/16 v6, 0x800

    if-ge v0, v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    .line 81
    .end local v0           #c:C
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 82
    .local v2, destLen:I
    const/4 v1, 0x0

    .line 84
    .local v1, destByteCount:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 85
    if-lt v3, p5, :cond_3

    if-lt v3, p6, :cond_4

    .line 86
    :cond_3
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 87
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v1, v6

    .line 84
    .end local v0           #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 87
    .restart local v0       #c:C
    :cond_5
    const/16 v6, 0x800

    if-ge v0, v6, :cond_6

    const/4 v6, 0x2

    goto :goto_3

    :cond_6
    const/4 v6, 0x3

    goto :goto_3

    .line 90
    .end local v0           #c:C
    :cond_7
    iget v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    .line 91
    .local v4, keepBytes:I
    if-gtz v4, :cond_9

    .line 93
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mContext:Landroid/content/Context;

    const v7, 0x7f0814ee

    invoke-static {v6, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    .line 95
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mEditorText:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 96
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mEditorText:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 99
    :cond_8
    const-string v6, ""

    .line 121
    :goto_4
    return-object v6

    .line 100
    :cond_9
    if-lt v4, v5, :cond_a

    .line 101
    const/4 v6, 0x0

    goto :goto_4

    .line 104
    :cond_a
    move v3, p2

    :goto_5
    if-ge v3, p3, :cond_f

    .line 105
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 106
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_c

    const/4 v6, 0x1

    :goto_6
    sub-int/2addr v4, v6

    .line 107
    if-gez v4, :cond_e

    .line 109
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mContext:Landroid/content/Context;

    const v7, 0x7f0814ee

    invoke-static {v6, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    .line 111
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mEditorText:Landroid/widget/EditText;

    if-eqz v6, :cond_b

    .line 112
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;->mEditorText:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 115
    :cond_b
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    .line 106
    :cond_c
    const/16 v6, 0x800

    if-ge v0, v6, :cond_d

    const/4 v6, 0x2

    goto :goto_6

    :cond_d
    const/4 v6, 0x3

    goto :goto_6

    .line 104
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 121
    .end local v0           #c:C
    :cond_f
    const/4 v6, 0x0

    goto :goto_4
.end method
