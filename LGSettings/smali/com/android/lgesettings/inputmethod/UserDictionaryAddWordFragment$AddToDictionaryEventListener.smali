.class Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;
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

.field private mPositiveButtonEnable:Z

.field private mSaveButton:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mSymbolString:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private mToastFlag:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 529
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    .line 530
    if-eqz p1, :cond_0

    .line 531
    const v3, 0x7f0a0351

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 533
    .local v1, editText:Landroid/widget/EditText;
    const v3, 0x7f0a0057

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 535
    .local v2, saveButton:Landroid/widget/Button;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    .line 536
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    .line 537
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 540
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v2           #saveButton:Landroid/widget/Button;
    :cond_0
    if-eqz p1, :cond_1

    .line 541
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSymbolString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isAcceptableWord(Ljava/lang/String;)Z
    .locals 7
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 598
    const/4 v2, 0x0

    .line 599
    .local v2, rv:Z
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 600
    .local v1, context:Landroid/content/Context;
    :goto_0
    if-nez v1, :cond_1

    move v3, v4

    .line 639
    :goto_1
    return v3

    .line 599
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v1, v3

    goto :goto_0

    .line 603
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 606
    .local v0, EDIT_TEXT_MAX_LENGTH:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 608
    const-string v3, "\\s*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 611
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->displayToast(I)V

    :goto_2
    move v3, v2

    .line 639
    goto :goto_1

    .line 615
    :cond_2
    const-string v3, "^\\s*\\S+\\s*$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 616
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_2

    .line 619
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_5

    .line 620
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 621
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_2

    .line 623
    :cond_4
    iput-boolean v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    goto :goto_2

    .line 627
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 628
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->displayToast(I)V

    goto :goto_2

    .line 629
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_7

    .line 630
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->displayToast(I)V

    .line 631
    const/4 v2, 0x1

    goto :goto_2

    .line 633
    :cond_7
    iput-boolean v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    .line 634
    const/4 v2, 0x1

    goto :goto_2

    .line 637
    :cond_8
    iput-boolean v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    goto :goto_2
.end method

.method private isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 562
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v4

    .line 566
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSymbolString:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSymbolString:Ljava/lang/String;

    .line 569
    .local v3, symbols:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 573
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 574
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 575
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 576
    .local v2, symbol:C
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 577
    const/4 v4, 0x1

    goto :goto_0

    .line 574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 692
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 697
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_0

    move-object v0, v2

    .line 700
    .local v0, editText:Landroid/widget/EditText;
    :goto_0
    if-nez v0, :cond_1

    .line 701
    const-string v3, ""

    .line 710
    .local v3, word:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_3

    .line 711
    .local v2, save:Landroid/widget/Button;
    :goto_2
    if-nez v2, :cond_4

    .line 719
    :goto_3
    return-void

    .line 697
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v2           #save:Landroid/widget/Button;
    .end local v3           #word:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    goto :goto_0

    .line 703
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 704
    .local v1, editable:Landroid/text/Editable;
    if-nez v1, :cond_2

    .line 705
    const-string v3, ""

    .restart local v3       #word:Ljava/lang/String;
    goto :goto_1

    .line 707
    .end local v3           #word:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #word:Ljava/lang/String;
    goto :goto_1

    .line 710
    .end local v1           #editable:Landroid/text/Editable;
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v2, v4

    goto :goto_2

    .line 714
    .restart local v2       #save:Landroid/widget/Button;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    .line 715
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 717
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 753
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 757
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 761
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 765
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    .line 767
    :cond_3
    return-void
.end method

.method displayToast(I)V
    .locals 7
    .parameter "toastMessage"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 643
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 644
    .local v0, context:Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    .line 687
    :cond_0
    :goto_1
    return-void

    .line 643
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v0, v4

    goto :goto_0

    .line 647
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 661
    :pswitch_0
    const v4, 0x7f081291

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, spacedCharacter:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 664
    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    .line 666
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    if-ne v4, v6, :cond_0

    .line 667
    iput-boolean v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    .line 668
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 649
    .end local v3           #spacedCharacter:Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f08129d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, exceedsLimit:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 652
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    .line 654
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    if-ne v4, v6, :cond_0

    .line 655
    iput-boolean v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    .line 656
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 673
    .end local v1           #exceedsLimit:Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f08129e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, invalidCharacter:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 676
    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    .line 678
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    if-ne v4, v6, :cond_0

    .line 679
    iput-boolean v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToastFlag:Z

    .line 680
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 730
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    move-object v0, v2

    .line 733
    .local v0, editText:Landroid/widget/EditText;
    :goto_0
    if-nez v0, :cond_2

    .line 734
    const-string v3, ""

    .line 743
    .local v3, word:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->isAcceptableWord(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mPositiveButtonEnable:Z

    .line 744
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_4

    .line 745
    .local v2, save:Landroid/widget/Button;
    :goto_2
    if-eqz v2, :cond_0

    .line 746
    iget-boolean v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mPositiveButtonEnable:Z

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 748
    :cond_0
    return-void

    .line 730
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v2           #save:Landroid/widget/Button;
    .end local v3           #word:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    goto :goto_0

    .line 736
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 737
    .local v1, editable:Landroid/text/Editable;
    if-nez v1, :cond_3

    .line 738
    const-string v3, ""

    .restart local v3       #word:Ljava/lang/String;
    goto :goto_1

    .line 740
    .end local v3           #word:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #word:Ljava/lang/String;
    goto :goto_1

    .line 744
    .end local v1           #editable:Landroid/text/Editable;
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->mSaveButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v2, v4

    goto :goto_2
.end method
