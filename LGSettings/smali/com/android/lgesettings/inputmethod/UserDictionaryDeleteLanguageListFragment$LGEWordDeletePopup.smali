.class Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;
.super Landroid/app/DialogFragment;
.source "UserDictionaryDeleteLanguageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LGEWordDeletePopup"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)V
    .locals 1
    .parameter "languageListFragment"

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    .line 293
    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "buttonType"

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 332
    .local v2, udDictDelLanListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
    :goto_0
    if-nez v2, :cond_2

    .line 363
    :cond_0
    :goto_1
    return-void

    .line 330
    .end local v2           #udDictDelLanListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    move-object v2, v3

    goto :goto_0

    .line 335
    .restart local v2       #udDictDelLanListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 352
    :pswitch_0
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 353
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 355
    :cond_3
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 356
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 337
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->deleteWord()V

    .line 338
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f081295

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, delete:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 343
    .local v1, toast:Landroid/widget/Toast;
    if-eqz v1, :cond_4

    .line 344
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 347
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_4
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 348
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 296
    const v5, 0x7f080618

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, title:Ljava/lang/String;
    const v5, 0x7f0812a0

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, msg:Ljava/lang/String;
    const v5, 0x7f080016

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, no:Ljava/lang/String;
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, yes:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 301
    const-string v1, "Selected words will be deleted. Continue?"

    .line 303
    :cond_0
    if-nez v2, :cond_1

    .line 304
    const-string v2, "No"

    .line 306
    :cond_1
    if-nez v4, :cond_2

    .line 307
    const-string v4, "Yes"

    .line 309
    :cond_2
    if-nez v3, :cond_3

    .line 310
    const-string v3, "Delete"

    .line 312
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
