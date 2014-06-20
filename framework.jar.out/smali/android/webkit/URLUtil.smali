.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final CONTENT_BASE:Ljava/lang/String; = "content:"

.field private static final CONTENT_DISPOSITION_INLINE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final COUNTRY_CODE:Ljava/lang/String; = null

.field private static final DEFAULT_ENCODING_TYPE:Ljava/lang/String; = "ISO-8859-1"

.field private static final DEFAULT_ENCODING_TYPE_JAVA:Ljava/lang/String; = "UTF-8"

.field private static final ENCODING_TYPE_UNKNOWN:Ljava/lang/String; = "unknown-encoding type"

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final KR_ENCODINGTYPES:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NOKR_ENCODINGTYPES:[Ljava/lang/String; = null

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EUC-KR"

    aput-object v1, v0, v4

    const-string v1, "UTF-8"

    aput-object v1, v0, v5

    const-string v1, "UTF-16"

    aput-object v1, v0, v3

    const-string v1, "US-ASCII"

    aput-object v1, v0, v6

    const-string v1, "UTF-16BE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ISO-2022-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/URLUtil;->KR_ENCODINGTYPES:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v0, v4

    const-string v1, "EUC-KR"

    aput-object v1, v0, v5

    const-string v1, "UTF-16"

    aput-object v1, v0, v3

    const-string v1, "US-ASCII"

    aput-object v1, v0, v6

    const-string v1, "UTF-16BE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ISO-2022-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/URLUtil;->NOKR_ENCODINGTYPES:[Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    .line 437
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 442
    const-string v0, "inline;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_INLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inQuery"
    .parameter "template"
    .parameter "queryPlaceHolder"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, placeHolderIndex:I
    if-gez v2, :cond_0

    .line 131
    :goto_0
    return-object v4

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, query:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 124
    .end local v3           #query:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 135
    array-length v6, p0

    if-nez v6, :cond_0

    .line 136
    new-array v2, v8, [B

    .line 158
    :goto_0
    return-object v2

    .line 140
    :cond_0
    array-length v6, p0

    new-array v5, v6, [B

    .line 142
    .local v5, tempData:[B
    const/4 v3, 0x0

    .line 143
    .local v3, tempCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_3

    .line 144
    aget-byte v0, p0, v1

    .line 145
    .local v0, b:B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_1

    .line 146
    array-length v6, p0

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 147
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v0, v6

    .line 149
    add-int/lit8 v1, v1, 0x2

    .line 154
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #tempCount:I
    .local v4, tempCount:I
    aput-byte v0, v5, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #tempCount:I
    .restart local v3       #tempCount:I
    goto :goto_1

    .line 151
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid format"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 156
    .end local v0           #b:B
    :cond_3
    new-array v2, v3, [B

    .line 157
    .local v2, retData:[B
    invoke-static {v5, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static getEncodingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 484
    const/4 v4, 0x0

    .line 486
    .local v4, midStr:Ljava/lang/String;
    sget-object v6, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 487
    sget-object v0, Landroid/webkit/URLUtil;->KR_ENCODINGTYPES:[Ljava/lang/String;

    .line 492
    .local v0, ENCODINGTYPES:[Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    move-object v5, v4

    .end local v4           #midStr:Ljava/lang/String;
    .local v5, midStr:Ljava/lang/String;
    :goto_1
    :try_start_0
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 493
    new-instance v4, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aget-object v7, v0, v3

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v5           #midStr:Ljava/lang/String;
    .restart local v4       #midStr:Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 496
    .local v1, cmpStr:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 497
    aget-object v6, v0, v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    .end local v1           #cmpStr:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 489
    .end local v0           #ENCODINGTYPES:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    sget-object v0, Landroid/webkit/URLUtil;->NOKR_ENCODINGTYPES:[Ljava/lang/String;

    .restart local v0       #ENCODINGTYPES:[Ljava/lang/String;
    goto :goto_0

    .line 492
    .restart local v1       #cmpStr:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #midStr:Ljava/lang/String;
    .restart local v5       #midStr:Ljava/lang/String;
    goto :goto_1

    .end local v1           #cmpStr:Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 503
    .end local v5           #midStr:Ljava/lang/String;
    .restart local v4       #midStr:Ljava/lang/String;
    :goto_3
    const-string/jumbo v6, "unknown-encoding type"

    goto :goto_2

    .line 500
    .end local v4           #midStr:Ljava/lang/String;
    .restart local v5       #midStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 501
    .end local v5           #midStr:Ljava/lang/String;
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #midStr:Ljava/lang/String;
    :goto_4
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 500
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method private static getURLEncodingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    .line 508
    sget-object v5, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v6, "KR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    sget-object v0, Landroid/webkit/URLUtil;->KR_ENCODINGTYPES:[Ljava/lang/String;

    .line 514
    .local v0, ENCODINGTYPES:[Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, nonSpaceUrl:Ljava/lang/String;
    const-string v5, "%20"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 516
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 517
    aget-object v5, v0, v3

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, cmp:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 519
    aget-object v5, v0, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v1           #cmp:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #nonSpaceUrl:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 511
    .end local v0           #ENCODINGTYPES:[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/webkit/URLUtil;->NOKR_ENCODINGTYPES:[Ljava/lang/String;

    .restart local v0       #ENCODINGTYPES:[Ljava/lang/String;
    goto :goto_0

    .line 516
    .restart local v1       #cmp:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #nonSpaceUrl:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 523
    .end local v1           #cmp:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #nonSpaceUrl:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 524
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 526
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v5, "UTF-8"

    goto :goto_2
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    .line 328
    const/4 v6, 0x0

    .line 329
    .local v6, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 332
    .local v5, extension:Ljava/lang/String;
    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    .line 333
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    if-eqz v6, :cond_0

    .line 335
    const/16 v11, 0x2f

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 336
    .local v7, index:I
    if-lez v7, :cond_0

    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 342
    .end local v7           #index:I
    :cond_0
    sget-object v11, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v12, "KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v6, :cond_5

    .line 344
    :try_start_0
    invoke-static {v6}, Landroid/webkit/URLUtil;->getEncodingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, enType:Ljava/lang/String;
    const-string/jumbo v11, "unknown-encoding type"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 346
    new-instance v11, Ljava/lang/String;

    const-string v12, "ISO-8859-1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 379
    .end local v4           #enType:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v11, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v12, "KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v6, :cond_8

    .line 381
    :try_start_1
    invoke-static {v6}, Landroid/webkit/URLUtil;->getURLEncodingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 394
    :cond_2
    :goto_1
    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 395
    .local v1, dotIndex:I
    if-gez v1, :cond_b

    .line 396
    if-eqz p2, :cond_3

    .line 397
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    if-eqz v5, :cond_3

    .line 399
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    :cond_3
    if-nez v5, :cond_4

    .line 403
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "text/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 404
    const-string/jumbo v11, "text/html"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 405
    const-string v5, ".html"

    .line 433
    :cond_4
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 347
    .end local v1           #dotIndex:I
    :catch_0
    move-exception v3

    .line 348
    .local v3, e2:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v3           #e2:Ljava/io/UnsupportedEncodingException;
    :cond_5
    if-nez v6, :cond_1

    .line 357
    sget-object v11, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v12, "KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 358
    move-object v0, p0

    .line 362
    .local v0, decodedUrl:Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_1

    .line 363
    const/16 v11, 0x3f

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 365
    .local v9, queryIndex:I
    if-lez v9, :cond_6

    .line 366
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_6
    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 369
    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 370
    .restart local v7       #index:I
    if-lez v7, :cond_1

    .line 371
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 360
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v7           #index:I
    .end local v9           #queryIndex:I
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #decodedUrl:Ljava/lang/String;
    goto :goto_3

    .line 382
    .end local v0           #decodedUrl:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 383
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 388
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_8
    if-nez v6, :cond_2

    .line 389
    const-string v6, "downloadfile"

    goto/16 :goto_1

    .line 407
    .restart local v1       #dotIndex:I
    :cond_9
    const-string v5, ".txt"

    goto :goto_2

    .line 410
    :cond_a
    const-string v5, ".bin"

    goto :goto_2

    .line 414
    :cond_b
    if-eqz p2, :cond_c

    .line 417
    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 418
    .local v8, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, typeFromExt:Ljava/lang/String;
    if-eqz v10, :cond_c

    invoke-virtual {v10, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 421
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 422
    if-eqz v5, :cond_c

    .line 423
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .end local v8           #lastDotIndex:I
    .end local v10           #typeFromExt:Ljava/lang/String;
    :cond_c
    if-nez v5, :cond_d

    .line 428
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 430
    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inUrl"

    .prologue
    .line 67
    move-object v1, p0

    .line 72
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 107
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 73
    .restart local p0
    :cond_1
    const-string v3, "about:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    const-string v3, "data:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const-string v3, "file:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    const-string/jumbo v3, "javascript:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rtsp:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 93
    :cond_2
    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v2, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 107
    :cond_3
    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 94
    .end local v2           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/net/ParseException;
    move-object p0, v1

    .line 99
    goto :goto_0
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 233
    if-eqz p0, :cond_0

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 199
    if-eqz p0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 282
    if-eqz p0, :cond_0

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    if-eqz p0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 240
    if-eqz p0, :cond_0

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 224
    if-eqz p0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 247
    if-eqz p0, :cond_0

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 272
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 207
    if-eqz p0, :cond_0

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 289
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "contentDisposition"

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, contentDispositionEx:Ljava/lang/String;
    :try_start_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    sget-object v2, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 468
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    .end local v1           #m:Ljava/util/regex/Matcher;
    :goto_1
    return-object v2

    .line 464
    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 472
    .restart local v1       #m:Ljava/util/regex/Matcher;
    :cond_1
    sget-object v2, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_INLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 476
    .end local v1           #m:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 479
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static parseHex(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 188
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 190
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 307
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 308
    .local v0, anchorIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 311
    .end local p0
    :cond_0
    return-object p0
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/16 v5, 0x25

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 166
    .local v0, count:I
    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v3

    .line 170
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 171
    .local v2, index:I
    :goto_1
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 172
    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_0

    .line 174
    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 175
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 184
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
