.class public Litectokyo/wiflus/service/ClientUtils;
.super Ljava/lang/Object;
.source "ClientUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLastSeperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 236
    move-object v0, p0

    .line 237
    .local v0, str:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 238
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    return-object v0
.end method

.method public static getExternalSdcardMountedAllName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 399
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mount"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 401
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    if-nez v1, :cond_2

    .line 425
    :goto_0
    if-eqz v2, :cond_1

    .line 426
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 433
    :cond_1
    :goto_1
    return-object v0

    .line 404
    :cond_2
    :try_start_3
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 405
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 406
    const-string v4, "/mnt/_externalsd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "/mnt/_external"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "/mnt/external_sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 407
    :cond_3
    const/4 v3, 0x1

    aget-object v0, v1, v3

    goto :goto_0

    .line 409
    :cond_4
    const-string v4, "/storage/_externalsd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "/storage/_External"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "/storage/external_sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 410
    :cond_5
    const/4 v3, 0x1

    aget-object v0, v1, v3

    goto :goto_0

    .line 412
    :cond_6
    const-string v4, "/mnt/sdcard/external_sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "/mnt/sdcard/_externalsd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 413
    :cond_7
    const/4 v3, 0x1

    aget-object v0, v1, v3

    goto :goto_0

    .line 415
    :cond_8
    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const/4 v3, 0x1

    aget-object v0, v1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 422
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 425
    if-eqz v2, :cond_1

    .line 426
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 428
    :catch_1
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 423
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 425
    :goto_3
    if-eqz v2, :cond_9

    .line 426
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 431
    :cond_9
    :goto_4
    throw v0

    .line 428
    :catch_2
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 428
    :catch_3
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 423
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 421
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static getHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    .line 50
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 51
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 52
    .local v3, messageDigest:[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 53
    .local v4, number:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, md5:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    .line 59
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #messageDigest:[B
    .end local v4           #number:Ljava/math/BigInteger;
    :goto_1
    return-object v2

    .line 55
    .restart local v1       #md:Ljava/security/MessageDigest;
    .restart local v2       #md5:Ljava/lang/String;
    .restart local v3       #messageDigest:[B
    .restart local v4       #number:Ljava/math/BigInteger;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 58
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #messageDigest:[B
    .end local v4           #number:Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getHostUniIdFromProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "password"

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 38
    .local v1, uid:J
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, appUid:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Litectokyo/wiflus/service/ClientUtils;->getHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method protected static getSessionId()J
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "key"

    .prologue
    .line 73
    const/4 v6, 0x0

    .line 75
    .local v6, sRet:Ljava/lang/String;
    const/4 v4, 0x0

    .line 76
    .local v4, ps:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 78
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "getprop"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 80
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 82
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v9, "\\n"

    invoke-virtual {v8, v9}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    .line 83
    .local v7, scanner:Ljava/util/Scanner;
    :cond_0
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    .line 100
    :goto_0
    if-eqz v1, :cond_1

    .line 102
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 105
    :goto_1
    const/4 v1, 0x0

    .line 109
    .end local v7           #scanner:Ljava/util/Scanner;
    :cond_1
    :goto_2
    const-string v8, "myLog"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSystemProperty key="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sRet="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v6

    .line 84
    .restart local v7       #scanner:Ljava/util/Scanner;
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, line:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, pattern:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    const-string v8, "["

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 88
    .local v5, sIdx:I
    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, eIdx:I
    if-ge v5, v0, :cond_0

    .line 90
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #eIdx:I
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #pattern:Ljava/lang/String;
    .end local v5           #sIdx:I
    .end local v7           #scanner:Ljava/util/Scanner;
    :catch_0
    move-exception v8

    .line 100
    if-eqz v1, :cond_1

    .line 102
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    .line 96
    :catchall_0
    move-exception v8

    .line 100
    if-eqz v1, :cond_3

    .line 102
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    :goto_4
    const/4 v1, 0x0

    .line 107
    :cond_3
    throw v8

    .line 103
    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_4

    .restart local v7       #scanner:Ljava/util/Scanner;
    :catch_3
    move-exception v8

    goto :goto_1
.end method

.method public static isExternalSdcardExist()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->getExternalSdcardMountedAllName()Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    .line 443
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    :try_start_0
    const-string v0, "tmp_"

    const-string v3, ""

    invoke-static {v0, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    const/4 v0, 0x1

    .line 449
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 450
    if-nez v2, :cond_0

    .line 451
    const-string v2, "myLog"

    const-string v3, "isExternalSd Exist file cannot deleted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 454
    :catch_0
    move-exception v0

    move v0, v1

    .line 455
    goto :goto_0

    :cond_1
    move v0, v1

    .line 458
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isInternalSdcardExist()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 469
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    :try_start_0
    const-string v2, "tmp_"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 475
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return v0

    .line 477
    :catch_0
    move-exception v0

    move v0, v1

    .line 478
    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isInternalSdcardExist(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 485
    .line 487
    new-instance v0, Ljava/io/File;

    const-string v2, "/storage/emulated/0/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    :try_start_0
    const-string v2, "tmp_"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 491
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x1

    .line 493
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return v0

    .line 495
    :catch_0
    move-exception v0

    move v0, v1

    .line 496
    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMultiChennelConcurrent()Z
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x1

    .line 158
    .local v0, bRet:Z
    const-string v2, "wlan.lge.concurrency"

    invoke-static {v2}, Litectokyo/wiflus/service/ClientUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 160
    const-string v2, "MCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const/4 v0, 0x1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static makeHostInfo(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 200
    .local v1, sRet:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v2, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_2

    .line 203
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_0
    :goto_1
    return-object v1

    .line 203
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, s:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 210
    .end local v0           #s:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method protected static splitHostInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "sHostInfo"

    .prologue
    .line 189
    const-string v1, "\t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, sInfo:[Ljava/lang/String;
    return-object v0
.end method
