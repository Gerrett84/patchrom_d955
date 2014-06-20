.class public Lcom/android/providers/telephony/EccNotiProvider;
.super Landroid/content/ContentProvider;
.source "EccNotiProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;
    }
.end annotation


# static fields
.field private static final urimatcher:Landroid/content/UriMatcher;


# instance fields
.field ecc_noti:Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/EccNotiProvider;->urimatcher:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/android/providers/telephony/EccNotiProvider;->urimatcher:Landroid/content/UriMatcher;

    const-string v1, "ecc_notification"

    const-string v2, "activation"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/android/providers/telephony/EccNotiProvider;->urimatcher:Landroid/content/UriMatcher;

    const-string v1, "ecc_notification"

    const-string v2, "mmi"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/android/providers/telephony/EccNotiProvider;->urimatcher:Landroid/content/UriMatcher;

    const-string v1, "ecc_notification"

    const-string v2, "dtt_code"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/android/providers/telephony/EccNotiProvider;->urimatcher:Landroid/content/UriMatcher;

    const-string v1, "ecc_notification"

    const-string v2, "dtt_digit"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 131
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "_url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/providers/telephony/EccNotiProvider;->ecc_noti:Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ecc_noti"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 72
    sget-object v0, Lcom/android/providers/telephony/EccNotiProvider;->urimatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECC Noti illegal Arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/activation"

    .line 80
    :goto_0
    return-object v0

    .line 76
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/mmi"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/dtt_code"

    goto :goto_0

    .line 80
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/dtt_digit"

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "_url"
    .parameter "_initialValues"

    .prologue
    .line 106
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Support inserting new item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/providers/telephony/EccNotiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;

    invoke-direct {v1, v0}, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/telephony/EccNotiProvider;->ecc_noti:Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 91
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "ecc_noti"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/providers/telephony/EccNotiProvider;->ecc_noti:Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 96
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "wArgs"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/providers/telephony/EccNotiProvider;->ecc_noti:Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "ecc_noti"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/providers/telephony/EccNotiProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 127
    return v0
.end method
