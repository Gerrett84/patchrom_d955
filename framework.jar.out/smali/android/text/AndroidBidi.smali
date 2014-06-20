.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "haveInfo"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 35
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    .line 36
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 39
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 44
    :pswitch_0
    const/4 p0, 0x0

    .line 47
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 48
    .local v0, result:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 49
    :goto_1
    invoke-static {p1, p2, v0, p3}, Landroid/text/TextUtils;->changeBracketRun([C[BII)V

    .line 50
    return v0

    .line 40
    .end local v0           #result:I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 41
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 42
    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    .line 43
    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .line 48
    .restart local v0       #result:I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 39
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 29
    .parameter "dir"
    .parameter "levels"
    .parameter "lstart"
    .parameter "chars"
    .parameter "cstart"
    .parameter "len"

    .prologue
    .line 68
    const/16 v25, 0x1

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/4 v2, 0x0

    .line 69
    .local v2, baseLevel:I
    :goto_0
    aget-byte v5, p1, p2

    .line 70
    .local v5, curLevel:I
    move/from16 v16, v5

    .line 71
    .local v16, minLevel:I
    const/16 v20, 0x1

    .line 75
    .local v20, runCount:I
    const/16 v21, 0x0

    .line 77
    .local v21, startIsEmoji:Z
    :try_start_0
    sget-boolean v25, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v25, :cond_1

    sget-object v25, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    aget-char v26, p3, p2

    invoke-virtual/range {v25 .. v26}, Landroid/emoji/EmojiFactory;->quickRejectEmojiCode(C)Z

    move-result v25

    if-nez v25, :cond_1

    .line 78
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_1

    .line 79
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v4

    .line 80
    .local v4, codept:I
    invoke-static {v4}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v25

    if-nez v25, :cond_0

    add-int/lit8 v25, p2, 0x3

    add-int v26, p2, p5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/Layout;->isDiacriticalMark([CI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    if-eqz v25, :cond_5

    .line 81
    :cond_0
    const/16 v21, 0x1

    .line 90
    .end local v4           #codept:I
    :cond_1
    :goto_1
    if-eqz v21, :cond_7

    move/from16 v10, p2

    .local v10, i:I
    :goto_2
    add-int v7, p2, p5

    .local v7, e:I
    move v6, v5

    .end local v5           #curLevel:I
    .local v6, curLevel:I
    :goto_3
    if-ge v10, v7, :cond_d

    .line 93
    :try_start_1
    sget-boolean v25, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v25, :cond_1f

    sget-object v25, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    aget-char v26, p3, v10

    invoke-virtual/range {v25 .. v26}, Landroid/emoji/EmojiFactory;->quickRejectEmojiCode(C)Z

    move-result v25

    if-nez v25, :cond_1f

    .line 94
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_1f

    .line 95
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v4

    .line 96
    .restart local v4       #codept:I
    invoke-static {v4}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v25

    if-nez v25, :cond_2

    add-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_8

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/Layout;->isDiacriticalMark([CI)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 97
    :cond_2
    move/from16 v0, p2

    if-ne v10, v0, :cond_21

    .line 98
    int-to-byte v5, v2

    aput-byte v5, p1, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    move/from16 v16, v5

    .line 99
    :goto_4
    add-int/lit8 v25, v10, 0x1

    int-to-byte v0, v2

    move/from16 v26, v0

    :try_start_2
    aput-byte v26, p1, v25

    aput-byte v26, p1, v10

    .line 114
    .end local v4           #codept:I
    :goto_5
    aget-byte v12, p1, v10

    .line 115
    .local v12, level:I
    if-eq v12, v5, :cond_3

    .line 116
    move v5, v12

    .line 117
    add-int/lit8 v20, v20, 0x1

    .line 90
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move v6, v5

    .end local v5           #curLevel:I
    .restart local v6       #curLevel:I
    goto :goto_3

    .line 68
    .end local v2           #baseLevel:I
    .end local v6           #curLevel:I
    .end local v7           #e:I
    .end local v10           #i:I
    .end local v12           #level:I
    .end local v16           #minLevel:I
    .end local v20           #runCount:I
    .end local v21           #startIsEmoji:Z
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 82
    .restart local v2       #baseLevel:I
    .restart local v4       #codept:I
    .restart local v5       #curLevel:I
    .restart local v16       #minLevel:I
    .restart local v20       #runCount:I
    .restart local v21       #startIsEmoji:Z
    :cond_5
    aget-char v25, p3, p2

    invoke-static/range {v25 .. v25}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 83
    const/16 v21, 0x1

    goto :goto_1

    .line 84
    :cond_6
    add-int/lit8 v25, p2, 0x3

    add-int v26, p2, p5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v25

    if-eqz v25, :cond_1

    .line 85
    const/16 v21, 0x1

    goto :goto_1

    .line 90
    .end local v4           #codept:I
    :cond_7
    add-int/lit8 v10, p2, 0x1

    goto :goto_2

    .line 101
    .end local v5           #curLevel:I
    .restart local v4       #codept:I
    .restart local v6       #curLevel:I
    .restart local v7       #e:I
    .restart local v10       #i:I
    :cond_8
    :try_start_3
    aget-char v25, p3, v10

    invoke-static/range {v25 .. v25}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 102
    move/from16 v0, p2

    if-ne v10, v0, :cond_20

    .line 103
    int-to-byte v5, v2

    aput-byte v5, p1, p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    move/from16 v16, v5

    .line 104
    :goto_6
    int-to-byte v0, v2

    move/from16 v25, v0

    :try_start_4
    aput-byte v25, p1, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 120
    .end local v4           #codept:I
    .end local v7           #e:I
    .end local v10           #i:I
    :catch_0
    move-exception v8

    .line 121
    .local v8, ex:Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_8
    move/from16 v23, p5

    .line 127
    .local v23, visLen:I
    and-int/lit8 v25, v5, 0x1

    and-int/lit8 v26, v2, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    .line 129
    :cond_9
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_a

    .line 130
    add-int v25, p4, v23

    aget-char v3, p3, v25

    .line 132
    .local v3, ch:C
    const/16 v25, 0xa

    move/from16 v0, v25

    if-ne v3, v0, :cond_e

    .line 133
    add-int/lit8 v23, v23, -0x1

    .line 141
    .end local v3           #ch:C
    :cond_a
    :goto_9
    add-int/lit8 v23, v23, 0x1

    .line 142
    move/from16 v0, v23

    move/from16 v1, p5

    if-eq v0, v1, :cond_b

    .line 143
    add-int/lit8 v20, v20, 0x1

    .line 147
    :cond_b
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    move/from16 v0, v16

    if-ne v0, v2, :cond_10

    .line 149
    and-int/lit8 v25, v16, 0x1

    if-eqz v25, :cond_f

    .line 150
    sget-object v25, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 222
    :goto_a
    return-object v25

    .line 106
    .end local v5           #curLevel:I
    .end local v23           #visLen:I
    .restart local v4       #codept:I
    .restart local v6       #curLevel:I
    .restart local v7       #e:I
    .restart local v10       #i:I
    :cond_c
    add-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_1f

    :try_start_5
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 107
    move/from16 v0, p2

    if-ne v10, v0, :cond_1e

    .line 108
    int-to-byte v5, v2

    aput-byte v5, p1, p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    move/from16 v16, v5

    .line 109
    :goto_b
    add-int/lit8 v25, v10, 0x1

    add-int/lit8 v26, v10, 0x2

    add-int/lit8 v27, v10, 0x3

    int-to-byte v0, v2

    move/from16 v28, v0

    :try_start_6
    aput-byte v28, p1, v27

    aput-byte v28, p1, v26

    aput-byte v28, p1, v25

    aput-byte v28, p1, v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    .end local v4           #codept:I
    .end local v5           #curLevel:I
    .restart local v6       #curLevel:I
    :cond_d
    move v5, v6

    .line 122
    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    goto :goto_8

    .line 137
    .end local v7           #e:I
    .end local v10           #i:I
    .restart local v3       #ch:C
    .restart local v23       #visLen:I
    :cond_e
    const/16 v25, 0x20

    move/from16 v0, v25

    if-eq v3, v0, :cond_9

    const/16 v25, 0x9

    move/from16 v0, v25

    if-eq v3, v0, :cond_9

    goto :goto_9

    .line 152
    .end local v3           #ch:C
    :cond_f
    sget-object v25, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_a

    .line 155
    :cond_10
    mul-int/lit8 v25, v20, 0x2

    move/from16 v0, v25

    new-array v11, v0, [I

    .line 156
    .local v11, ld:[I
    move/from16 v15, v16

    .line 157
    .local v15, maxLevel:I
    shl-int/lit8 v13, v16, 0x1a

    .line 162
    .local v13, levelBits:I
    const/16 v17, 0x1

    .line 163
    .local v17, n:I
    move/from16 v19, p2

    .line 164
    .local v19, prev:I
    move/from16 v5, v16

    .line 165
    move/from16 v10, p2

    .restart local v10       #i:I
    add-int v7, p2, v23

    .restart local v7       #e:I
    move/from16 v18, v17

    .end local v17           #n:I
    .local v18, n:I
    :goto_c
    if-ge v10, v7, :cond_13

    .line 166
    aget-byte v12, p1, v10

    .line 167
    .restart local v12       #level:I
    if-eq v12, v5, :cond_1d

    .line 168
    move v5, v12

    .line 169
    if-le v12, v15, :cond_12

    .line 170
    move v15, v12

    .line 175
    :cond_11
    :goto_d
    add-int/lit8 v17, v18, 0x1

    .end local v18           #n:I
    .restart local v17       #n:I
    sub-int v25, v10, v19

    or-int v25, v25, v13

    aput v25, v11, v18

    .line 176
    add-int/lit8 v18, v17, 0x1

    .end local v17           #n:I
    .restart local v18       #n:I
    sub-int v25, v10, p2

    aput v25, v11, v17

    .line 177
    shl-int/lit8 v13, v5, 0x1a

    .line 178
    move/from16 v19, v10

    move/from16 v17, v18

    .line 165
    .end local v18           #n:I
    .restart local v17       #n:I
    :goto_e
    add-int/lit8 v10, v10, 0x1

    move/from16 v18, v17

    .end local v17           #n:I
    .restart local v18       #n:I
    goto :goto_c

    .line 171
    :cond_12
    move/from16 v0, v16

    if-ge v12, v0, :cond_11

    .line 172
    move/from16 v16, v12

    goto :goto_d

    .line 181
    .end local v12           #level:I
    :cond_13
    add-int v25, p2, v23

    sub-int v25, v25, v19

    or-int v25, v25, v13

    aput v25, v11, v18

    .line 182
    move/from16 v0, v23

    move/from16 v1, p5

    if-ge v0, v1, :cond_1c

    .line 183
    add-int/lit8 v17, v18, 0x1

    .end local v18           #n:I
    .restart local v17       #n:I
    aput v23, v11, v17

    .line 184
    add-int/lit8 v17, v17, 0x1

    sub-int v25, p5, v23

    shl-int/lit8 v26, v2, 0x1a

    or-int v25, v25, v26

    aput v25, v11, v17

    .line 199
    :goto_f
    and-int/lit8 v25, v16, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_15

    .line 200
    add-int/lit8 v16, v16, 0x1

    .line 201
    move/from16 v0, v16

    if-le v15, v0, :cond_14

    const/16 v22, 0x1

    .line 205
    .local v22, swap:Z
    :goto_10
    if-eqz v22, :cond_1b

    .line 206
    add-int/lit8 v12, v15, -0x1

    .restart local v12       #level:I
    :goto_11
    move/from16 v0, v16

    if-lt v12, v0, :cond_1b

    .line 207
    const/4 v10, 0x0

    :goto_12
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_1a

    .line 208
    aget v25, v11, v10

    aget-byte v25, p1, v25

    move/from16 v0, v25

    if-lt v0, v12, :cond_19

    .line 209
    add-int/lit8 v7, v10, 0x2

    .line 210
    :goto_13
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v7, v0, :cond_17

    aget v25, v11, v7

    aget-byte v25, p1, v25

    move/from16 v0, v25

    if-lt v0, v12, :cond_17

    .line 211
    add-int/lit8 v7, v7, 0x2

    goto :goto_13

    .line 201
    .end local v12           #level:I
    .end local v22           #swap:Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_10

    .line 203
    :cond_15
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    const/16 v22, 0x1

    .restart local v22       #swap:Z
    :goto_14
    goto :goto_10

    .end local v22           #swap:Z
    :cond_16
    const/16 v22, 0x0

    goto :goto_14

    .line 213
    .restart local v12       #level:I
    .restart local v22       #swap:Z
    :cond_17
    move v14, v10

    .local v14, low:I
    add-int/lit8 v9, v7, -0x2

    .local v9, hi:I
    :goto_15
    if-ge v14, v9, :cond_18

    .line 214
    aget v24, v11, v14

    .local v24, x:I
    aget v25, v11, v9

    aput v25, v11, v14

    aput v24, v11, v9

    .line 215
    add-int/lit8 v25, v14, 0x1

    aget v24, v11, v25

    add-int/lit8 v25, v14, 0x1

    add-int/lit8 v26, v9, 0x1

    aget v26, v11, v26

    aput v26, v11, v25

    add-int/lit8 v25, v9, 0x1

    aput v24, v11, v25

    .line 213
    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v9, v9, -0x2

    goto :goto_15

    .line 217
    .end local v24           #x:I
    :cond_18
    add-int/lit8 v10, v7, 0x2

    .line 207
    .end local v9           #hi:I
    .end local v14           #low:I
    :cond_19
    add-int/lit8 v10, v10, 0x2

    goto :goto_12

    .line 206
    :cond_1a
    add-int/lit8 v12, v12, -0x1

    goto :goto_11

    .line 222
    .end local v12           #level:I
    :cond_1b
    new-instance v25, Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_a

    .line 120
    .end local v5           #curLevel:I
    .end local v11           #ld:[I
    .end local v13           #levelBits:I
    .end local v15           #maxLevel:I
    .end local v17           #n:I
    .end local v19           #prev:I
    .end local v22           #swap:Z
    .end local v23           #visLen:I
    .restart local v6       #curLevel:I
    :catch_1
    move-exception v8

    move v5, v6

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    goto/16 :goto_7

    .restart local v11       #ld:[I
    .restart local v13       #levelBits:I
    .restart local v15       #maxLevel:I
    .restart local v18       #n:I
    .restart local v19       #prev:I
    .restart local v23       #visLen:I
    :cond_1c
    move/from16 v17, v18

    .end local v18           #n:I
    .restart local v17       #n:I
    goto/16 :goto_f

    .end local v17           #n:I
    .restart local v12       #level:I
    .restart local v18       #n:I
    :cond_1d
    move/from16 v17, v18

    .end local v18           #n:I
    .restart local v17       #n:I
    goto/16 :goto_e

    .end local v5           #curLevel:I
    .end local v11           #ld:[I
    .end local v12           #level:I
    .end local v13           #levelBits:I
    .end local v15           #maxLevel:I
    .end local v17           #n:I
    .end local v19           #prev:I
    .end local v23           #visLen:I
    .restart local v4       #codept:I
    .restart local v6       #curLevel:I
    :cond_1e
    move v5, v6

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    goto/16 :goto_b

    .end local v4           #codept:I
    .end local v5           #curLevel:I
    .restart local v6       #curLevel:I
    :cond_1f
    move v5, v6

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    goto/16 :goto_5

    .end local v5           #curLevel:I
    .restart local v4       #codept:I
    .restart local v6       #curLevel:I
    :cond_20
    move v5, v6

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    goto/16 :goto_6

    .end local v5           #curLevel:I
    .restart local v6       #curLevel:I
    :cond_21
    move v5, v6

    .end local v6           #curLevel:I
    .restart local v5       #curLevel:I
    goto/16 :goto_4
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
