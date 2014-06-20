.class public Lcom/android/providers/telephony/FirewallProvider;
.super Landroid/content/ContentProvider;
.source "FirewallProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContentProviderOperation:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/ContentProvider;"
    }
.end annotation


# static fields
.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mInsertBL:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertKW:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertLog:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertMode:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertWL:Landroid/database/sqlite/SQLiteStatement;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 70
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "blacklist"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "blacklist/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "log"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "log/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "whitelist"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "whitelist/*"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "logconversation"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "keyword"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "keyword/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "mode"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "mode/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "account"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "account/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "markednumber"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "markednumber/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "cloudantispam"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "cloudantispam/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "category"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "firewall"

    const-string v2, "category/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    .line 62
    iput-object v0, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    .line 63
    iput-object v0, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    .line 64
    iput-object v0, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertMode:Landroid/database/sqlite/SQLiteStatement;

    .line 65
    iput-object v0, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertKW:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method

.method private bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .parameter "stmt"
    .parameter "index"
    .parameter "value"
    .parameter "defVal"

    .prologue
    .line 682
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    if-nez p3, :cond_0

    .line 683
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 674
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    if-nez p3, :cond_0

    .line 675
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private bindWhereOfPhoneNumberQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 695
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    const/4 v3, 0x0

    .line 706
    :goto_0
    return-object v3

    .line 699
    :cond_0
    const-string v2, "substr(number, -7, 7)"

    .line 700
    .local v2, substrStatement:Ljava/lang/String;
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 702
    .local v0, length:I
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 705
    :cond_1
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, min_match:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND PHONE_NUMBERS_EQUAL(number, \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private sendNofication()V
    .locals 2

    .prologue
    .line 669
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 715
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v0

    .line 716
    .local v0, helper:Lcom/android/providers/telephony/BatchModeHelper;
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/FirewallProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/telephony/BatchModeHelper;->beginBatchOps(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 717
    const/4 v1, 0x0

    .line 719
    .local v1, results:[Landroid/content/ContentProviderResult;
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 721
    invoke-virtual {v0}, Lcom/android/providers/telephony/BatchModeHelper;->endBatchOps()V

    .line 723
    return-object v1

    .line 721
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/providers/telephony/BatchModeHelper;->endBatchOps()V

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 401
    const/4 v0, 0x0

    .line 403
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/telephony/FirewallProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 404
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 405
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 513
    :pswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 409
    :pswitch_1
    const-string v3, "blacklist"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 410
    if-lez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 418
    :pswitch_2
    const-string v3, "blacklist"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 420
    if-lez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 428
    :pswitch_3
    const-string v3, "fwlog"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 429
    if-lez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 438
    :pswitch_4
    const-string v3, "fwlog"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 440
    if-lez v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 448
    :pswitch_5
    const-string v3, "whitelist"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 449
    if-lez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 457
    :pswitch_6
    const-string v3, "whitelist"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 459
    if-lez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 467
    :pswitch_7
    const-string v3, "keyword"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 468
    if-lez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 476
    :pswitch_8
    const-string v3, "mode"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 477
    if-lez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 485
    :pswitch_9
    const-string v3, "keyword"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 487
    if-lez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 495
    :pswitch_a
    const-string v3, "mode"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 497
    if-lez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 504
    :pswitch_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 505
    const-string v3, "account"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 507
    goto/16 :goto_0

    .line 509
    :pswitch_c
    const-string v3, "account"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 511
    goto/16 :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 199
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    sget-object v0, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/firewall-blacklist"

    .line 238
    :goto_0
    return-object v0

    .line 204
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/firewall-blacklist"

    goto :goto_0

    .line 207
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/firewall-log"

    goto :goto_0

    .line 210
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/firewall-log"

    goto :goto_0

    .line 213
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/firewall-whitelist"

    goto :goto_0

    .line 216
    :pswitch_6
    const-string v0, "vnd.android.cursor.item/firewall-whitelist"

    goto :goto_0

    .line 219
    :pswitch_7
    const-string v0, "vnd.android.cursor.dir/firewall-keyword"

    goto :goto_0

    .line 222
    :pswitch_8
    const-string v0, "vnd.android.cursor.item/firewall-keyword"

    goto :goto_0

    .line 225
    :pswitch_9
    const-string v0, "vnd.android.cursor.dir/firewall-mode"

    goto :goto_0

    .line 228
    :pswitch_a
    const-string v0, "vnd.android.cursor.item/firewall-mode"

    goto :goto_0

    .line 238
    :pswitch_b
    const-string v0, "*/*"

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 248
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 249
    .local v4, result:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 250
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 251
    .local v3, match:I
    const-wide/16 v1, 0x0

    .line 253
    .local v1, insertId:J
    sparse-switch v3, :sswitch_data_0

    .line 387
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert that URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 256
    :sswitch_0
    const-string v7, "number"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 257
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    if-nez v7, :cond_0

    .line 258
    const-string v7, "INSERT OR IGNORE INTO blacklist(number,display_number,notes,state) VALUES (?,?,?,?)"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    .line 265
    :cond_0
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 267
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    const-string v9, "notes"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 268
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x4

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 269
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertBL:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v5

    .line 270
    .local v5, rowID:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 271
    sget-object v7, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 272
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 392
    .end local v5           #rowID:J
    :cond_1
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_2

    .line 393
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 394
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 396
    :cond_2
    return-object v4

    .line 278
    :cond_3
    :sswitch_1
    const-string v7, "number"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 279
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    if-nez v7, :cond_4

    .line 280
    const-string v7, "INSERT OR IGNORE INTO fwlog(number,date,type,reason,data1,data2,read,mode) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    .line 291
    :cond_4
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 294
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    const-string v9, "date"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/providers/telephony/FirewallProvider;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;Ljava/lang/Long;)V

    .line 295
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    const-string v9, "type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/providers/telephony/FirewallProvider;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;Ljava/lang/Long;)V

    .line 296
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x4

    const-string v9, "reason"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/providers/telephony/FirewallProvider;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;Ljava/lang/Long;)V

    .line 297
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x5

    const-string v9, "data1"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 298
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x6

    const-string v9, "data2"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x7

    const-string v9, "read"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/providers/telephony/FirewallProvider;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;Ljava/lang/Long;)V

    .line 300
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    const/16 v8, 0x8

    const-string v9, "mode"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 301
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertLog:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v5

    .line 302
    .restart local v5       #rowID:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_5

    .line 303
    sget-object v7, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 304
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    :cond_5
    invoke-direct {p0}, Lcom/android/providers/telephony/FirewallProvider;->sendNofication()V

    goto/16 :goto_0

    .line 313
    .end local v5           #rowID:J
    :cond_6
    :sswitch_2
    const-string v7, "number"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 314
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    if-nez v7, :cond_7

    .line 315
    const-string v7, "INSERT OR IGNORE INTO whitelist(number,display_number,notes,state,isdisplay,vip) VALUES (?,?,?,?,?,?)"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    .line 324
    :cond_7
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 326
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    const-string v9, "notes"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 328
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x4

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 329
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x5

    const-string v9, "isdisplay"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 330
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x6

    const-string v9, "vip"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/providers/telephony/FirewallProvider;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;Ljava/lang/Long;)V

    .line 331
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertWL:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v5

    .line 332
    .restart local v5       #rowID:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 333
    sget-object v7, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 334
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 343
    .end local v5           #rowID:J
    :cond_8
    :sswitch_3
    const-string v7, "data"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 344
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertKW:Landroid/database/sqlite/SQLiteStatement;

    if-nez v7, :cond_9

    .line 345
    const-string v7, "INSERT OR IGNORE INTO keyword(data) VALUES (?)"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertKW:Landroid/database/sqlite/SQLiteStatement;

    .line 350
    :cond_9
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertKW:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    const-string v9, "data"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 351
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertKW:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v5

    .line 352
    .restart local v5       #rowID:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 353
    sget-object v7, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 354
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 363
    .end local v5           #rowID:J
    :cond_a
    :sswitch_4
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 364
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertMode:Landroid/database/sqlite/SQLiteStatement;

    if-nez v7, :cond_b

    .line 365
    const-string v7, "INSERT OR IGNORE INTO mode(name,state) VALUES (?,?)"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertMode:Landroid/database/sqlite/SQLiteStatement;

    .line 370
    :cond_b
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertMode:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 371
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertMode:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/providers/telephony/FirewallProvider;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 372
    iget-object v7, p0, Lcom/android/providers/telephony/FirewallProvider;->mInsertMode:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v5

    .line 373
    .restart local v5       #rowID:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 374
    sget-object v7, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 375
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 383
    .end local v5           #rowID:J
    :cond_c
    :sswitch_5
    const-string v7, "account"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 384
    goto/16 :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_5
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 94
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    new-instance v0, Lcom/android/providers/telephony/FirewallDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/FirewallDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/FirewallProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 101
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 103
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 104
    .local v9, match:I
    const/4 v5, 0x0

    .line 106
    .local v5, groupBy:Ljava/lang/String;
    const/4 v2, 0x3

    if-eq v9, v2, :cond_0

    const/4 v2, 0x4

    if-eq v9, v2, :cond_0

    const/4 v2, 0x7

    if-ne v9, v2, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/provider/ExtraSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    .local v8, emptyCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 193
    .end local v8           #emptyCursor:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 111
    :cond_1
    packed-switch v9, :pswitch_data_0

    .line 186
    :pswitch_0
    const-string v2, "FirewallProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v8, 0x0

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v2, "blacklist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 190
    :goto_1
    iget-object v2, p0, Lcom/android/providers/telephony/FirewallProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 191
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 192
    .local v10, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v10, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v8, v10

    .line 193
    goto :goto_0

    .line 119
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #ret:Landroid/database/Cursor;
    :pswitch_2
    const-string v2, "blacklist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/FirewallProvider;->bindWhereOfPhoneNumberQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 125
    :pswitch_3
    const-string v2, "fwlog"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :pswitch_4
    const-string v2, "fwlog"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/FirewallProvider;->bindWhereOfPhoneNumberQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    :pswitch_5
    const-string v2, "whitelist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :pswitch_6
    const-string v2, "whitelist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/FirewallProvider;->bindWhereOfPhoneNumberQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :pswitch_7
    const-string v2, "(select * from fwlog order by date ASC)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 150
    const-string v5, "number"

    .line 151
    goto :goto_1

    .line 155
    :pswitch_8
    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :pswitch_9
    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 166
    :pswitch_a
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    :pswitch_b
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 177
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 178
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :pswitch_d
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .local p0, this:Lcom/android/providers/telephony/FirewallProvider;,"Lcom/android/providers/telephony/FirewallProvider<TContentProviderOperation;>;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/telephony/FirewallProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 525
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/FirewallProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 526
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 660
    :pswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :pswitch_1
    const-string v3, "blacklist"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 531
    if-lez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 664
    :cond_0
    :goto_0
    return v0

    .line 539
    :pswitch_2
    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 540
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 543
    :cond_2
    const-string v3, "blacklist"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 545
    if-lez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 553
    :pswitch_3
    const-string v3, "fwlog"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 554
    if-lez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 565
    :pswitch_4
    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    .line 566
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    :cond_4
    const-string v3, "fwlog"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 571
    if-lez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 582
    :pswitch_5
    const-string v3, "whitelist"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 583
    if-lez v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 591
    :pswitch_6
    if-nez p3, :cond_5

    if-eqz p4, :cond_6

    .line 592
    :cond_5
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 595
    :cond_6
    const-string v3, "whitelist"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 597
    if-lez v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 605
    :pswitch_7
    const-string v3, "keyword"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 606
    if-lez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 614
    :pswitch_8
    const-string v3, "mode"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 615
    if-lez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 623
    :pswitch_9
    if-nez p3, :cond_7

    if-eqz p4, :cond_8

    .line 624
    :cond_7
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 627
    :cond_8
    const-string v3, "keyword"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 629
    if-lez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 637
    :pswitch_a
    if-nez p3, :cond_9

    if-eqz p4, :cond_a

    .line 638
    :cond_9
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    :cond_a
    const-string v3, "mode"

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 643
    if-lez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/providers/telephony/FirewallProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 650
    :pswitch_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 651
    const-string v3, "account"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 653
    goto/16 :goto_0

    .line 655
    :pswitch_c
    const-string v3, "account"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 657
    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
