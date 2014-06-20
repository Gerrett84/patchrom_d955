.class Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "UserDictionaryDeleteWordFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteCursorAdapter"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

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

.field private userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter "fragment"
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mRef:Ljava/lang/ref/WeakReference;

    .line 469
    iput-object p2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mContext:Landroid/content/Context;

    .line 471
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    .line 473
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$402(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I

    .line 474
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v1

    new-array v1, v1, [I

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v0, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$602(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;[I)[I

    .line 475
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v1

    new-array v1, v1, [Z

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$502(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;[Z)[Z

    .line 476
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;

    .line 503
    .local v2, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;
    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v5, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->text:Landroid/widget/TextView;

    .line 507
    .local v5, message:Landroid/widget/TextView;
    iget-object v0, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 508
    .local v0, chk:Landroid/widget/CheckBox;
    iget-object v4, v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->listItemView:Landroid/view/View;

    .line 509
    .local v4, listItemView:Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 512
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, messageString:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 515
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_2
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 518
    .local v3, id:I
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 519
    .local v1, curPostion:I
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setId(I)V

    .line 520
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 521
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v7

    array-length v7, v7

    if-lt v7, v1, :cond_3

    .line 522
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v7

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_4

    .line 523
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 528
    :cond_3
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 525
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->getCount()I

    move-result v3

    .line 625
    .local v3, intViewCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 626
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 627
    .local v0, deleteView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;

    .line 629
    .local v1, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;
    if-eqz v1, :cond_0

    .line 630
    iget-object v4, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 631
    iget-object v4, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->listItemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    .end local v1           #holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v0           #deleteView:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    .line 636
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 637
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mRef:Ljava/lang/ref/WeakReference;

    .line 639
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    if-eqz v4, :cond_3

    .line 640
    iput-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    .line 642
    :cond_3
    return-void
.end method

.method public getCountCheckedItem()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v2, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$302(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I

    .line 533
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v3

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v1

    .line 537
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 538
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$308(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    .line 537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 483
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;

    invoke-direct {v0, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$1;)V

    .line 484
    .local v0, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;
    if-eqz v0, :cond_0

    .line 485
    const v2, 0x7f0a035c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 487
    const v2, 0x7f0a035d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->text:Landroid/widget/TextView;

    .line 490
    const v2, 0x7f0a035b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->listItemView:Landroid/view/View;

    .line 492
    iget-object v2, v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 493
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 496
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return-object v1

    .restart local v1       #view:Landroid/view/View;
    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 570
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v3

    if-nez v3, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    if-eqz p2, :cond_4

    .line 574
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 575
    .local v2, selectedPosition:I
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v3

    array-length v3, v3

    if-gt v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I

    move-result-object v3

    array-length v3, v3

    if-gt v2, v3, :cond_0

    .line 578
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    aput v4, v3, v2

    .line 579
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v3

    aput-boolean v8, v3, v2

    .line 580
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->getCountCheckedItem()I

    move-result v4

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v3, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$302(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I

    .line 595
    .end local v2           #selectedPosition:I
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f08129b

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, selectedCount:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 598
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 601
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 602
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 609
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 610
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 612
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_0

    .line 584
    .end local v1           #selectedCount:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 586
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 587
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 589
    .restart local v2       #selectedPosition:I
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z

    move-result-object v3

    aput-boolean v7, v3, v2

    .line 590
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I

    move-result-object v3

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 584
    .end local v2           #selectedPosition:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 593
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->getCountCheckedItem()I

    move-result v4

    #setter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I
    invoke-static {v3, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$302(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I

    goto/16 :goto_1

    .line 605
    .end local v0           #i:I
    .restart local v1       #selectedCount:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 606
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 615
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 616
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 617
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->userDictionaryDeleteWordFragment:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_0
.end method
