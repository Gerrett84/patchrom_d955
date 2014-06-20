.class public Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "QuietModeContactsAllowedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;,
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;,
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;,
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;,
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;,
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;
    }
.end annotation


# static fields
.field public static final ALLOWED_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private isRunFinish:Ljava/lang/Boolean;

.field private mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

.field private mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

.field private mCategory:Landroid/widget/TextView;

.field private mContactDelBtn:Landroid/widget/ImageView;

.field private mDescription:Landroid/widget/TextView;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mListLine:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mNoContactsLayout:Landroid/widget/LinearLayout;

.field private mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "match_condition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->ALLOWED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;

    .line 157
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 911
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;)Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startCompareList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->allowedCallCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->updateNoContactsLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->deleteAllContactsAllowed()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->checkMaxAllowedNumber()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isExistContactsNumber(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private allowedCallCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1061
    const/4 v6, 0x0

    .line 1062
    .local v6, count:I
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->ALLOWED_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1065
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1066
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1070
    :cond_0
    if-eqz v7, :cond_1

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1072
    const/4 v7, 0x0

    .line 1075
    :cond_1
    :goto_0
    return v6

    .line 1068
    :catch_0
    move-exception v0

    .line 1070
    if-eqz v7, :cond_1

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1072
    const/4 v7, 0x0

    goto :goto_0

    .line 1070
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1072
    const/4 v7, 0x0

    :cond_2
    throw v0
.end method

.method private allowedContactsCount()I
    .locals 8

    .prologue
    .line 697
    const/4 v6, 0x0

    .line 699
    .local v6, count:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->ALLOWED_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 700
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 703
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 705
    :cond_0
    return v6
.end method

.method private assertUiThread()V
    .locals 2

    .prologue
    .line 1117
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_0
    return-void
.end method

.method private buildLongArray(Ljava/util/ArrayList;)[J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 843
    .local p1, longs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 844
    .local v3, ints:[J
    const/4 v0, 0x0

    .line 845
    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 846
    .local v4, n:Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 848
    .end local v4           #n:Ljava/lang/Long;
    :cond_0
    return-object v3
.end method

.method private checkMaxAllowedNumber()Z
    .locals 2

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->allowedCallCount()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteAllContactsAllowed()V
    .locals 5

    .prologue
    .line 1098
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startQuery()V

    .line 1100
    const v1, 0x7f080e15

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private isAllowedContactsList()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 681
    const/4 v6, 0x0

    .line 683
    .local v6, count:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->ALLOWED_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 684
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    if-ne v6, v8, :cond_1

    .line 692
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    if-lez v6, :cond_2

    move v0, v8

    :goto_2
    return v0

    .line 688
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 692
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 690
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private isExistContactsNumber(Ljava/lang/String;I)Z
    .locals 8
    .parameter "number"
    .parameter "condition"

    .prologue
    const/4 v4, 0x0

    .line 1079
    const/4 v7, 0x0

    .line 1080
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->ALLOWED_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "match_condition"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1086
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1087
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1088
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    const/4 v7, 0x1

    .line 1091
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1093
    :cond_1
    return v7
.end method

.method private reSetAdapter()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->clearCache()V

    .line 639
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 641
    :cond_0
    return-void
.end method

.method private startCompareList()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->setLoading(Z)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;->cancelOperation(I)V

    .line 713
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;

    sget-object v3, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->ALLOWED_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private updateNoContactsLayout()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isAllowedContactsList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mNoContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 646
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mListLine:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mNoContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mListLine:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 656
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 664
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080e57

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "<img src=\"add_icon\"/>"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, htmlText:Ljava/lang/String;
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$3;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 675
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 789
    packed-switch p1, :pswitch_data_0

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 794
    :pswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 795
    if-eqz p3, :cond_0

    .line 798
    move-object/from16 v12, p3

    .line 799
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 800
    .local v10, extras:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 802
    const-string v1, "com.android.contacts.extra.numberList"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 803
    .local v14, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.android.contacts.extra.nameList"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 804
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.android.contacts.extra.idList"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 805
    .local v11, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 806
    .local v4, strNumber:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 807
    .local v5, strName:[Ljava/lang/String;
    const-string v1, "soosin"

    invoke-virtual {v14}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v1, "soosin"

    invoke-virtual {v13}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v6, 0x0

    .line 810
    .local v6, strId:[J
    if-eqz v14, :cond_1

    .line 811
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #strNumber:[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 813
    .restart local v4       #strNumber:[Ljava/lang/String;
    :cond_1
    if-eqz v13, :cond_2

    .line 814
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #strName:[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 816
    .restart local v5       #strName:[Ljava/lang/String;
    :cond_2
    if-eqz v11, :cond_3

    .line 817
    invoke-direct {p0, v11}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->buildLongArray(Ljava/util/ArrayList;)[J

    move-result-object v6

    .line 820
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->checkMaxAllowedNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 821
    const v1, 0x7f080e27

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 826
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->assertUiThread()V

    .line 827
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J[JLandroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    .line 829
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 575
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 577
    const v1, 0x7f0201fb

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 578
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    const v1, 0x7f080e55

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 583
    :cond_0
    const v1, 0x7f040114

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->setContentView(I)V

    .line 584
    const v1, 0x7f0a0244

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mDescription:Landroid/widget/TextView;

    .line 585
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f080e29

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 586
    const v1, 0x7f0a017d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mCategory:Landroid/widget/TextView;

    .line 587
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mCategory:Landroid/widget/TextView;

    const v2, 0x7f080e0c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 588
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mListView:Landroid/widget/ListView;

    .line 589
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;

    .line 590
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    .line 591
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    const v1, 0x7f0a0247

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mNoContactsLayout:Landroid/widget/LinearLayout;

    .line 596
    const v1, 0x7f0a0249

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyText:Landroid/widget/TextView;

    .line 597
    const v1, 0x7f0a0248

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyIcon:Landroid/widget/ImageView;

    .line 598
    const v1, 0x7f0a0246

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mListLine:Landroid/widget/ImageView;

    .line 599
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mContactDelBtn:Landroid/widget/ImageView;

    .line 600
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mContactDelBtn:Landroid/widget/ImageView;

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 719
    packed-switch p1, :pswitch_data_0

    .line 785
    :pswitch_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 721
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080e0d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900aa

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$4;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$4;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 772
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080a83

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080a88

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$6;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080a89

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080e19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 908
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 607
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 608
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->stopRequestProcessing()V

    .line 609
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 610
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 874
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 875
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 902
    :goto_0
    return v2

    .line 877
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->showDialog(I)V

    goto :goto_0

    .line 880
    :sswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isAllowedContactsList()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->allowedContactsCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 882
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v3

    goto :goto_0

    .line 886
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 888
    .local v0, i:Landroid/content/Intent;
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.quietmode.QuietModeDeleteContactsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 889
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 890
    :catch_1
    move-exception v3

    goto :goto_0

    .line 895
    .end local v0           #i:Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x6400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 897
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.quietmode.QuietModeAllowedCallSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->finish()V

    goto :goto_0

    .line 875
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0a048d -> :sswitch_1
        0x7f0a048f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 615
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 616
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;

    .line 617
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->stopRequestProcessing()V

    .line 619
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->access$500(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 621
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->cancel(Z)Z

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAsyncTask:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    .line 624
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 854
    const v2, 0x7f0a048d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 855
    .local v1, item:Landroid/view/MenuItem;
    const v2, 0x7f0a048e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 857
    .local v0, deleteitem:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->updateNoContactsLayout()V

    .line 859
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isAllowedContactsList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 861
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 862
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 870
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 865
    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 866
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 867
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 868
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 630
    const-string v0, "soosin"

    const-string v1, "Onresume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->reSetAdapter()V

    .line 632
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startQuery()V

    .line 634
    return-void
.end method

.method public setDBcontactsAllowedName([Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contacts_allowed_name"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1128
    return-void
.end method

.method public setDBcontactsAllowedNumber([Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contacts_allowed_phone_number"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1124
    return-void
.end method
