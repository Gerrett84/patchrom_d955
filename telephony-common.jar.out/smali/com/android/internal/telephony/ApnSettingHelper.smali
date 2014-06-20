.class public Lcom/android/internal/telephony/ApnSettingHelper;
.super Ljava/lang/Object;
.source "ApnSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;
    }
.end annotation


# static fields
.field private static final APN_TABLE_URI:Landroid/net/Uri; = null

.field private static final NUMBER_OF_APN_AT_CMD_PARAM:I = 0x7

.field private static final VZW_MCCMNC:Ljava/lang/String; = "311480"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private apnMcc:Ljava/lang/String;

.field private apnMnc:Ljava/lang/String;

.field private apnNumeric:Ljava/lang/String;

.field private apnb:Ljava/lang/String;

.field private apncl:Ljava/lang/String;

.field private apnclName:Ljava/lang/String;

.field private apned:Ljava/lang/String;

.field private apnni:Ljava/lang/String;

.field private apntime:Ljava/lang/String;

.field private apntypeipv4v6:Ljava/lang/String;

.field private isSimRead:I

.field private isVZW:I

.field private isValidate:I

.field private wapn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sput-object p1, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    .line 109
    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    .line 110
    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isVZW:I

    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/ApnSettingHelper;->setMccMnc()I

    .line 118
    return-void
.end method

.method private setMccMnc()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 295
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 299
    :cond_0
    const-string v0, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettingHelper::setMccMnc] couldn\'t get the numeric from system. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    move v0, v1

    .line 315
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMcc:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMnc:Ljava/lang/String;

    .line 310
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettingHelper::setMccMnc] apnNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnMnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    goto :goto_0
.end method


# virtual methods
.method public apnQuery()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 132
    .local v8, numberOfApns:I
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of APNs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 138
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    .end local v7           #i:I
    .end local v8           #numberOfApns:I
    :cond_2
    return-object v6
.end method

.method protected checkValidation([Ljava/lang/String;)I
    .locals 13
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, tempWapn:I
    const/4 v5, 0x0

    .line 174
    .local v5, tempApncl:I
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->wapn:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 175
    if-nez v7, :cond_0

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "WAPN is zero. No action for this AT command."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 178
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apncl:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 179
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnclName(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnclName:Ljava/lang/String;

    .line 211
    const/4 v8, 0x4

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "IP"

    aput-object v8, v1, v11

    const-string v8, "IPv4"

    aput-object v8, v1, v10

    const-string v8, "IPv6"

    aput-object v8, v1, v12

    const/4 v8, 0x3

    const-string v9, "IPv4v6"

    aput-object v9, v1, v8

    .line 212
    .local v1, availableApntype:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 214
    .local v3, isValidApnType:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v1

    if-ge v2, v8, :cond_2

    .line 215
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    .line 214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_2
    if-nez v3, :cond_3

    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APNTYPE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 219
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    const-string v9, "IPv4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "IP"

    iput-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    .line 220
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    .line 236
    new-array v0, v12, [Ljava/lang/String;

    const-string v8, "Enabled"

    aput-object v8, v0, v11

    const-string v8, "Disabled"

    aput-object v8, v0, v10

    .line 237
    .local v0, availableApned:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 239
    .local v4, isValidApned:I
    const/4 v2, 0x0

    :goto_1
    array-length v8, v0

    if-ge v2, v8, :cond_6

    .line 240
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    const/4 v4, 0x1

    .line 239
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    :cond_6
    if-nez v4, :cond_7

    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APNED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 246
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntime:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 248
    .local v6, tempApntime:I
    return v10
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    const-string v0, "TEST"

    .line 506
    .local v0, abc:Ljava/lang/String;
    return-object v0
.end method

.method public getApnClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 375
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ims"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "admin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "default"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "vzwapp,mms,cbs"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "vzw800"

    aput-object v4, v2, v3

    .line 378
    .local v2, type:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 380
    .local v1, nApnType:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 381
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getApnb(I)Ljava/lang/String;
    .locals 1
    .parameter "apnB"

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 413
    const-string v0, "Unspecified"

    :goto_0
    return-object v0

    .line 407
    :pswitch_0
    const-string v0, "LTE"

    goto :goto_0

    .line 410
    :pswitch_1
    const-string v0, "EHRPD"

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApnclName(I)Ljava/lang/String;
    .locals 5
    .parameter "apnclass"

    .prologue
    .line 351
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ims"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "admin"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "default"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "vzwapp,mms,cbs"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "vzw800"

    aput-object v3, v1, v2

    .line 354
    .local v1, type:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, p1, :cond_0

    if-gtz p1, :cond_0

    .line 356
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Coulnd\'t convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v0, "NoneAPN"

    .line 364
    .local v0, returnValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 361
    .end local v0           #returnValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    .restart local v0       #returnValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public getApnclName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "apnclass"

    .prologue
    .line 330
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, nApnClass:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnclName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 340
    .end local v1           #nApnClass:I
    .local v2, type:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 334
    .end local v2           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VZWAPN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Coulnd\'t convert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Integer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v2, "none"

    .restart local v2       #type:Ljava/lang/String;
    goto :goto_0
.end method

.method public getApned(I)Ljava/lang/String;
    .locals 1
    .parameter "apnEd"

    .prologue
    .line 393
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "Enabled"

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Disabled"

    goto :goto_0
.end method

.method public set(Ljava/lang/String;)V
    .locals 6
    .parameter "atCmdRequest"

    .prologue
    const/4 v5, 0x0

    .line 259
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string args = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v2, "(\\r|\\n)"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, args:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 267
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT command Param Number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput v5, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    .line 289
    :goto_0
    return-void

    .line 274
    :cond_0
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->wapn:Ljava/lang/String;

    .line 275
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apncl:Ljava/lang/String;

    .line 276
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnni:Ljava/lang/String;

    .line 277
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    .line 278
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnb:Ljava/lang/String;

    .line 279
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    .line 280
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntime:Ljava/lang/String;

    .line 284
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ApnSettingHelper;->checkValidation([Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN AT CMD PARAM IS NOT RIGHT. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput v5, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .prologue
    .line 512
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 513
    .local v14, apns:Ljava/lang/String;
    const-string v7, ", "

    .line 515
    .local v7, SEPERATOR:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 516
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettingHelper::toString] sim information is not valid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v1, "SIM is not initialized"

    .line 556
    :goto_0
    return-object v1

    .line 521
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ApnSettingHelper;->apnQuery()Landroid/database/Cursor;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, where:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 527
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 528
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 529
    .local v16, numberOfApns:I
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of APNs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 536
    :cond_1
    const/4 v1, 0x5

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 537
    .local v10, apnName:Ljava/lang/String;
    const/16 v1, 0xf

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 538
    .local v11, apnType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 539
    .local v13, apncl:Ljava/lang/String;
    const/16 v1, 0x14

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->getApned(I)Ljava/lang/String;

    move-result-object v9

    .line 540
    .local v9, apnEd:Ljava/lang/String;
    const/16 v1, 0x18

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnb(I)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, apnB:Ljava/lang/String;
    const/16 v1, 0x11

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 543
    .local v12, apnTypeIpv4v6:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 550
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    .end local v8           #apnB:Ljava/lang/String;
    .end local v9           #apnEd:Ljava/lang/String;
    .end local v10           #apnName:Ljava/lang/String;
    .end local v11           #apnType:Ljava/lang/String;
    .end local v12           #apnTypeIpv4v6:Ljava/lang/String;
    .end local v13           #apncl:Ljava/lang/String;
    .end local v16           #numberOfApns:I
    :cond_2
    const-string v1, "VZWAPN"

    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v14

    .line 556
    goto/16 :goto_0
.end method

.method public update()I
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 424
    const/4 v10, 0x0

    .line 425
    .local v10, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and type =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnclName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, where:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    if-eq v1, v4, :cond_1

    .line 429
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ApnSettingHelper::update] sim information is not valid. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    if-eqz v1, :cond_0

    .line 436
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnclName:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnb:Ljava/lang/String;

    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 441
    const-string v1, "bearer"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    :goto_1
    const-string v1, "mcc"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMcc:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "mnc"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMnc:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v1, "numeric"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "current"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v1, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v1, "roaming_protocol"

    const-string v2, "IPV4V6"

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnni:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "apn"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnni:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    const-string v2, "Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 459
    const-string v0, "carrier_enabled"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    :goto_2
    const/4 v6, 0x0

    .line 465
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 468
    .local v9, numOfResult:I
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 473
    :goto_3
    if-eqz v6, :cond_2

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 478
    :cond_2
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz v6, :cond_7

    if-eqz v9, :cond_7

    .line 482
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 483
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated APN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnSettingHelper;->apnQuery()Landroid/database/Cursor;

    .line 497
    const/4 v10, 0x1

    move v0, v10

    .line 499
    goto/16 :goto_0

    .line 442
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #numOfResult:I
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnb:Ljava/lang/String;

    const-string v2, "EHRPD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 443
    const-string v1, "bearer"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 445
    :cond_5
    const-string v1, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 461
    :cond_6
    const-string v1, "carrier_enabled"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 469
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #numOfResult:I
    :catch_0
    move-exception v7

    .line 470
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception.SQL + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 487
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 489
    .local v8, newUrl:Landroid/net/Uri;
    if-eqz v8, :cond_3

    .line 490
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Added APN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
