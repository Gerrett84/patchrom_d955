.class public Lcom/android/lgesettings/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;,
        Lcom/android/lgesettings/UserDictionarySettings$MyAdapter;,
        Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;,
        Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;,
        Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

.field private mAddButtonSec:Landroid/widget/ImageView;

.field private mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

.field private mCursor:Landroid/database/Cursor;

.field private mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
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

    sput-object v0, Lcom/android/lgesettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/UserDictionarySettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 354
    new-instance v0, Lcom/android/lgesettings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040181

    iget-object v3, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "shortcut"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/lgesettings/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "locale"

    .prologue
    const/4 v4, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 326
    .local v6, activity:Landroid/app/Activity;
    if-eqz v6, :cond_0

    .line 327
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 329
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale is null"

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 349
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v4

    .line 338
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v7, p1

    .line 339
    .local v7, queryLocale:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v4, v1

    .line 340
    .local v4, selectionargs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=?"

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 338
    .end local v4           #selectionargs:[Ljava/lang/String;
    .end local v7           #queryLocale:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static deleteLocale(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "locale"
    .parameter "resolver"

    .prologue
    .line 557
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locale is null OR locale=\'\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locale=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5
    .parameter "word"
    .parameter "shortcut"
    .parameter "resolver"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "word=? AND shortcut is null OR shortcut=\'\'"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 548
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "word=? AND shortcut=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 528
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 533
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "shortcut"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-object v0

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 519
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 475
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 476
    const-string v1, "mode"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    const-string v0, "word"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "shortcut"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 484
    const-class v1, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08060e

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 487
    return-void

    :cond_0
    move v0, v6

    .line 476
    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 497
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 501
    invoke-direct {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/UserDictionarySettings;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 504
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 507
    const-class v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f081299

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "word"
    .parameter "shortcut"

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    new-instance v0, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;

    invoke-direct {v0, p1, p2}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v0, dialogDelete:Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LGEWordDeleteDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 229
    invoke-super/range {p0 .. p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 232
    .local v5, intent:Landroid/content/Intent;
    if-nez v5, :cond_6

    const/4 v9, 0x0

    .line 235
    .local v9, localeFromIntent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 236
    .local v1, arguments:Landroid/os/Bundle;
    if-nez v1, :cond_7

    const/4 v8, 0x0

    .line 240
    .local v8, localeFromArguments:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_8

    .line 241
    move-object v7, v8

    .line 248
    .local v7, locale:Ljava/lang/String;
    :goto_2
    iput-object v7, p0, Lcom/android/lgesettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 249
    invoke-direct {p0, v7}, Lcom/android/lgesettings/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    iput-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 251
    new-instance v11, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;-><init>(Landroid/app/Activity;)V

    iput-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    .line 254
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/lgesettings/UserDictionarySettings;->mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 259
    const/4 v4, 0x0

    .line 260
    .local v4, htmlText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 261
    .local v0, addDes:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 262
    .local v10, res:Landroid/content/res/Resources;
    if-eqz v10, :cond_0

    .line 263
    const v11, 0x7f08129c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "<img src=\"add_icon\"/>"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 266
    const v11, 0x7f08060d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0210

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 272
    .local v2, emptyTextView:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 273
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    if-nez v11, :cond_1

    .line 274
    new-instance v11, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    invoke-direct {v11, v2, p0}, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;-><init>(Landroid/widget/TextView;Lcom/android/lgesettings/UserDictionarySettings;)V

    iput-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    .line 277
    :cond_1
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    if-eqz v11, :cond_2

    .line 278
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a020e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 285
    .local v3, emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a020f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    .line 288
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    if-eqz v11, :cond_4

    .line 289
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 290
    new-instance v11, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;-><init>(Lcom/android/lgesettings/UserDictionarySettings;)V

    iput-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    .line 292
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    if-eqz v11, :cond_3

    .line 293
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_3
    if-eqz v0, :cond_4

    .line 296
    iget-object v11, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 301
    .local v6, listView:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/lgesettings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 304
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 305
    if-eqz v3, :cond_5

    .line 306
    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 309
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 311
    return-void

    .line 232
    .end local v0           #addDes:Ljava/lang/String;
    .end local v1           #arguments:Landroid/os/Bundle;
    .end local v2           #emptyTextView:Landroid/widget/TextView;
    .end local v3           #emptyView:Landroid/view/View;
    .end local v4           #htmlText:Ljava/lang/String;
    .end local v6           #listView:Landroid/widget/ListView;
    .end local v7           #locale:Ljava/lang/String;
    .end local v8           #localeFromArguments:Ljava/lang/String;
    .end local v9           #localeFromIntent:Ljava/lang/String;
    .end local v10           #res:Landroid/content/res/Resources;
    :cond_6
    const-string v11, "locale"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 236
    .restart local v1       #arguments:Landroid/os/Bundle;
    .restart local v9       #localeFromIntent:Ljava/lang/String;
    :cond_7
    const-string v11, "locale"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 242
    .restart local v8       #localeFromArguments:Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_9

    .line 243
    move-object v7, v9

    .restart local v7       #locale:Ljava/lang/String;
    goto/16 :goto_2

    .line 245
    .end local v7           #locale:Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .restart local v7       #locale:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 435
    .local v0, contextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    if-eqz v0, :cond_2

    .line 436
    instance-of v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 437
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 442
    :cond_2
    if-eqz v1, :cond_0

    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 447
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/lgesettings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/lgesettings/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/UserDictionarySettings;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 415
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102000a

    if-ne v1, v2, :cond_0

    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 419
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 420
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 421
    const/4 v1, 0x2

    const v2, 0x7f080618

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f08060d

    const v5, 0x7f0201b3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const v0, 0x7f080618

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201b7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 376
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 393
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 207
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 209
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 212
    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const/high16 v2, 0x7f03

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 220
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    :goto_0
    const v2, 0x7f0400f4

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 215
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_1
    const v2, 0x7f02033e

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 672
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 673
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings;->mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 675
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 676
    iput-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    invoke-virtual {v0}, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->clear()V

    .line 680
    iput-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings;->mDataset:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iput-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonSec:Landroid/widget/ImageView;

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    invoke-virtual {v0}, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->clear()V

    .line 689
    iput-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddButtonListner:Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    if-eqz v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    invoke-virtual {v0}, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->clear()V

    .line 694
    iput-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings;->mAddWordHtmlImage:Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;

    .line 697
    :cond_4
    iput-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 698
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 362
    invoke-direct {p0, p3}, Lcom/android/lgesettings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, word:Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/lgesettings/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, shortcut:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 365
    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 397
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 400
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 401
    .local v0, itemId:I
    if-ne v0, v2, :cond_2

    .line 402
    invoke-direct {p0, v3, v3}, Lcom/android/lgesettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 403
    goto :goto_0

    .line 405
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/lgesettings/UserDictionarySettings;->showDeleteDialog()V

    move v1, v2

    .line 407
    goto :goto_0
.end method
