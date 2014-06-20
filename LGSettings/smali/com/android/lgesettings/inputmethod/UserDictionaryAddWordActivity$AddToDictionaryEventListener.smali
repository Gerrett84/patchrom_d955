.class Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddToDictionaryEventListener"
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mOkButton:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mPositiveButtonEnable:Z

.field private mSymbolString:Ljava/lang/String;

.field private mTextView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 7
    .parameter "content"

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    if-eqz p1, :cond_1

    .line 203
    const v5, 0x7f0a0351

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 205
    .local v2, editText:Landroid/widget/EditText;
    const v5, 0x7f0a0350

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 207
    .local v4, textView:Landroid/widget/TextView;
    const v5, 0x7f0a0353

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 209
    .local v3, okButton:Landroid/widget/Button;
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    .line 210
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    .line 211
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mOkButton:Ljava/lang/ref/WeakReference;

    .line 212
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_2

    const/4 v0, 0x0

    .line 215
    .local v0, context:Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    .line 216
    const v5, 0x7f080014

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mSymbolString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->setButtonState()V

    .line 224
    .end local v2           #editText:Landroid/widget/EditText;
    .end local v3           #okButton:Landroid/widget/Button;
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 214
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v3       #okButton:Landroid/widget/Button;
    .restart local v4       #textView:Landroid/widget/TextView;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isAcceptableWord(Ljava/lang/String;)Z
    .locals 8
    .parameter "word"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    move v2, v4

    .line 347
    :cond_0
    :goto_0
    return v2

    .line 299
    :cond_1
    const/4 v2, 0x0

    .line 300
    .local v2, rv:Z
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 301
    .local v1, context:Landroid/content/Context;
    :goto_1
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 308
    .local v0, EDIT_TEXT_MAX_LENGTH:I
    const-string v3, "\\s*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_0

    .line 300
    .end local v0           #EDIT_TEXT_MAX_LENGTH:I
    .end local v1           #context:Landroid/content/Context;
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v1, v3

    goto :goto_1

    .line 315
    .restart local v0       #EDIT_TEXT_MAX_LENGTH:I
    .restart local v1       #context:Landroid/content/Context;
    :cond_3
    const-string v3, "^\\s*\\S+\\s*$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 316
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_0

    .line 319
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_6

    .line 321
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 322
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_0

    .line 324
    :cond_5
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_0

    .line 329
    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_0

    .line 334
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 335
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    .line 336
    const/4 v2, 0x1

    goto :goto_0

    .line 340
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->displayToast(I)V

    .line 341
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v4

    .line 264
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mSymbolString:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mSymbolString:Ljava/lang/String;

    .line 266
    .local v3, symbols:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 270
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 271
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 272
    .local v2, symbol:C
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 273
    const/4 v4, 0x1

    goto :goto_0

    .line 270
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setButtonState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    move-object v0, v2

    .line 230
    .local v0, editText:Landroid/widget/EditText;
    :goto_0
    if-nez v0, :cond_2

    .line 231
    const-string v3, ""

    .line 240
    .local v3, word:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->isAcceptableWord(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mPositiveButtonEnable:Z

    .line 241
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mOkButton:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_4

    .line 242
    .local v2, ok:Landroid/widget/Button;
    :goto_2
    if-eqz v2, :cond_0

    .line 243
    iget-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mPositiveButtonEnable:Z

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    :cond_0
    return-void

    .line 227
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v2           #ok:Landroid/widget/Button;
    .end local v3           #word:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    goto :goto_0

    .line 233
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 234
    .local v1, editable:Landroid/text/Editable;
    if-nez v1, :cond_3

    .line 235
    const-string v3, ""

    .restart local v3       #word:Ljava/lang/String;
    goto :goto_1

    .line 237
    .end local v3           #word:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #word:Ljava/lang/String;
    goto :goto_1

    .line 241
    .end local v1           #editable:Landroid/text/Editable;
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mOkButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v2, v4

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 353
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 358
    return-void
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 422
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mOkButton:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mOkButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 426
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mOkButton:Ljava/lang/ref/WeakReference;

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 430
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 434
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 436
    :cond_3
    return-void
.end method

.method displayToast(I)V
    .locals 9
    .parameter "toastMessage"

    .prologue
    const/4 v8, 0x0

    .line 368
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_1

    move-object v0, v8

    .line 369
    .local v0, context:Landroid/content/Context;
    :goto_0
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_2

    move-object v6, v8

    .line 371
    .local v6, textView:Landroid/widget/TextView;
    :goto_1
    if-eqz v0, :cond_0

    if-nez v6, :cond_3

    .line 417
    :cond_0
    :goto_2
    return-void

    .line 368
    .end local v0           #context:Landroid/content/Context;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    move-object v0, v7

    goto :goto_0

    .line 369
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v6, v7

    goto :goto_1

    .line 374
    .restart local v6       #textView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 375
    .local v4, res:Landroid/content/res/Resources;
    if-nez v4, :cond_4

    .line 376
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 379
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 414
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 382
    :pswitch_0
    const v7, 0x7f081298

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, exceedsLimit:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 391
    .end local v1           #exceedsLimit:Ljava/lang/String;
    :pswitch_1
    const v7, 0x7f081291

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, spacedCharacter:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 394
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 399
    .end local v5           #spacedCharacter:Ljava/lang/String;
    :pswitch_2
    const v7, 0x7f081292

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, invalidCharacter:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 407
    .end local v2           #invalidCharacter:Ljava/lang/String;
    :pswitch_3
    const v7, 0x7f080c77

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, oneLetterWord:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->setButtonState()V

    .line 364
    return-void
.end method
