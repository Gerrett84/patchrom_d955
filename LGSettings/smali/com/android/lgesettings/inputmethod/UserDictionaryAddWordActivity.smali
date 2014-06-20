.class public Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;
    }
.end annotation


# instance fields
.field private mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

.field private mDialogWindow:Landroid/view/Window;

.field private mEditTextParent:Landroid/widget/EditText;

.field private mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 192
    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    .line 166
    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->isWordAlreadyexist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v7, 0x7f04017b

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 74
    .local v0, EDIT_TEXT_MAX_LENGTH:I
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 75
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, action:Ljava/lang/String;
    const-string v7, "com.android.lgesettings.USER_DICTIONARY_EDIT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    const/4 v5, 0x0

    .line 103
    .local v5, mode:I
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 104
    .local v2, args:Landroid/os/Bundle;
    const-string v7, "mode"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 111
    :cond_1
    new-instance v7, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    .line 113
    new-instance v4, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;-><init>(Landroid/view/View;)V

    .line 115
    .local v4, listener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;
    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    .line 116
    const v7, 0x7f0a0351

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    .line 117
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    if-eqz v7, :cond_2

    .line 118
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    if-eqz v7, :cond_2

    .line 119
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    .end local v2           #args:Landroid/os/Bundle;
    .end local v4           #listener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;
    :cond_2
    :goto_0
    return-void

    .line 79
    .end local v5           #mode:I
    :cond_3
    const-string v7, "com.android.lgesettings.USER_DICTIONARY_INSERT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    const/4 v5, 0x1

    .line 82
    .restart local v5       #mode:I
    const-string v7, "word"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, word:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v0, :cond_0

    .line 86
    const v7, 0x7f081298

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->onBackPressed()V

    goto :goto_0

    .line 97
    .end local v5           #mode:I
    .end local v6           #word:Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mDialogWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mDialogWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 142
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mDialogWindow:Landroid/view/Window;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;->destroy()V

    .line 146
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity$AddToDictionaryEventListener;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    if-eqz v0, :cond_2

    .line 149
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 152
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mEditTextParent:Landroid/widget/EditText;

    .line 154
    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mDialogWindow:Landroid/view/Window;

    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mDialogWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mDialogWindow:Landroid/view/Window;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 162
    :cond_0
    return-void
.end method
