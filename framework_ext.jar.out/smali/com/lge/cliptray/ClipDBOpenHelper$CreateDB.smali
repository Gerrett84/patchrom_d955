.class public final Lcom/lge/cliptray/ClipDBOpenHelper$CreateDB;
.super Ljava/lang/Object;
.source "ClipDBOpenHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cliptray/ClipDBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateDB"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_TYPE:Ljava/lang/String; = "data_type"

.field public static final GLOBAL_POS:Ljava/lang/String; = "global_position"

.field public static final ITEM_NUM:Ljava/lang/String; = "data_num"

.field public static final LOCAL_POS:Ljava/lang/String; = "local_position"

.field public static final _CREATE:Ljava/lang/String; = "create table clipdb(_id integer primary key autoincrement, global_position integer not null ,local_position integer not null ,data_num integer not null ,data_type text not null ,data text not null );"

.field public static final _CREATE_INDEX:Ljava/lang/String; = "CREATE INDEX global_position_index ON clipdb(global_position);"

.field public static final _INDEXNAME:Ljava/lang/String; = "global_position_index"

.field public static final _TABLENAME:Ljava/lang/String; = "clipdb"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
