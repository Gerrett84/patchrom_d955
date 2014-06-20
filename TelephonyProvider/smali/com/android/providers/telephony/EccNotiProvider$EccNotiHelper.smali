.class Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EccNotiProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/EccNotiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EccNotiHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 147
    const-string v0, "ecc_noti.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 148
    iput-object p1, p0, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method

.method private initDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 171
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 173
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "activation"

    const-string v4, "ON"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "mmi"

    const-string v4, "#119#"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "dtt_code"

    const-string v4, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "dtt_digit"

    const-string v4, "897023415618307564290729486153"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "ecc_noti"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 180
    .local v0, count:J
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 154
    const-string v0, "CREATE TABLE ecc_noti (_id INTEGER PRIMARY KEY AUTOINCREMENT, activation TEXT, mmi TEXT, dtt_code TEXT, dtt_digit TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;->initDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 162
    const-string v0, "DROP TABLE IF EXISTS ecc_noti"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/EccNotiProvider$EccNotiHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    return-void
.end method
