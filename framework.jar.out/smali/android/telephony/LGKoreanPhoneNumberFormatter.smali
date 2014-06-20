.class Landroid/telephony/LGKoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "LGKoreanPhoneNumberFormatter.java"


# static fields
.field private static DBG:Z

.field private static DDD_3_Number:[S

.field private static DDD_5_Number:[S

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    .line 30
    const-string v0, "LGKoreanPhoneNumberFormatter"

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    return-void

    .line 32
    :array_0
    .array-data 0x2
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x46t 0x0t
        0x50t 0x0t
    .end array-data

    .line 39
    nop

    :array_1
    .array-data 0x2
        0x2ct 0x1t
        0x41t 0x1t
        0x55t 0x1t
        0x58t 0x1t
        0x59t 0x1t
        0x6dt 0x1t
        0xbct 0x2t
        0xd7t 0x2t
        0xf3t 0x2t
        0xct 0x3t
        0xfet 0x2t
        0x13t 0x3t
        0x84t 0x1t
        0x2t 0x3t
        0x9t 0x3t
        0xf1t 0x2t
        0xc3t 0x2t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 14
    .parameter "oritext"

    .prologue
    .line 47
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 48
    .local v3, text:Landroid/text/Editable;
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v3, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 49
    invoke-interface {p0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 52
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format input = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    const/4 v11, 0x0

    .line 56
    .local v11, tmp1stHyphen:I
    const/4 v12, 0x0

    .line 58
    .local v12, tmp2ndHyphen:I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    .line 60
    .local v9, length:I
    const/4 v10, 0x0

    .line 61
    .local v10, p:I
    :goto_0
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 62
    invoke-interface {v3, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 63
    add-int/lit8 v0, v10, 0x1

    invoke-interface {v3, v10, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    .line 72
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_6

    .line 73
    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_3
    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_5

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_5

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_5

    .line 77
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 78
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 238
    :cond_4
    :goto_2
    return-void

    .line 72
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    :cond_6
    const/4 v0, 0x2

    if-lt v9, v0, :cond_4

    .line 96
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_7

    .line 100
    const/4 v11, 0x2

    .line 103
    :cond_7
    const/4 v0, 0x3

    if-lt v9, v0, :cond_8

    .line 104
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_8

    .line 105
    const/4 v11, 0x3

    .line 110
    :cond_8
    const/4 v0, 0x4

    if-lt v9, v0, :cond_9

    .line 112
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 113
    const/4 v0, 0x4

    if-ne v9, v0, :cond_11

    .line 114
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v13, v0, v1

    .line 116
    .local v13, tmpDDDNumber:I
    const/16 v0, 0x7d4

    if-ne v13, v0, :cond_9

    .line 117
    const/4 v11, 0x0

    .line 138
    .end local v13           #tmpDDDNumber:I
    :cond_9
    const/4 v0, 0x4

    if-ne v9, v0, :cond_c

    .line 139
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v13, v0, v1

    .line 140
    .restart local v13       #tmpDDDNumber:I
    const/16 v0, 0x1f4

    if-lt v13, v0, :cond_a

    const/16 v0, 0x1fd

    if-le v13, v0, :cond_b

    :cond_a
    const/16 v0, 0x82

    if-ne v13, v0, :cond_c

    .line 141
    :cond_b
    const/4 v11, 0x0

    .line 144
    .end local v13           #tmpDDDNumber:I
    :cond_c
    const/4 v0, 0x4

    if-le v9, v0, :cond_f

    .line 145
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v13, v0, v1

    .line 146
    .restart local v13       #tmpDDDNumber:I
    const/16 v0, 0x1f4

    if-lt v13, v0, :cond_d

    const/16 v0, 0x1fd

    if-le v13, v0, :cond_e

    :cond_d
    const/16 v0, 0x82

    if-ne v13, v0, :cond_f

    .line 147
    :cond_e
    const/4 v11, 0x4

    .line 150
    .end local v13           #tmpDDDNumber:I
    :cond_f
    const/4 v0, 0x6

    if-lt v9, v0, :cond_15

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_15

    .line 151
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v13, v0, v1

    .line 152
    .restart local v13       #tmpDDDNumber:I
    const/4 v6, 0x0

    :goto_3
    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    array-length v0, v0

    if-ge v6, v0, :cond_15

    .line 153
    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    aget-short v0, v0, v6

    if-ne v13, v0, :cond_10

    .line 154
    const/4 v11, 0x5

    .line 152
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 121
    .end local v13           #tmpDDDNumber:I
    :cond_11
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v13, v0, v1

    .line 122
    .restart local v13       #tmpDDDNumber:I
    const/4 v6, 0x0

    :goto_4
    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    array-length v0, v0

    if-ge v6, v0, :cond_9

    .line 123
    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    aget-short v0, v0, v6

    if-ne v13, v0, :cond_12

    .line 124
    const/4 v11, 0x3

    .line 122
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 129
    .end local v13           #tmpDDDNumber:I
    :cond_13
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v13, v0, v1

    .line 130
    .restart local v13       #tmpDDDNumber:I
    const/4 v6, 0x0

    :goto_5
    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    array-length v0, v0

    if-ge v6, v0, :cond_9

    .line 131
    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    aget-short v0, v0, v6

    if-ne v13, v0, :cond_14

    .line 132
    const/4 v11, 0x3

    .line 130
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 158
    .end local v13           #tmpDDDNumber:I
    :cond_15
    const/4 v7, 0x0

    .line 160
    .local v7, j:I
    if-lez v11, :cond_22

    .line 161
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v6, v9, :cond_17

    .line 162
    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_16

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_1b

    .line 163
    :cond_16
    move v7, v6

    .line 167
    :cond_17
    if-eqz v7, :cond_1c

    .line 168
    move v12, v7

    .line 214
    :cond_18
    :goto_7
    const/4 v8, 0x0

    .local v8, k:I
    :goto_8
    if-ge v8, v9, :cond_28

    .line 215
    if-ne v8, v11, :cond_19

    if-eqz v8, :cond_19

    .line 216
    const-string v0, "-"

    invoke-interface {v3, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 218
    :cond_19
    const/4 v0, 0x4

    if-le v12, v0, :cond_27

    .line 219
    add-int/lit8 v0, v8, 0x1

    if-ne v0, v12, :cond_1a

    if-eqz v8, :cond_1a

    .line 220
    add-int/lit8 v0, v8, 0x1

    const-string v1, "-"

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 214
    :cond_1a
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 161
    .end local v8           #k:I
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 171
    :cond_1c
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tmp1stHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1d
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1e

    .line 175
    add-int/lit8 v12, v11, 0x5

    .line 176
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case 1 tmp2ndHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 178
    :cond_1e
    add-int/lit8 v0, v9, -0x1

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_20

    .line 179
    add-int/lit8 v0, v11, 0x9

    if-lt v9, v0, :cond_1f

    .line 180
    add-int/lit8 v12, v11, 0x5

    .line 181
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case 3 tmp2ndHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 183
    :cond_1f
    add-int/lit8 v12, v11, 0x4

    .line 184
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case 4 tmp2ndHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 187
    :cond_20
    add-int/lit8 v0, v11, 0x8

    if-lt v9, v0, :cond_21

    .line 188
    add-int/lit8 v12, v11, 0x5

    .line 189
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case 5 tmp2ndHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 191
    :cond_21
    add-int/lit8 v12, v11, 0x4

    .line 192
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case 6 tmp2ndHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 198
    :cond_22
    const/4 v11, 0x0

    .line 199
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_23

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_24

    .line 200
    :cond_23
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 202
    :cond_24
    const/16 v0, 0x8

    if-lt v9, v0, :cond_26

    .line 203
    const/4 v12, 0x4

    .line 207
    :goto_a
    const/4 v0, 0x4

    if-ne v9, v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0130"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    :cond_25
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 205
    :cond_26
    const/4 v12, 0x3

    goto :goto_a

    .line 223
    .restart local v8       #k:I
    :cond_27
    if-ne v8, v12, :cond_1a

    if-eqz v8, :cond_1a

    .line 224
    const-string v0, "-"

    invoke-interface {v3, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_9

    .line 229
    :cond_28
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_29

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result tmp1stHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_29
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result tmp2ndHyphen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2a
    sget-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format output = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2b
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 236
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_2
.end method
