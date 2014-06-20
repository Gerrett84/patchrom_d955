.class Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserDictionaryButtonClickListner"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;Landroid/app/Activity;)V
    .locals 1
    .parameter "addFrag"
    .parameter "activity"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mActivity:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 187
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 191
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mActivity:Ljava/lang/ref/WeakReference;

    .line 193
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 103
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    move-object v3, v5

    .line 105
    .local v3, userDictAddWordFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    move-object v0, v4

    .line 106
    .local v0, activity:Landroid/app/Activity;
    :goto_1
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_3

    .line 183
    :cond_0
    :goto_2
    return-void

    .line 103
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #userDictAddWordFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;

    move-object v3, v4

    goto :goto_0

    .restart local v3       #userDictAddWordFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;
    :cond_2
    move-object v0, v5

    .line 105
    goto :goto_1

    .line 109
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 111
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 113
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 114
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2

    .line 119
    :pswitch_1
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 134
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    .line 136
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->isWordAlreadyexist()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    goto :goto_2

    .line 142
    :cond_4
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 143
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    goto :goto_2

    .line 146
    :cond_5
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->isShortcutAlreadyexist()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 149
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 150
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 156
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08129a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, shortcut:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 161
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 163
    .local v2, toast:Landroid/widget/Toast;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 152
    .end local v1           #shortcut:Ljava/lang/String;
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_6
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 153
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 170
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 172
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_2

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0a0056
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
