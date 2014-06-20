.class public Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
.super Landroid/app/ListFragment;
.source "UserDictionaryDeleteWordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$1;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActionCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

.field private mButtCancel:Landroid/widget/Button;

.field private mButtDelete:Landroid/widget/Button;

.field private mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

.field private mCheckItemId:[Z

.field private mChkCount:I

.field private mChkboxSelectAll:Landroid/widget/CheckBox;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteItemArray:[I

.field private mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

.field private mListViewCount:I

.field private mLocale:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mTxtSelected:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 461
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->showDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;[Z)[Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    return-object v0
.end method

.method private allCheckDeleteItemArray()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, ID_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 109
    .local v8, count:I
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 110
    .local v7, arguments:Landroid/os/Bundle;
    if-nez v7, :cond_2

    move-object v11, v4

    .line 112
    .local v11, locale:Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .line 113
    .local v9, cursor:Landroid/database/Cursor;
    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale is null"

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 127
    :goto_1
    const/4 v10, -0x1

    .line 128
    .local v10, intColumnId:I
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    :cond_0
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    aput v10, v0, v8

    .line 133
    add-int/lit8 v8, v8, 0x1

    .line 134
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 136
    const/4 v9, 0x0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    .line 139
    return-void

    .line 110
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #intColumnId:I
    .end local v11           #locale:Ljava/lang/String;
    :cond_2
    const-string v0, "locale"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 119
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #locale:Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_4

    move-object v12, v11

    .line 121
    .local v12, queryLocale:Ljava/lang/String;
    :goto_2
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object v12, v4, v13

    .line 122
    .local v4, selectionargs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=?"

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1

    .line 119
    .end local v4           #selectionargs:[Ljava/lang/String;
    .end local v12           #queryLocale:Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "locale"

    .prologue
    .line 316
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v4, "locale is null"

    const/4 v5, 0x0

    const-string v6, "UPPER(word)"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    .line 322
    .end local v0           #cursorLoader:Landroid/content/CursorLoader;
    :cond_0
    if-eqz p1, :cond_1

    move-object v7, p1

    .line 324
    .local v7, queryLocale:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v5, v1

    .line 325
    .local v5, selectionargs:[Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v4, "locale=?"

    const-string v6, "UPPER(word)"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .restart local v0       #cursorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 322
    .end local v0           #cursorLoader:Landroid/content/CursorLoader;
    .end local v5           #selectionargs:[Ljava/lang/String;
    .end local v7           #queryLocale:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static deleteUri(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "deleteUri"
    .parameter "resolver"

    .prologue
    const/4 v0, 0x0

    .line 275
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p1, p0, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 333
    new-instance v0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

    .line 334
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LGEWordDeleteDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 335
    return-void
.end method


# virtual methods
.method public deleteWord()V
    .locals 5

    .prologue
    .line 283
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 297
    :cond_0
    return-void

    .line 288
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    if-ge v2, v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    aget v0, v3, v2

    .line 292
    .local v0, dbId:I
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, deleteId:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->deleteUri(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 288
    .end local v0           #dbId:I
    .end local v1           #deleteId:Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 185
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 187
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 189
    .local v2, localeFromArgument:Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mLocale:Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCursor:Landroid/database/Cursor;

    .line 191
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mRootView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 215
    :cond_0
    :goto_1
    return-void

    .line 187
    .end local v2           #localeFromArgument:Ljava/lang/String;
    :cond_1
    const-string v3, "locale"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 194
    .restart local v2       #localeFromArgument:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 195
    .local v1, listViewDelete:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 196
    new-instance v3, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f04017e

    iget-object v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    .line 199
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    if-eqz v3, :cond_4

    .line 200
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 203
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 204
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0360

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    .line 205
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtCancel:Landroid/widget/Button;

    .line 206
    new-instance v3, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)V

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    .line 207
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 209
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtCancel:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtCancel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f08129b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 647
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    array-length v3, v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 656
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->allCheckDeleteItemArray()V

    .line 660
    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, selectedCount:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 663
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 664
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    if-ge v0, v2, :cond_5

    .line 668
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    aput-boolean v5, v2, v0

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    .end local v0           #i:I
    .end local v1           #selectedCount:Ljava/lang/String;
    :cond_3
    iput v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    .line 672
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mListViewCount:I

    if-ge v0, v2, :cond_4

    .line 673
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCheckItemId:[Z

    aput-boolean v4, v2, v0

    .line 674
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDeleteItemArray:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 676
    :cond_4
    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .restart local v1       #selectedCount:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 679
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 680
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    .line 145
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 146
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 147
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 148
    .local v0, bar:Landroid/app/ActionBar;
    if-nez v0, :cond_0

    move-object v3, v4

    .line 180
    .end local v0           #bar:Landroid/app/ActionBar;
    :goto_0
    return-object v3

    .line 151
    .restart local v0       #bar:Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 152
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 153
    const v3, 0x7f04017d

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActionCustomView:Landroid/view/View;

    .line 155
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActionCustomView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActionCustomView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 159
    :cond_1
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 160
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, layoutSelectAll:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 162
    const v3, 0x7f0a035a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    .line 164
    const v3, 0x7f0a000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    .line 167
    :cond_2
    const v3, 0x7f08129b

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, selectedCount:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 170
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #layoutSelectAll:Landroid/view/View;
    .end local v2           #selectedCount:Ljava/lang/String;
    :cond_4
    const v3, 0x7f040180

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mRootView:Landroid/view/View;

    .line 180
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 229
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mCursor:Landroid/database/Cursor;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 234
    .local v0, listViewDelete:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    :cond_1
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mLocale:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActionCustomView:Landroid/view/View;

    .line 239
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtCancel:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtCancel:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :cond_3
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtDelete:Landroid/widget/Button;

    .line 246
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtCancel:Landroid/widget/Button;

    .line 247
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_4
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mChkboxSelectAll:Landroid/widget/CheckBox;

    .line 252
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mTxtSelected:Landroid/widget/TextView;

    .line 253
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mRootView:Landroid/view/View;

    .line 254
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    if-eqz v1, :cond_5

    .line 255
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->clear()V

    .line 256
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

    if-eqz v1, :cond_6

    .line 259
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

    #calls: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->clear()V
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;->access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;)V

    .line 260
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mDialogDelete:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$LGEWordDeletePopup;

    .line 262
    :cond_6
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 220
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;->clear()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mAdapter:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$DeleteCursorAdapter;

    .line 224
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "listView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 691
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 692
    if-nez p2, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;

    .line 696
    .local v1, holder:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;
    if-eqz v1, :cond_0

    .line 699
    iget-object v0, v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 700
    .local v0, chk:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 706
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 267
    return-void
.end method
