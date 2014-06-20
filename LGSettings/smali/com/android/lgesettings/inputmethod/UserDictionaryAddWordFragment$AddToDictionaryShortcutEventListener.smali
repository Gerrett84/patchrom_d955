.class Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;
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
    name = "AddToDictionaryShortcutEventListener"
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

.field private mShortcutEditText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 777
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 778
    if-eqz p1, :cond_0

    .line 779
    const v1, 0x7f0a0356

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 781
    .local v0, editText:Landroid/widget/EditText;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mShortcutEditText:Ljava/lang/ref/WeakReference;

    .line 782
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 784
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method private isShortcutMax(Ljava/lang/String;)Z
    .locals 5
    .parameter "tmpShortcut"

    .prologue
    .line 787
    const/4 v2, 0x0

    .line 788
    .local v2, rv:Z
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 789
    .local v1, context:Landroid/content/Context;
    :goto_0
    if-nez v1, :cond_1

    .line 790
    const/4 v3, 0x0

    .line 798
    :goto_1
    return v3

    .line 788
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v1, v3

    goto :goto_0

    .line 792
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 794
    .local v0, EDIT_TEXT_MAX_LENGTH:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 795
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->displayToast(I)V

    .line 796
    const/4 v2, 0x1

    :cond_2
    move v3, v2

    .line 798
    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 825
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 830
    return-void
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 855
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mShortcutEditText:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mShortcutEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 857
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mShortcutEditText:Ljava/lang/ref/WeakReference;

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 861
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 865
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    .line 867
    :cond_2
    return-void
.end method

.method displayToast(I)V
    .locals 3
    .parameter "toastMessage"

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 803
    .local v0, context:Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    .line 821
    :cond_0
    :goto_1
    return-void

    .line 802
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v0, v2

    goto :goto_0

    .line 806
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 808
    :pswitch_0
    const v2, 0x7f08129d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, exceedsLimit:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 811
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    .line 813
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 814
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 806
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 835
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_0

    .line 836
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 838
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mShortcutEditText:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 841
    .local v0, editText:Landroid/widget/EditText;
    :goto_0
    if-nez v0, :cond_2

    .line 842
    const-string v2, ""

    .line 851
    .local v2, tmpShortcut:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->isShortcutMax(Ljava/lang/String;)Z

    .line 852
    return-void

    .line 838
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v2           #tmpShortcut:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->mShortcutEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v0, v3

    goto :goto_0

    .line 844
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 845
    .local v1, editable:Landroid/text/Editable;
    if-nez v1, :cond_3

    .line 846
    const-string v2, ""

    .restart local v2       #tmpShortcut:Ljava/lang/String;
    goto :goto_1

    .line 848
    .end local v2           #tmpShortcut:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #tmpShortcut:Ljava/lang/String;
    goto :goto_1
.end method
