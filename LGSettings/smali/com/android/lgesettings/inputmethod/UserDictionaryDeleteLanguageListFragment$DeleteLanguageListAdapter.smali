.class Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserDictionaryDeleteLanguageListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteLanguageListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

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

.field private mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3
    .parameter "fragment"
    .parameter "activity"
    .parameter "localList"

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 381
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 386
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mRef:Ljava/lang/ref/WeakReference;

    .line 388
    iput-object p2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    .line 389
    iput-object p3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    .line 396
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    array-length v1, v1

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewCount:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$502(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;I)I

    .line 397
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->getCount()I

    move-result v3

    .line 507
    .local v3, intViewCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 508
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, deleteView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;

    .line 511
    .local v1, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    if-eqz v1, :cond_1

    .line 512
    iget-object v4, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 513
    iget-object v4, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 515
    :cond_0
    iget-object v4, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->listItemView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 516
    iget-object v4, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->listItemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    .end local v1           #holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v0           #deleteView:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    .line 522
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 523
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mRef:Ljava/lang/ref/WeakReference;

    .line 525
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    if-eqz v4, :cond_4

    .line 526
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    .line 528
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 529
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    .line 531
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v4, :cond_6

    .line 532
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 534
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_7

    .line 535
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    .line 537
    :cond_7
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 409
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 423
    move-object v6, p2

    .line 424
    .local v6, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 425
    .local v2, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    if-nez v6, :cond_2

    .line 426
    new-instance v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;

    .end local v2           #holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    invoke-direct {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;-><init>()V

    .line 427
    .restart local v2       #holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_0

    move-object v7, v8

    .line 500
    :goto_0
    return-object v7

    .line 430
    :cond_0
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040182

    invoke-virtual {v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 432
    if-nez v6, :cond_1

    if-eqz v2, :cond_2

    .line 433
    :cond_1
    const v7, 0x7f0a0362

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 435
    const v7, 0x7f0a0363

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->text:Landroid/widget/TextView;

    .line 437
    const v7, 0x7f0a0361

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->listItemView:Landroid/view/View;

    .line 439
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    :cond_2
    if-eqz v6, :cond_10

    .line 444
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    check-cast v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;

    .line 445
    .restart local v2       #holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    const/4 v5, 0x0

    .line 446
    .local v5, message:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 447
    .local v1, chk:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    .line 449
    .local v3, listItemView:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 450
    iget-object v5, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->text:Landroid/widget/TextView;

    .line 451
    iget-object v1, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 452
    iget-object v3, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->listItemView:Landroid/view/View;

    .line 454
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move-object v7, v8

    .line 455
    goto :goto_0

    .line 457
    :cond_5
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    array-length v7, v7

    if-gt p1, v7, :cond_6

    if-gez p1, :cond_7

    :cond_6
    move-object v7, v8

    .line 458
    goto :goto_0

    .line 460
    :cond_7
    const-string v7, ""

    iget-object v9, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 461
    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_8

    .line 462
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08061a

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, allLang:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 465
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .end local v0           #allLang:Ljava/lang/String;
    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 478
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 480
    :cond_9
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_c

    :cond_a
    move-object v7, v8

    .line 482
    goto/16 :goto_0

    .line 469
    :cond_b
    if-eqz v2, :cond_8

    .line 470
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, localeString:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 473
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 484
    .end local v4           #localeString:Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mData:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 486
    if-eqz v2, :cond_d

    .line 487
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 494
    :cond_d
    :goto_2
    if-eqz v2, :cond_e

    .line 496
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_e
    move-object v7, v6

    .line 498
    goto/16 :goto_0

    .line 490
    :cond_f
    if-eqz v2, :cond_d

    .line 491
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .end local v1           #chk:Landroid/widget/CheckBox;
    .end local v3           #listItemView:Landroid/view/View;
    .end local v5           #message:Landroid/widget/TextView;
    :cond_10
    move-object v7, v8

    .line 500
    goto/16 :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 542
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mUserDictionaryDeleteLanguageListFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;

    .line 543
    .local v2, udDictDelLanListFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    if-eqz p2, :cond_3

    .line 551
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 552
    .local v1, selLocale:Ljava/lang/String;
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 556
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_2
    :goto_1
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 568
    .local v0, numberOfWords:I
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f08129b

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewCount:I
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 572
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 576
    :goto_2
    if-eqz v0, :cond_5

    .line 577
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 578
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0

    .line 562
    .end local v0           #numberOfWords:I
    .end local v1           #selLocale:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    .restart local v1       #selLocale:Ljava/lang/String;
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 574
    .restart local v0       #numberOfWords:I
    :cond_4
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 580
    :cond_5
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 581
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method
