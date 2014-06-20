.class Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;
.super Landroid/app/DialogFragment;
.source "UserDictionaryDeleteWordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
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
            "Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)V
    .locals 1
    .parameter "wordFragment"

    .prologue
    .line 340
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 341
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    .line 343
    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "arg0"
    .parameter "buttonType"

    .prologue
    const/4 v11, 0x0

    .line 399
    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v8, :cond_1

    const/4 v7, 0x0

    .line 401
    .local v7, udDictDelWordListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :goto_0
    if-nez v7, :cond_2

    .line 449
    :cond_0
    :goto_1
    return-void

    .line 399
    .end local v7           #udDictDelWordListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    move-object v7, v8

    goto :goto_0

    .line 404
    .restart local v7       #udDictDelWordListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 421
    :pswitch_0
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v4

    .line 422
    .local v4, listViewCount:I
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v0

    .line 423
    .local v0, checkedItemIdArray:[Z
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I

    move-result-object v1

    .line 424
    .local v1, deleteItemArray:[I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ltz v4, :cond_0

    array-length v8, v0

    if-gt v4, v8, :cond_0

    array-length v8, v1

    if-gt v4, v8, :cond_0

    .line 428
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 429
    aput-boolean v11, v0, v3

    .line 430
    const/4 v8, -0x1

    aput v8, v1, v3

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 406
    .end local v0           #checkedItemIdArray:[Z
    .end local v1           #deleteItemArray:[I
    .end local v3           #i:I
    .end local v4           #listViewCount:I
    :pswitch_1
    invoke-virtual {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->deleteWord()V

    .line 407
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f081295

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, deleted:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 410
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 412
    .local v6, toast:Landroid/widget/Toast;
    if-eqz v6, :cond_3

    .line 413
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 416
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_3
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 417
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 432
    .end local v2           #deleted:Ljava/lang/String;
    .restart local v0       #checkedItemIdArray:[Z
    .restart local v1       #deleteItemArray:[I
    .restart local v3       #i:I
    .restart local v4       #listViewCount:I
    :cond_4
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v8

    if-lez v8, :cond_5

    .line 433
    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v7, v11}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$302(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I

    .line 434
    const v8, 0x7f08129b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, selectedCount:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 437
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/TextView;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 438
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .end local v5           #selectedCount:Ljava/lang/String;
    :cond_5
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 443
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 346
    iget-object v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_0

    move-object v4, v7

    .line 348
    .local v4, udDictDelWordListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :goto_0
    if-nez v4, :cond_1

    move-object v6, v7

    .line 388
    :goto_1
    return-object v6

    .line 346
    .end local v4           #udDictDelWordListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    move-object v4, v6

    goto :goto_0

    .line 352
    .restart local v4       #udDictDelWordListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :cond_1
    const v6, 0x7f080618

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 354
    .local v1, msg:Ljava/lang/String;
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v6

    if-ne v6, v8, :cond_8

    .line 355
    const v6, 0x7f0812a1

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_2
    :goto_2
    const v6, 0x7f080016

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, no:Ljava/lang/String;
    const v6, 0x7f080015

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, yes:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 366
    const-string v2, "No"

    .line 368
    :cond_3
    if-nez v5, :cond_4

    .line 369
    const-string v5, "Yes"

    .line 371
    :cond_4
    if-nez v3, :cond_5

    .line 372
    const-string v3, "Delete"

    .line 374
    :cond_5
    if-nez v1, :cond_6

    .line 375
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v6

    if-ne v6, v8, :cond_9

    .line 376
    const-string v1, "Word will be deleted. Continue?"

    .line 381
    :cond_6
    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_7

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_1

    .line 356
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #no:Ljava/lang/String;
    .end local v5           #yes:Ljava/lang/String;
    :cond_8
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v6

    if-le v6, v8, :cond_2

    .line 357
    const v6, 0x7f0812a0

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 377
    .restart local v2       #no:Ljava/lang/String;
    .restart local v5       #yes:Ljava/lang/String;
    :cond_9
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v6

    if-le v6, v8, :cond_6

    .line 378
    const-string v1, "Selected words will be deleted. Continue?"

    goto :goto_3
.end method
