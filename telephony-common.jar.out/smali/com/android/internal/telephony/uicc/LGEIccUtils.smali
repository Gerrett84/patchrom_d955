.class public Lcom/android/internal/telephony/uicc/LGEIccUtils;
.super Ljava/lang/Object;
.source "LGEIccUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;,
        Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    }
.end annotation


# static fields
.field private static final FPLMN_ENTRY_SIZE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "LGEIccUtils"

.field private static final PLMNWACT_ENTRY_MAX:I = 0x3c

.field private static final PLMNWACT_ENTRY_SIZE:I = 0x5

.field private static final SIZE_OF_SMSP_NONE_ALPHA_ID:I = 0x1c

.field private static final SMSP_ADDRESS_SIZE:I = 0xc

.field private static final mCountry:Ljava/lang/String;

.field private static final mOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/LGEIccUtils;->mOperator:Ljava/lang/String;

    .line 18
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/LGEIccUtils;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method public static decodeMdn([B)Ljava/lang/String;
    .locals 8
    .parameter "mMdn"

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    .line 569
    const-string v2, ""

    .line 571
    .local v2, mEFMdn:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-byte v5, p0, v5

    if-gtz v5, :cond_0

    .line 572
    const/4 v5, 0x0

    .line 597
    :goto_0
    return-object v5

    .line 574
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 575
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/16 v5, 0x11

    if-ge v1, v5, :cond_2

    .line 579
    aget-byte v5, p0, v1

    and-int/lit8 v4, v5, 0xf

    .line 580
    .local v4, v:I
    if-ne v4, v7, :cond_1

    const/4 v4, 0x0

    .line 581
    :cond_1
    if-le v4, v6, :cond_3

    .line 590
    .end local v4           #v:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    const-string v5, "LGEIccUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEFMdn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #i:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    :goto_2
    move-object v5, v2

    .line 597
    goto :goto_0

    .line 582
    .restart local v1       #i:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .restart local v4       #v:I
    :cond_3
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 585
    if-ne v4, v7, :cond_4

    const/4 v4, 0x0

    .line 586
    :cond_4
    if-gt v4, v6, :cond_2

    .line 587
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    .end local v1           #i:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .end local v4           #v:I
    :catch_0
    move-exception v0

    .line 594
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "LGEIccUtils"

    const-string v6, "readEF_Mdn() RuntimeException  occur"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static encodeMdn(Ljava/lang/String;)[B
    .locals 7
    .parameter "mdn"

    .prologue
    .line 601
    const/4 v2, 0x0

    .line 602
    .local v2, i:I
    const/4 v3, 0x0

    .line 603
    .local v3, rawData:[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 606
    .local v4, sz:I
    const/16 v5, 0x30

    const/16 v6, 0x41

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 608
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 611
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v2, v5, :cond_2

    .line 616
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_0

    .line 617
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 618
    :cond_0
    if-lt v2, v4, :cond_1

    .line 619
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 633
    .end local v0           #buf:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 634
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v5, "LGEIccUtils"

    const-string v6, "writeEF_Mdn() RuntimeException  occur"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v3

    .line 621
    .restart local v0       #buf:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 626
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 629
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 631
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method public static getCdmaUsimOperator()Z
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, retValue:Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 39
    :cond_1
    return v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/uicc/LGEIccUtils;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/uicc/LGEIccUtils;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method private getPLMNfromSimData([B)Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    .locals 14
    .parameter "SimData"

    .prologue
    const/4 v11, -0x1

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 101
    :cond_0
    aget-byte v7, p1, v12

    .line 102
    .local v7, plmn1:B
    aget-byte v8, p1, v13

    .line 103
    .local v8, plmn2:B
    const/4 v10, 0x2

    aget-byte v9, p1, v10

    .line 105
    .local v9, plmn3:B
    new-instance v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;-><init>(Lcom/android/internal/telephony/uicc/LGEIccUtils;)V

    .line 107
    .local v0, bufPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    const/4 v6, 0x0

    .local v6, mnc_digit_3:I
    move v5, v6

    .local v5, mnc_digit_2:I
    move v4, v6

    .line 109
    .local v4, mnc_digit_1:I
    if-ne v7, v11, :cond_1

    if-ne v8, v11, :cond_1

    if-ne v9, v11, :cond_1

    .line 111
    iput v12, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mcc:I

    .line 112
    iput v12, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mnc:I

    .line 113
    iput-boolean v13, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 139
    :goto_1
    array-length v10, p1

    const/4 v11, 0x5

    if-ne v10, v11, :cond_3

    .line 141
    iget-object v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x3

    aget-byte v11, p1, v11

    aput-byte v11, v10, v12

    .line 142
    iget-object v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x4

    aget-byte v11, p1, v11

    aput-byte v11, v10, v13

    .line 150
    :goto_2
    const-string v10, "LGEIccUtils"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->logPLMNtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    and-int/lit8 v1, v7, 0xf

    .line 118
    .local v1, mcc_digit_1:I
    shr-int/lit8 v10, v7, 0x4

    and-int/lit8 v2, v10, 0xf

    .line 119
    .local v2, mcc_digit_2:I
    and-int/lit8 v3, v8, 0xf

    .line 121
    .local v3, mcc_digit_3:I
    and-int/lit8 v4, v9, 0xf

    .line 122
    shr-int/lit8 v10, v9, 0x4

    and-int/lit8 v5, v10, 0xf

    .line 123
    shr-int/lit8 v10, v8, 0x4

    and-int/lit8 v6, v10, 0xf

    .line 125
    mul-int/lit8 v10, v1, 0x64

    mul-int/lit8 v11, v2, 0xa

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    iput v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mcc:I

    .line 127
    const/16 v10, 0xf

    if-ne v6, v10, :cond_2

    .line 129
    iput-boolean v12, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 130
    mul-int/lit8 v10, v4, 0xa

    add-int/2addr v10, v5

    iput v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mnc:I

    goto :goto_1

    .line 134
    :cond_2
    iput-boolean v13, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 135
    mul-int/lit8 v10, v4, 0x64

    mul-int/lit8 v11, v5, 0xa

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    iput v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mnc:I

    goto :goto_1

    .line 146
    .end local v1           #mcc_digit_1:I
    .end local v2           #mcc_digit_2:I
    .end local v3           #mcc_digit_3:I
    :cond_3
    iget-object v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    aput-byte v12, v10, v12

    .line 147
    iget-object v10, v0, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    aput-byte v12, v10, v13

    goto :goto_2
.end method

.method public static subarray([BII)[B
    .locals 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    if-gt p1, p2, :cond_0

    array-length v3, p0

    if-ge v3, p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 63
    :cond_1
    return-object v0

    .line 58
    :cond_2
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 59
    .local v0, arrayBuf:[B
    move v1, p1

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 61
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 59
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public SMSPtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;)Ljava/lang/String;
    .locals 2
    .parameter "smspData"

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alphaID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ParamIndi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Dest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Center:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ProtoclID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ProtoclID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->CodeScheme:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Period:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ValidPeriod:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public analyzeFPLMN([B)Ljava/util/ArrayList;
    .locals 9
    .parameter "SimData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3c

    const/4 v8, 0x0

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v3, mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    if-nez p1, :cond_1

    .line 272
    const/4 v3, 0x0

    .line 292
    .end local v3           #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    :cond_0
    return-object v3

    .line 274
    .restart local v3       #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    :cond_1
    const/4 v6, 0x5

    new-array v0, v6, [B

    .line 276
    .local v0, PLMNdata:[B
    array-length v6, p1

    div-int/lit8 v6, v6, 0x3

    if-lt v6, v4, :cond_3

    .line 279
    .local v4, max_loop_count:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 281
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v6, v7}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->subarray([BII)[B

    move-result-object v5

    .line 283
    .local v5, subSimData:[B
    const/4 v6, 0x3

    invoke-static {v5, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getPLMNfromSimData([B)Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;

    move-result-object v1

    .line 286
    .local v1, TempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v1           #TempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    .end local v2           #i:I
    .end local v4           #max_loop_count:I
    .end local v5           #subSimData:[B
    :cond_3
    array-length v6, p1

    div-int/lit8 v4, v6, 0x3

    goto :goto_0
.end method

.method public analyzePLMN([B)Ljava/util/ArrayList;
    .locals 7
    .parameter "SimData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x3c

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    if-nez p1, :cond_1

    .line 74
    const/4 v2, 0x0

    .line 89
    .end local v2           #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    :cond_0
    return-object v2

    .line 76
    .restart local v2       #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    :cond_1
    array-length v5, p1

    div-int/lit8 v5, v5, 0x5

    if-lt v5, v3, :cond_3

    .line 78
    .local v3, max_loop_count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 80
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->subarray([BII)[B

    move-result-object v4

    .line 81
    .local v4, subSimData:[B
    if-nez v4, :cond_4

    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v1           #i:I
    .end local v3           #max_loop_count:I
    .end local v4           #subSimData:[B
    :cond_3
    array-length v5, p1

    div-int/lit8 v3, v5, 0x5

    goto :goto_0

    .line 83
    .restart local v1       #i:I
    .restart local v3       #max_loop_count:I
    .restart local v4       #subSimData:[B
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getPLMNfromSimData([B)Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;

    move-result-object v0

    .line 84
    .local v0, TempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public analyzeSMSP([B)Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;
    .locals 8
    .parameter "SimData"

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 378
    new-instance v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;-><init>(Lcom/android/internal/telephony/uicc/LGEIccUtils;)V

    .line 380
    .local v1, TempSMSP:Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 423
    .end local v1           #TempSMSP:Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;
    :goto_0
    return-object v1

    .line 382
    .restart local v1       #TempSMSP:Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;
    :cond_0
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1c

    .line 383
    .local v0, NoneAlphaStartPoint:I
    const/4 v2, 0x0

    .line 385
    .local v2, arrayPoint:I
    if-lez v0, :cond_1

    .line 387
    add-int/lit8 v4, v0, -0x1

    invoke-static {p1, v2, v4}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->subarray([BII)[B

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    .line 388
    move v2, v0

    .line 391
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .local v3, arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    .line 393
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    invoke-static {p1, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    add-int/lit8 v2, v3, 0xc

    .line 396
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    iget-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 399
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    invoke-static {p1, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 403
    iget-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 405
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v3       #arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ProtoclID:B

    move v2, v3

    .line 411
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    :goto_1
    iget-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 413
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v3       #arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->CodeScheme:B

    move v2, v3

    .line 419
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v3       #arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ValidPeriod:B

    .line 421
    const-string v4, "LGEIccUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->SMSPtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public composeFPLMN(Ljava/util/ArrayList;)[B
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, FplmnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    const/16 v12, 0x3e7

    const/4 v11, -0x1

    .line 299
    const/4 v5, 0x0

    .line 302
    .local v5, mnc_includes_pcs_digit:Z
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 306
    .local v6, num:I
    mul-int/lit8 v9, v6, 0x3

    new-array v0, v9, [B

    .line 308
    .local v0, SimData:[B
    const/4 v1, 0x0

    .line 309
    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;

    .line 311
    .local v7, tempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    iget v3, v7, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mcc:I

    .line 312
    .local v3, mcc:I
    iget v4, v7, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mnc:I

    .line 313
    .local v4, mnc:I
    iget-boolean v5, v7, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 315
    if-gt v3, v12, :cond_2

    if-lez v3, :cond_2

    if-ltz v4, :cond_2

    if-eqz v5, :cond_1

    if-gt v4, v12, :cond_2

    :cond_1
    if-nez v5, :cond_3

    const/16 v9, 0x63

    if-le v4, v9, :cond_3

    .line 319
    :cond_2
    const-string v9, "LGEIccUtils"

    const-string v10, "invalid mcc mnc "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v3, 0x0

    .line 321
    const/4 v4, 0x0

    .line 322
    const/4 v5, 0x1

    .line 325
    :cond_3
    const-string v9, "LGEIccUtils"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->logPLMNtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->setPLMNfromMCCMNC(ZII)[B

    move-result-object v8

    .line 328
    .local v8, tempSim:[B
    if-nez v8, :cond_4

    .line 330
    aput-byte v11, v0, v1

    .line 331
    add-int/lit8 v9, v1, 0x1

    aput-byte v11, v0, v9

    .line 332
    add-int/lit8 v9, v1, 0x2

    aput-byte v11, v0, v9

    .line 339
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 336
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v8, v9, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 342
    .end local v3           #mcc:I
    .end local v4           #mnc:I
    .end local v7           #tempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    .end local v8           #tempSim:[B
    :cond_5
    const-string v9, "LGEIccUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FPLMNData "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public composePLMN(Ljava/util/ArrayList;)[B
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, PlmnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;>;"
    const/4 v6, 0x0

    .line 162
    .local v6, mnc_includes_pcs_digit:Z
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 165
    .local v7, num:I
    mul-int/lit8 v10, v7, 0x5

    new-array v0, v10, [B

    .line 167
    .local v0, SimData:[B
    const/4 v1, 0x0

    .line 168
    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;

    .line 170
    .local v8, tempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    iget v4, v8, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mcc:I

    .line 171
    .local v4, mcc:I
    iget v5, v8, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mnc:I

    .line 172
    .local v5, mnc:I
    iget-boolean v6, v8, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 174
    const/16 v10, 0x3e7

    if-gt v4, v10, :cond_2

    if-lez v4, :cond_2

    if-ltz v5, :cond_2

    if-eqz v6, :cond_1

    const/16 v10, 0x3e7

    if-gt v5, v10, :cond_2

    :cond_1
    if-nez v6, :cond_3

    const/16 v10, 0x63

    if-le v5, v10, :cond_3

    .line 178
    :cond_2
    const-string v10, "LGEIccUtils"

    const-string v11, "invalid mcc mnc "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v4, 0x0

    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v6, 0x1

    .line 184
    :cond_3
    const-string v10, "LGEIccUtils"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->logPLMNtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->setPLMNfromMCCMNC(ZII)[B

    move-result-object v9

    .line 187
    .local v9, tempSim:[B
    if-nez v9, :cond_4

    .line 189
    const/4 v10, -0x1

    aput-byte v10, v0, v1

    .line 190
    add-int/lit8 v10, v1, 0x1

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 191
    add-int/lit8 v10, v1, 0x2

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 198
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 199
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    iget-object v10, v8, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v0, v1

    .line 200
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iget-object v10, v8, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v0, v2

    goto :goto_1

    .line 195
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v9, v10, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 203
    .end local v4           #mcc:I
    .end local v5           #mnc:I
    .end local v8           #tempPLMN:Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;
    .end local v9           #tempSim:[B
    :cond_5
    const-string v10, "LGEIccUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SimData "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public composeSMSP(Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;)[B
    .locals 7
    .parameter "smspData"

    .prologue
    const/4 v4, 0x0

    .line 431
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    .line 432
    :cond_0
    const-string v3, "LGEIccUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->SMSPtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    iget-object v5, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 435
    .local v0, SimData:[B
    const/4 v1, 0x0

    .line 437
    .local v1, arrayPoint:I
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    iget-object v5, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 442
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    .line 444
    :cond_2
    iget-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    .line 450
    :goto_2
    const-string v3, "LGEIccUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVCCenterAddr[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    aget-byte v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ParamIndicator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    add-int/lit8 v2, v1, 0x1

    .end local v1           #arrayPoint:I
    .local v2, arrayPoint:I
    iget-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    aput-byte v3, v0, v1

    .line 455
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    iget-object v5, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    array-length v3, v3

    add-int v1, v2, v3

    .line 458
    .end local v2           #arrayPoint:I
    .restart local v1       #arrayPoint:I
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    iget-object v5, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 462
    add-int/lit8 v2, v1, 0x1

    .end local v1           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    iget-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ProtoclID:B

    aput-byte v3, v0, v1

    .line 463
    add-int/lit8 v1, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v1       #arrayPoint:I
    iget-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->CodeScheme:B

    aput-byte v3, v0, v2

    .line 464
    iget-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ValidPeriod:B

    aput-byte v3, v0, v1

    .line 466
    const-string v3, "LGEIccUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSPData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 434
    .end local v0           #SimData:[B
    .end local v1           #arrayPoint:I
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->alphaID:[B

    array-length v3, v3

    goto/16 :goto_1

    .line 447
    .restart local v0       #SimData:[B
    .restart local v1       #arrayPoint:I
    :cond_4
    iget-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    goto/16 :goto_2
.end method

.method public decodeSCAddr([B)Ljava/lang/String;
    .locals 6
    .parameter "scData"

    .prologue
    const/4 v5, 0x1

    .line 485
    const/4 v0, 0x0

    .line 488
    .local v0, InternationalIndicator:C
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 504
    :cond_0
    :goto_0
    return-object v2

    .line 490
    :cond_1
    const/4 v3, 0x0

    aget-byte v1, p1, v3

    .line 492
    .local v1, length:I
    if-gtz v1, :cond_2

    .line 493
    const-string v2, ""

    .local v2, scAddrString:Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v2           #scAddrString:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 498
    .restart local v2       #scAddrString:Ljava/lang/String;
    aget-byte v3, p1, v5

    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_0

    .line 500
    const-string v3, "+"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public encodeSCAddr(Ljava/lang/String;[B)[B
    .locals 12
    .parameter "newSCAddr"
    .parameter "oldSCAddr"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 518
    const/16 v7, 0xc

    new-array v4, v7, [B

    .line 519
    .local v4, scData:[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 520
    const-string v7, "LGEIccUtils"

    const-string v8, "SMSPData SCAddr is Null: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v4           #scData:[B
    :goto_0
    return-object v4

    .line 524
    :cond_0
    const/16 v7, 0x2b

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1

    .line 525
    const/4 v0, 0x1

    .line 529
    .local v0, InternationalIndicator:B
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, tempString:Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 538
    .local v5, tempData:[B
    array-length v7, p2

    new-array v4, v7, [B

    .line 540
    .restart local v4       #scData:[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 542
    array-length v7, v5

    div-int/lit8 v7, v7, 0x2

    array-length v8, v5

    rem-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    .line 544
    aget-byte v7, p2, v9

    const/16 v8, 0xff

    if-eq v7, v8, :cond_2

    .line 546
    shl-int/lit8 v7, v0, 0x4

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0x8f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    .line 553
    :goto_2
    const/4 v3, 0x0

    .local v3, j:I
    move v2, v3

    .local v2, i:I
    :goto_3
    add-int/lit8 v7, v2, 0x1

    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 556
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v5, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 553
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 527
    .end local v0           #InternationalIndicator:B
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #scData:[B
    .end local v5           #tempData:[B
    .end local v6           #tempString:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #InternationalIndicator:B
    goto :goto_1

    .line 534
    .restart local v6       #tempString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    move-object v4, p2

    .line 535
    goto :goto_0

    .line 550
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #scData:[B
    .restart local v5       #tempData:[B
    :cond_2
    shl-int/lit8 v7, v0, 0x4

    or-int/lit16 v7, v7, 0x81

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    goto :goto_2

    .line 559
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_3
    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 560
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 562
    :cond_4
    const-string v7, "LGEIccUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logPLMNtoString(Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;)Ljava/lang/String;
    .locals 3
    .parameter "logPLMN"

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,pcs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->includepcs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,act0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,act1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/LGEIccUtils$PLMNListType;->act:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPLMNfromMCCMNC(ZII)[B
    .locals 10
    .parameter "mnc_includes_pcs_digit"
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    .line 217
    const/4 v7, 0x3

    new-array v0, v7, [B

    .line 219
    .local v0, arrayBuff:[B
    const/4 v6, 0x0

    .local v6, mnc_digit_3:I
    move v5, v6

    .local v5, mnc_digit_2:I
    move v4, v6

    .line 221
    .local v4, mnc_digit_1:I
    const/16 v7, 0x3e7

    if-gt p2, v7, :cond_1

    if-eqz p2, :cond_1

    if-ltz p3, :cond_1

    if-eqz p1, :cond_0

    const/16 v7, 0x3e7

    if-gt p3, v7, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/16 v7, 0x63

    if-le p3, v7, :cond_2

    .line 225
    :cond_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 226
    const/4 v7, 0x1

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 227
    const/4 v7, 0x2

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 253
    :goto_0
    const-string v7, "LGEIccUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mnc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v0

    .line 231
    :cond_2
    div-int/lit8 v1, p2, 0x64

    .line 232
    .local v1, mcc_digit_1:I
    mul-int/lit8 v7, v1, 0x64

    sub-int v7, p2, v7

    div-int/lit8 v2, v7, 0xa

    .line 233
    .local v2, mcc_digit_2:I
    mul-int/lit8 v7, v1, 0x64

    sub-int v7, p2, v7

    mul-int/lit8 v8, v2, 0xa

    sub-int v3, v7, v8

    .line 235
    .local v3, mcc_digit_3:I
    if-eqz p1, :cond_3

    .line 237
    div-int/lit8 v4, p3, 0x64

    .line 238
    mul-int/lit8 v7, v4, 0x64

    sub-int v7, p3, v7

    div-int/lit8 v5, v7, 0xa

    .line 239
    mul-int/lit8 v7, v4, 0x64

    sub-int v7, p3, v7

    mul-int/lit8 v8, v5, 0xa

    sub-int v6, v7, v8

    .line 248
    :goto_1
    const/4 v7, 0x0

    shl-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 249
    const/4 v7, 0x1

    shl-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 250
    const/4 v7, 0x2

    shl-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    goto :goto_0

    .line 243
    :cond_3
    div-int/lit8 v4, p3, 0xa

    .line 244
    mul-int/lit8 v7, v4, 0xa

    sub-int v5, p3, v7

    .line 245
    const/16 v6, 0xf

    goto :goto_1
.end method
