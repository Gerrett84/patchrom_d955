.class Lcom/android/providers/telephony/MmsProvider$1;
.super Landroid/os/FileObserver;
.source "MmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/MmsProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MmsProvider;

.field final synthetic val$finalMsgId:J


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MmsProvider;Ljava/lang/String;IJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/android/providers/telephony/MmsProvider$1;->this$0:Lcom/android/providers/telephony/MmsProvider;

    iput-wide p4, p0, Lcom/android/providers/telephony/MmsProvider$1;->val$finalMsgId:J

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .parameter "event"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 1507
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1508
    .local v1, v:Landroid/content/ContentValues;
    const-string v2, "preview_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    const-string v4, "snippet"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string v4, "preview_data"

    move-object v2, v3

    check-cast v2, [B

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1511
    iget-object v2, p0, Lcom/android/providers/telephony/MmsProvider$1;->this$0:Lcom/android/providers/telephony/MmsProvider;

    #getter for: Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    invoke-static {v2}, Lcom/android/providers/telephony/MmsProvider;->access$000(Lcom/android/providers/telephony/MmsProvider;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "pdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/providers/telephony/MmsProvider$1;->val$finalMsgId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1514
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.MAKE_MMS_PREVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v0, i:Landroid/content/Intent;
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/android/providers/telephony/MmsProvider$1;->val$finalMsgId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1516
    iget-object v2, p0, Lcom/android/providers/telephony/MmsProvider$1;->this$0:Lcom/android/providers/telephony/MmsProvider;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1518
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider$1;->stopWatching()V

    .line 1519
    return-void
.end method
