.class public Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;
.super Landroid/app/ListFragment;
.source "UserDictionaryDeleteLanguageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;
    }
.end annotation


# instance fields
.field private mActionCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonDelete:Landroid/widget/Button;

.field private mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

.field private mCheckedWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChkboxSelectAll:Landroid/widget/CheckBox;

.field private mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

.field private mListViewCount:I

.field private mListViewDelete:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;

.field private mTxtSelected:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->showDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    return-object v0
.end method

.method private addCheckedWordstoArray()V
    .locals 6

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 113
    :cond_0
    return-void

    .line 101
    :cond_1
    const-string v4, "localeList"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, localList:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 108
    array-length v2, v3

    .line 109
    .local v2, listCount:I
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LGEWordDeleteDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 284
    return-void
.end method


# virtual methods
.method public deleteWord()V
    .locals 5

    .prologue
    .line 265
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 279
    :cond_0
    return-void

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 269
    .local v3, wordsChecked:I
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    .local v0, contRes:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 273
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 274
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, word:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 276
    invoke-static {v2, v0}, Lcom/android/lgesettings/UserDictionarySettings;->deleteLocale(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 273
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 160
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 164
    .local v1, localList:[Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 165
    new-instance v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;Landroid/app/Activity;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    .line 169
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 194
    :cond_1
    :goto_1
    return-void

    .line 162
    .end local v1           #localList:[Ljava/lang/String;
    :cond_2
    const-string v2, "localeList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 172
    .restart local v1       #localList:[Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    if-eqz v2, :cond_4

    .line 173
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 176
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0a035f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    .line 182
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    .line 184
    new-instance v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;)V

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    .line 185
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    if-eqz v2, :cond_5

    .line 189
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f08129b

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 609
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 613
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 614
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->addCheckedWordstoArray()V

    .line 615
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, selectedCount:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 623
    .end local v0           #selectedCount:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 625
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .restart local v0       #selectedCount:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 628
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    .line 119
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 155
    :goto_0
    return-object v3

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, bar:Landroid/app/ActionBar;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 127
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 128
    const v3, 0x7f040183

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActionCustomView:Landroid/view/View;

    .line 131
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActionCustomView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActionCustomView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 135
    :cond_2
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 136
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, layoutSelectAll:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 138
    const v3, 0x7f0a0365

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    .line 140
    const v3, 0x7f0a0364

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    .line 143
    :cond_3
    const v3, 0x7f08129b

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, selectedCount:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 146
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    .line 151
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_5
    const v3, 0x7f04017f

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    .line 155
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mListViewDelete:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;->clear()V

    .line 204
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$DeleteLanguageListAdapter;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

    #calls: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->clear()V
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;->access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;)V

    .line 208
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$LGEWordDeletePopup;

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 217
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonDelete:Landroid/widget/Button;

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 220
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonCancel:Landroid/widget/Button;

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_8

    .line 226
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 229
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mTxtSelected:Landroid/widget/TextView;

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 232
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mRootView:Landroid/view/View;

    .line 234
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;->clear()V

    .line 236
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$UserDictionaryButtonClickListner;

    .line 238
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 239
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActivity:Landroid/app/Activity;

    .line 241
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActionCustomView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 242
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mActionCustomView:Landroid/view/View;

    .line 244
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    iput-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment;->mCheckedWords:Ljava/util/ArrayList;

    .line 251
    :cond_e
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 640
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 641
    if-nez p2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;

    .line 645
    .local v1, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;
    if-eqz v1, :cond_0

    .line 648
    iget-object v0, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteLanguageListFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 649
    .local v0, chk:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 655
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 261
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 256
    return-void
.end method
