.class public Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    }
.end annotation


# static fields
.field private static final HAS_SHORTCUT_PROJECTION:[Ljava/lang/String;

.field private static final HAS_WORD_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mHasShortcut:Z

.field private mHasWord:Z

.field private mLocale:Ljava/lang/String;

.field private final mMode:I

.field private final mOldShortcut:Ljava/lang/String;

.field private final mOldWord:Ljava/lang/String;

.field private final mShortcutEditText:Landroid/widget/EditText;

.field private final mWordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "word"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    .line 218
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "shortcut"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->HAS_SHORTCUT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasShortcut:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasWord:Z

    .line 65
    const v2, 0x7f0a0351

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 66
    const v2, 0x7f0a0356

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    .line 67
    const-string v2, "word"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, word:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 72
    :cond_0
    const-string v2, "shortcut"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, shortcut:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    const-string v2, "mode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 77
    const-string v2, "word"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 78
    const-string v2, "shortcut"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    .line 79
    const-string v2, "locale"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 310
    if-eqz p2, :cond_0

    .line 311
    move-object v1, p2

    .line 312
    .local v1, loc:Ljava/lang/String;
    const-string v5, "_"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, brokenDownLocale:[Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, targetCarrier:Ljava/lang/String;
    const-string v5, "ro.build.target_region"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, targetRegion:Ljava/lang/String;
    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, targetCountry:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 317
    new-instance v5, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v5, p0, p2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v0           #brokenDownLocale:[Ljava/lang/String;
    .end local v1           #loc:Ljava/lang/String;
    .end local v2           #targetCarrier:Ljava/lang/String;
    .end local v3           #targetCountry:Ljava/lang/String;
    .end local v4           #targetRegion:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local v0       #brokenDownLocale:[Ljava/lang/String;
    .restart local v1       #loc:Ljava/lang/String;
    .restart local v2       #targetCarrier:Ljava/lang/String;
    .restart local v3       #targetCountry:Ljava/lang/String;
    .restart local v4       #targetRegion:Ljava/lang/String;
    :cond_1
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 321
    const-string v5, "VIV"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SCA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "TCL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OPEN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "BR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    :cond_2
    aget-object v5, v0, v7

    const-string v6, "es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v0, v8

    const-string v6, "ES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 327
    aget-object v5, v0, v7

    if-eqz v5, :cond_3

    .line 328
    new-instance v5, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    aget-object v6, v0, v7

    invoke-direct {v5, p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_3
    array-length v5, v0

    if-lt v5, v8, :cond_5

    .line 335
    const-string v5, "VDF"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "OPEN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "EU"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 338
    :cond_4
    aget-object v5, v0, v7

    const-string v6, "de"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 339
    aget-object v5, v0, v7

    if-eqz v5, :cond_5

    .line 340
    new-instance v5, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    aget-object v6, v0, v7

    invoke-direct {v5, p0, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 346
    :cond_5
    new-instance v5, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v5, p0, p2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private hasShortcut(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .parameter "shortcut"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 256
    const-string v0, ""

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->HAS_SHORTCUT_PROJECTION:[Ljava/lang/String;

    const-string v3, "shortcut=? AND locale is null"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 268
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v6, :cond_2

    .line 273
    if-eqz v6, :cond_0

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v8

    .line 262
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->HAS_SHORTCUT_PROJECTION:[Ljava/lang/String;

    const-string v3, "shortcut=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    iget-object v9, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    aput-object v9, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 271
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v0, v7

    .line 273
    :goto_2
    if-eqz v6, :cond_3

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v0

    goto :goto_1

    :cond_4
    move v0, v8

    .line 271
    goto :goto_2

    .line 273
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private hasWord(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .parameter "word"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 230
    const-string v0, ""

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND locale is null"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v6, :cond_2

    .line 245
    if-eqz v6, :cond_0

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v8

    .line 235
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    iget-object v9, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    aput-object v9, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 243
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v0, v7

    .line 245
    :goto_2
    if-eqz v6, :cond_3

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v0

    goto :goto_1

    :cond_4
    move v0, v8

    .line 243
    goto :goto_2

    .line 245
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method apply(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 107
    iput-boolean v9, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasWord:Z

    .line 108
    iput-boolean v9, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasShortcut:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 119
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, newWord:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-nez v8, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 145
    .local v0, newShortcut:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 210
    :goto_1
    return-void

    .line 129
    .end local v0           #newShortcut:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, tmpShortcut:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 134
    const/4 v0, 0x0

    .restart local v0       #newShortcut:Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0           #newShortcut:Ljava/lang/String;
    :cond_1
    move-object v0, v4

    .restart local v0       #newShortcut:Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v4           #tmpShortcut:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->hasWord(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 157
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 158
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->selectAll()V

    .line 164
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_3

    .line 166
    const v7, 0x7f08129f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, wordAlreadyExists:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 170
    invoke-static {p1, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 172
    .local v5, toast:Landroid/widget/Toast;
    if-eqz v5, :cond_3

    .line 173
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 177
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #wordAlreadyExists:Ljava/lang/String;
    :cond_3
    iput-boolean v10, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasWord:Z

    goto :goto_1

    .line 160
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 161
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->selectAll()V

    goto :goto_2

    .line 182
    :cond_5
    iget v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasWord:Z

    if-nez v8, :cond_6

    .line 184
    iget-object v8, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v8, v9, v3}, Lcom/android/lgesettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 188
    :cond_6
    if-eqz v0, :cond_7

    .line 189
    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->hasShortcut(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 190
    iput-boolean v10, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasShortcut:Z

    goto :goto_1

    .line 199
    :cond_7
    invoke-static {v1, v7, v3}, Lcom/android/lgesettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 202
    invoke-static {v1, v0, v3}, Lcom/android/lgesettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 207
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xfa

    iget-object v10, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_3
    invoke-static {p1, v8, v9, v0, v7}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    goto :goto_3
.end method

.method public getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 14
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {p1}, Lcom/android/lgesettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v9

    .line 354
    .local v9, locales:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v9, :cond_0

    .line 355
    const/4 v10, 0x0

    .line 408
    :goto_0
    return-object v10

    .line 358
    :cond_0
    iget-object v12, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, systemLocale:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 362
    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 363
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v10, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v12, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {p1, v10, v12}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 367
    if-eqz v11, :cond_1

    iget-object v12, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 368
    iget-object v12, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 370
    const-string v12, "_"

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, brokenDownLocale:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v12, v1

    const/4 v13, 0x1

    if-lt v12, v13, :cond_1

    .line 372
    const/4 v12, 0x0

    aget-object v12, v1, v12

    iget-object v13, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 373
    invoke-static {p1, v10, v11}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 379
    .end local v1           #brokenDownLocale:[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v5, localeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 381
    .local v6, localeListSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 382
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 383
    .local v7, localeRenderer:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    if-eqz v7, :cond_2

    .line 384
    invoke-virtual {v7}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, localeStr:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 386
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v8           #localeStr:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    .end local v7           #localeRenderer:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    :cond_3
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .local v4, l:Ljava/lang/String;
    const/4 v0, 0x0

    .line 394
    .local v0, bAlreadyExist:Z
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 395
    const/4 v0, 0x1

    .line 403
    .end local v0           #bAlreadyExist:Z
    .end local v4           #l:Ljava/lang/String;
    :cond_5
    const-string v12, ""

    iget-object v13, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 405
    const-string v12, ""

    invoke-static {p1, v10, v12}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 407
    :cond_6
    new-instance v12, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v13, 0x0

    invoke-direct {v12, p1, v13}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 398
    .restart local v0       #bAlreadyExist:Z
    .restart local v4       #l:Ljava/lang/String;
    :cond_7
    if-nez v0, :cond_4

    .line 400
    invoke-static {p1, v10, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isShortcutAlreadyexist()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasShortcut:Z

    return v0
.end method

.method public isWordAlreadyexist()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mHasWord:Z

    return v0
.end method

.method saveStateIntoBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 89
    const-string v0, "word"

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "shortcut"

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method updateLocale(Ljava/lang/String;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 85
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    .line 86
    return-void
.end method
