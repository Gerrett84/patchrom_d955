.class public Lcom/android/providers/telephony/MmsSmsUtils;
.super Ljava/lang/Object;
.source "MmsSmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;
    }
.end annotation


# static fields
.field private static final BLOCKED_MSG_WHITELIST:[Ljava/lang/String;

.field private static final PRIVATE_MSG_WHITELIST:[Ljava/lang/String;

.field private static SPECIAL_INTERNATIONAL_CODE:[Ljava/lang/String;

.field public static SUPPORT_SYNC_ADAPTER:Z

.field private static TAG:Ljava/lang/String;

.field private static volatile sPreviousOpTime:J

.field private static sXiaomiAccountName:Ljava/lang/String;

.field private static sXiaomiAccountQueried:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    const-string v0, "MmsSmsUtils"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->TAG:Ljava/lang/String;

    .line 30
    sput-boolean v3, Lcom/android/providers/telephony/MmsSmsUtils;->SUPPORT_SYNC_ADAPTER:Z

    .line 33
    sput-boolean v2, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountQueried:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountName:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/providers/telephony/MmsSmsUtils;->sPreviousOpTime:J

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v2

    const-string v1, "com.miui.cloudservice"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->PRIVATE_MSG_WHITELIST:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v2

    const-string v1, "com.miui.antispam"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->BLOCKED_MSG_WHITELIST:[Ljava/lang/String;

    .line 473
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "60"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->SPECIAL_INTERNATIONAL_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static callerIsSyncAdapter(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 134
    sget-boolean v1, Lcom/android/providers/telephony/MmsSmsUtils;->SUPPORT_SYNC_ADAPTER:Z

    if-eqz v1, :cond_0

    const-string v1, "caller_is_syncadapter"

    invoke-static {p0, v1, v0}, Lcom/android/providers/telephony/MmsSmsUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static checkDuplication(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 139
    const-string v0, "check_duplication"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkPrivateMsgWhiteList(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 357
    sget-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->BLOCKED_MSG_WHITELIST:[Ljava/lang/String;

    invoke-static {p0, v0}, Lmiui/security/SecurityManager;->checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearCommonMarkers(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_thread_marker"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_private_address_marker"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 419
    return-void
.end method

.method public static clearOldMsgState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_upload_old_msg_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_upload_old_msg_accounts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    return-void
.end method

.method public static clearWildMsgState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_sync_wild_msg_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_sync_wild_numbers"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    return-void
.end method

.method private static compareSpecialIntlCode(Ljava/lang/String;)I
    .locals 3
    .parameter "str"

    .prologue
    .line 478
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/providers/telephony/MmsSmsUtils;->SPECIAL_INTERNATIONAL_CODE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 479
    sget-object v2, Lcom/android/providers/telephony/MmsSmsUtils;->SPECIAL_INTERNATIONAL_CODE:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 480
    .local v0, code:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 484
    .end local v0           #code:Ljava/lang/String;
    :goto_1
    return v2

    .line 478
    .restart local v0       #code:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0           #code:Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 208
    if-nez p0, :cond_0

    .line 209
    const-string p0, ""

    .line 211
    :cond_0
    if-nez p1, :cond_1

    .line 212
    const-string p1, ""

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GROUP BY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, ga:I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GROUP BY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, gb:I
    if-ne v0, v7, :cond_2

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 219
    :cond_2
    if-ne v1, v7, :cond_3

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 222
    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, la:Ljava/lang/String;
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, lb:Ljava/lang/String;
    const-string v2, ""

    .line 226
    .local v2, l:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 227
    move-object v2, v4

    .line 234
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .end local v2           #l:Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v2

    .line 228
    .restart local v2       #l:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 229
    move-object v2, v3

    goto :goto_0

    .line 231
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 237
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static deleteSpecialIntlCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 488
    move-object v2, p0

    .line 489
    .local v2, result:Ljava/lang/String;
    sget-boolean v5, Lmiui/os/Build;->IS_MY_BUILD:Z

    if-nez v5, :cond_0

    move-object v3, v2

    .line 515
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 492
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 493
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 494
    .local v0, ch:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 496
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsUtils;->compareSpecialIntlCode(Ljava/lang/String;)I

    move-result v1

    .line 498
    .local v1, offset:I
    if-ltz v1, :cond_1

    .line 499
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .end local v0           #ch:C
    .end local v1           #offset:I
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v3, v2

    .line 515
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0

    .line 502
    .end local v3           #result:Ljava/lang/String;
    .restart local v0       #ch:C
    .restart local v2       #result:Ljava/lang/String;
    :cond_2
    if-ne v0, v8, :cond_1

    .line 503
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_1

    .line 504
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 505
    if-ne v0, v8, :cond_1

    .line 506
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    .restart local v4       #s:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsUtils;->compareSpecialIntlCode(Ljava/lang/String;)I

    move-result v1

    .line 508
    .restart local v1       #offset:I
    if-ltz v1, :cond_1

    .line 509
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getAddressIdFromThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "threadId"

    .prologue
    const-wide/16 v0, -0x1

    .line 451
    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-wide v0

    .line 454
    :cond_1
    const-wide/16 v0, -0x1

    .line 455
    .local v0, addressId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SELECT recipient_ids FROM threads WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 457
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 459
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 463
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static getAddressList(Landroid/content/ContentValues;)Ljava/util/HashSet;
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v4, "addresses"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, addresses:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 176
    const-string v4, "address"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_0
    if-nez v2, :cond_2

    .line 179
    const/4 v1, 0x0

    .line 186
    :cond_1
    return-object v1

    .line 181
    :cond_2
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, addressArray:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v1, addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 184
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getLast7DigitRev(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 246
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 247
    .local v1, ch:C
    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 254
    .end local v1           #ch:C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 245
    .restart local v1       #ch:C
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized getPrevousOpTime()J
    .locals 3

    .prologue
    .line 338
    const-class v0, Lcom/android/providers/telephony/MmsSmsUtils;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/providers/telephony/MmsSmsUtils;->sPreviousOpTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSelectionByBlockedPermission(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 364
    sget-object v2, Lcom/android/providers/telephony/MmsSmsUtils;->BLOCKED_MSG_WHITELIST:[Ljava/lang/String;

    invoke-static {p1, v2}, Lmiui/security/SecurityManager;->checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v1

    .line 367
    :cond_1
    const-string v2, "blocked_flag"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, blockedFlag:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    const-string v1, "deleted=1 AND block_type>1"

    goto :goto_0

    .line 371
    :cond_2
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    const-string v1, "(deleted=1 AND block_type>1) OR deleted=0"

    goto :goto_0
.end method

.method public static getSelectionByPrivatePermission(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "context"
    .parameter "selection"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 342
    sget-object v1, Lcom/android/providers/telephony/MmsSmsUtils;->PRIVATE_MSG_WHITELIST:[Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/security/SecurityManager;->checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    const-string v1, "thread_id IN (select _id from threads where private_addr_ids is %s)"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NULL"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 353
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 345
    .restart local p2
    :cond_1
    const-string v1, "privacy_flag"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, privacyFlag:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    const-string v1, "thread_id IN (select _id from threads where private_addr_ids is %s)"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "not NULL"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 349
    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const-string v1, "thread_id IN (select _id from threads where private_addr_ids is %s)"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NULL"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "context"
    .parameter "values"

    .prologue
    const-wide/16 v2, 0x0

    .line 190
    const-string v4, "thread_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 191
    .local v1, threadId:Ljava/lang/Long;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 198
    :cond_0
    :goto_0
    return-wide v2

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->getAddressList(Landroid/content/ContentValues;)Ljava/util/HashSet;

    move-result-object v0

    .line 195
    .local v0, addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getThreadIdByAddr(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {p0, v0}, Lcom/android/providers/telephony/MmsSmsUtils;->getThreadId(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getXiaomiAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 317
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountQueried:Z

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountQueried:Z

    .line 319
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsUtils;->queryXiaomiAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountName:Ljava/lang/String;

    .line 321
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public static hasBlockedFlag(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 379
    const-string v1, "blocked_flag"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, blockedFlag:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x1

    .line 385
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasXiaomiAccount(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 325
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsUtils;->getXiaomiAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static longCollectionToArray(Ljava/util/Collection;)[J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v0, v6, [J

    .line 300
    .local v0, array:[J
    const/4 v1, 0x0

    .line 301
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 302
    .local v4, value:J
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-wide v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 304
    .end local v4           #value:J
    :cond_0
    return-object v0
.end method

.method public static makeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZJ)V
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "remake"
    .parameter "mmsId"

    .prologue
    const/4 v3, 0x0

    .line 258
    if-eqz p2, :cond_0

    .line 259
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v1, v:Landroid/content/ContentValues;
    const-string v2, "preview_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v4, "snippet"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v4, "preview_data"

    move-object v2, v3

    check-cast v2, [B

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 263
    const-string v2, "pdu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    .end local v1           #v:Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.MAKE_MMS_PREVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, i:Landroid/content/Intent;
    const-string v2, "_id"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    return-void
.end method

.method public static makeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZLjava/util/Collection;)V
    .locals 8
    .parameter "context"
    .parameter "db"
    .parameter "remake"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, mmsIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 272
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    :goto_0
    return-void

    .line 276
    :cond_0
    if-eqz p2, :cond_2

    .line 277
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v4, v:Landroid/content/ContentValues;
    const-string v5, "preview_type"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v7, "snippet"

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v5, "preview_data"

    check-cast v6, [B

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 282
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 284
    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 285
    .local v2, id:J
    const-string v5, "pdu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 289
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:J
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 287
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 293
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/content/ContentValues;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.MAKE_MMS_PREVIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, i:Landroid/content/Intent;
    const-string v5, "_id"

    invoke-static {p3}, Lcom/android/providers/telephony/MmsSmsUtils;->longCollectionToArray(Ljava/util/Collection;)[J

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .parameter "query"
    .parameter "index"
    .parameter "value"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 151
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public static msgIdToThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 11
    .parameter "db"
    .parameter "msgId"

    .prologue
    .line 156
    const/4 v8, 0x0

    .line 158
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "thread_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 166
    .local v9, threadId:J
    if-eqz v8, :cond_0

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    .end local v9           #threadId:J
    :cond_0
    :goto_0
    return-wide v9

    .line 166
    :cond_1
    if-eqz v8, :cond_2

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_2
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 10
    .parameter "db"
    .parameter "table"
    .parameter "longColumn"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v8, 0x0

    .line 65
    .local v8, c:Landroid/database/Cursor;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 67
    .local v9, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    if-eqz v8, :cond_1

    .line 70
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 71
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 76
    :cond_1
    if-eqz v8, :cond_2

    .line 77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2
    return-object v9
.end method

.method private static queryXiaomiAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 308
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 309
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 312
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "uri"
    .parameter "parameter"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 129
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 122
    .restart local p2
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 129
    const-string v4, "=0"

    invoke-static {v1, v0, v4, v3}, Lcom/android/providers/telephony/MmsSmsUtils;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "=false"

    invoke-static {v1, v0, v4, v2}, Lcom/android/providers/telephony/MmsSmsUtils;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move p2, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static removeSpaceForAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 422
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 425
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 426
    .local v1, c:C
    const/16 v3, 0x20

    if-le v1, v3, :cond_0

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v1           #c:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 432
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local p0
    :cond_2
    return-object p0
.end method

.method public static removeSpaceForAddressValue(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "v"
    .parameter "key"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsUtils;->removeSpaceForAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, trimmedValue:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v0           #trimmedValue:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 85
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v4, "com.xiaomi"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 86
    .local v0, accounts:[Landroid/accounts/Account;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v2, b:Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 88
    aget-object v4, v0, v3

    const-string v5, "sms"

    invoke-static {v4, v5, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public static declared-synchronized setPreviousOpTime()V
    .locals 4

    .prologue
    .line 334
    const-class v1, Lcom/android/providers/telephony/MmsSmsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/providers/telephony/MmsSmsUtils;->sPreviousOpTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit v1

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setXiaomiAccountName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 329
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountQueried:Z

    .line 330
    sput-object p0, Lcom/android/providers/telephony/MmsSmsUtils;->sXiaomiAccountName:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public static suppressMakingMmsPreview(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 144
    sget-boolean v1, Lcom/android/providers/telephony/MmsSmsUtils;->SUPPORT_SYNC_ADAPTER:Z

    if-eqz v1, :cond_0

    const-string v1, "supress_making_mms_preview"

    invoke-static {p0, v1, v0}, Lcom/android/providers/telephony/MmsSmsUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
