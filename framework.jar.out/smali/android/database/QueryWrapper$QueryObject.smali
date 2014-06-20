.class Landroid/database/QueryWrapper$QueryObject;
.super Ljava/lang/Object;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/QueryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryObject"
.end annotation


# instance fields
.field private mChangeCount:J

.field private mMemTableName:Ljava/lang/String;

.field private mQueryStr:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "mQueryStr"

    .prologue
    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Landroid/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/QueryWrapper$QueryObject;->mSelectionArgs:[Ljava/lang/String;

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/database/QueryWrapper$QueryObject;->mChangeCount:J

    .line 311
    const-string v0, ""

    iput-object v0, p0, Landroid/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    .line 312
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "mQueryStr"
    .parameter "mSelectionArgs"

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Landroid/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    .line 316
    iput-object p2, p0, Landroid/database/QueryWrapper$QueryObject;->mSelectionArgs:[Ljava/lang/String;

    .line 317
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/database/QueryWrapper$QueryObject;->mChangeCount:J

    .line 318
    const-string v0, ""

    iput-object v0, p0, Landroid/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    .line 319
    return-void
.end method


# virtual methods
.method public getChangeCount()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Landroid/database/QueryWrapper$QueryObject;->mChangeCount:J

    return-wide v0
.end method

.method public getMemTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/database/QueryWrapper$QueryObject;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public setChangeCount(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 346
    iput-wide p1, p0, Landroid/database/QueryWrapper$QueryObject;->mChangeCount:J

    .line 347
    return-void
.end method

.method public setMemTableName(Ljava/lang/String;)V
    .locals 0
    .parameter "tableName"

    .prologue
    .line 342
    iput-object p1, p0, Landroid/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 338
    iput-object p1, p0, Landroid/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    .line 339
    return-void
.end method
