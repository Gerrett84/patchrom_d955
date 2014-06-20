.class public final Landroid/emoji/EmojiFactory$EmojiSupport;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emoji/EmojiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmojiSupport"
.end annotation


# instance fields
.field private mEightByteRangeMaxInt:I

.field private mEightByteRangeMinInt:I

.field private final mEmojiVersion:I

.field private mExtraRangeMaxInt:I

.field private mExtraRangeMinInt:I

.field private mOneFRangeMaxInt:I

.field private mOneFRangeMinInt:I

.field private final mRangeContainer:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;

.field private mThousandRangeMaxInt:I

.field private mThousandRangeMinInt:I

.field final synthetic this$0:Landroid/emoji/EmojiFactory;


# direct methods
.method public constructor <init>(Landroid/emoji/EmojiFactory;)V
    .locals 24
    .parameter

    .prologue
    .line 233
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMaxInt:I

    .line 224
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMinInt:I

    .line 225
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMaxInt:I

    .line 226
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMinInt:I

    .line 227
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMaxInt:I

    .line 228
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMinInt:I

    .line 229
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMaxInt:I

    .line 230
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMinInt:I

    .line 234
    const/16 v23, 0x0

    .line 237
    .local v23, version:I
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-nez v3, :cond_0

    .line 238
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMaxInt:I

    .line 239
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMinInt:I

    .line 240
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMaxInt:I

    .line 241
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMinInt:I

    .line 242
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMaxInt:I

    .line 243
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMinInt:I

    .line 244
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMaxInt:I

    .line 245
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMinInt:I

    .line 246
    new-instance v2, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;-><init>(Landroid/emoji/EmojiFactory;)V

    .line 337
    .local v2, rangeTemp:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;
    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/emoji/EmojiFactory$EmojiSupport;->mEmojiVersion:I

    .line 338
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mRangeContainer:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;

    .line 339
    const-string v3, "Emoji"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Emoji version is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEmojiVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 248
    .end local v2           #rangeTemp:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;
    :cond_0
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v12

    .line 249
    .local v12, assetMngr:Landroid/content/res/AssetManager;
    const/16 v17, 0x0

    .line 252
    .local v17, is:Ljava/io/InputStream;
    :try_start_0
    const-string v3, "emoji/emoji_table.csv"

    const/4 v4, 0x3

    invoke-virtual {v12, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 261
    :goto_1
    if-eqz v17, :cond_8

    .line 263
    :try_start_1
    const-string v3, "Emoji"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get inputStream from csv file.. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 266
    .local v13, br:Ljava/io/BufferedReader;
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 267
    .local v16, firstlineStr:Ljava/lang/String;
    const-string v3, "Emoji"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get string form csv file.. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v16, :cond_1

    .line 271
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 273
    .local v22, str_version:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v22, v3

    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 274
    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 280
    .end local v22           #str_version:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 281
    if-eqz v16, :cond_2

    .line 282
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 283
    .local v20, str_oneFRange:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    const-string v4, "fourbyterange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 284
    const/4 v3, 0x1

    aget-object v3, v20, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMaxInt:I

    .line 285
    const/4 v3, 0x2

    aget-object v3, v20, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMinInt:I

    .line 289
    .end local v20           #str_oneFRange:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 290
    if-eqz v16, :cond_3

    .line 291
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 292
    .local v21, str_unicodeRange:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v21, v3

    const-string/jumbo v4, "unicoderange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 293
    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMaxInt:I

    .line 294
    const/4 v3, 0x2

    aget-object v3, v21, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMinInt:I

    .line 298
    .end local v21           #str_unicodeRange:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 299
    if-eqz v16, :cond_4

    .line 300
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 301
    .local v19, str_extraRange:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v19, v3

    const-string v4, "extrarange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 302
    const/4 v3, 0x1

    aget-object v3, v19, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMaxInt:I

    .line 303
    const/4 v3, 0x2

    aget-object v3, v19, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMinInt:I

    .line 307
    .end local v19           #str_extraRange:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 308
    if-eqz v16, :cond_5

    .line 309
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 310
    .restart local v19       #str_extraRange:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v19, v3

    const-string v4, "eightbyterange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 311
    const/4 v3, 0x1

    aget-object v3, v19, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMaxInt:I

    .line 312
    const/4 v3, 0x2

    aget-object v3, v19, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMinInt:I

    .line 316
    .end local v19           #str_extraRange:[Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 317
    if-eqz v16, :cond_7

    .line 318
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 319
    .local v18, keycheck:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v18, v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    aget-object v3, v18, v3

    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 320
    :cond_6
    const-string v3, "Emoji"

    const-string v4, "error : emoji table might have more information check emoji table"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v18           #keycheck:[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 331
    .end local v13           #br:Ljava/io/BufferedReader;
    .end local v16           #firstlineStr:Ljava/lang/String;
    :cond_8
    :goto_2
    new-instance v2, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMaxInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMinInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMaxInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMinInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMaxInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMinInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMaxInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMinInt:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;-><init>(Landroid/emoji/EmojiFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #rangeTemp:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;
    goto/16 :goto_0

    .line 253
    .end local v2           #rangeTemp:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;
    :catch_0
    move-exception v14

    .line 255
    .local v14, e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "emoji_base/emoji_table.csv"

    const/4 v4, 0x3

    invoke-virtual {v12, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    goto/16 :goto_1

    .line 256
    :catch_1
    move-exception v15

    .line 257
    .local v15, ex:Ljava/io/IOException;
    const-string v3, "Emoji"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : emoji table asset is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 326
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "Emoji"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : while reading emoji table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public getEmojiUnicodeRange()Landroid/emoji/EmojiFactory$UnicodeRangeContainer;
    .locals 3

    .prologue
    .line 346
    sget-object v0, Landroid/emoji/EmojiFactory;->mEmojiSupport:Landroid/emoji/EmojiFactory$EmojiSupport;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-nez v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 348
    :cond_1
    const-string v0, "Emoji"

    const-string v1, "Display UnicodeRange.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v0, "Emoji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First Range : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMinInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMaxInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v0, "Emoji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second Range : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMinInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMaxInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "Emoji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Third Range : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMinInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMaxInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "Emoji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eight byte Range : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMinInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMaxInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mRangeContainer:Landroid/emoji/EmojiFactory$UnicodeRangeContainer;

    goto/16 :goto_0
.end method

.method public isInCountryCodeRange(I)Z
    .locals 2
    .parameter "pua"

    .prologue
    const/4 v0, 0x0

    .line 399
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/emoji/EmojiFactory;->mEmojiSupport:Landroid/emoji/EmojiFactory$EmojiSupport;

    if-nez v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEmojiVersion:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 405
    :pswitch_0
    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMaxInt:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEightByteRangeMinInt:I

    if-lt p1, v1, :cond_0

    .line 406
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isInCountryCodeTable([I)Z
    .locals 2
    .parameter "puaArray"

    .prologue
    const/4 v0, 0x0

    .line 413
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/emoji/EmojiFactory;->mEmojiSupport:Landroid/emoji/EmojiFactory$EmojiSupport;

    if-nez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEmojiVersion:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    iget-object v0, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    iget-object v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I
    invoke-static {v1}, Landroid/emoji/EmojiFactory;->access$100(Landroid/emoji/EmojiFactory;)I

    move-result v1

    #calls: Landroid/emoji/EmojiFactory;->nativeIsInCountryCodeTable(I[I)Z
    invoke-static {v0, v1, p1}, Landroid/emoji/EmojiFactory;->access$300(Landroid/emoji/EmojiFactory;I[I)Z

    move-result v0

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isInEmojiUnicodeTable(C)Z
    .locals 4
    .parameter "pua"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/emoji/EmojiFactory;->mEmojiSupport:Landroid/emoji/EmojiFactory$EmojiSupport;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 395
    :cond_1
    :goto_0
    return v0

    .line 381
    :cond_2
    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEmojiVersion:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 393
    goto :goto_0

    .line 384
    :pswitch_0
    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMaxInt:I

    if-gt p1, v2, :cond_3

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mThousandRangeMinInt:I

    if-lt p1, v2, :cond_3

    iget-object v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    iget-object v3, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I
    invoke-static {v3}, Landroid/emoji/EmojiFactory;->access$100(Landroid/emoji/EmojiFactory;)I

    move-result v3

    #calls: Landroid/emoji/EmojiFactory;->nativeIsInEmojiUnicodeTable(II)Z
    invoke-static {v2, v3, p1}, Landroid/emoji/EmojiFactory;->access$200(Landroid/emoji/EmojiFactory;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    :cond_3
    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMaxInt:I

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mExtraRangeMinInt:I

    if-lt p1, v2, :cond_4

    iget-object v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    iget-object v3, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I
    invoke-static {v3}, Landroid/emoji/EmojiFactory;->access$100(Landroid/emoji/EmojiFactory;)I

    move-result v3

    #calls: Landroid/emoji/EmojiFactory;->nativeIsInEmojiUnicodeTable(II)Z
    invoke-static {v2, v3, p1}, Landroid/emoji/EmojiFactory;->access$200(Landroid/emoji/EmojiFactory;II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    .line 395
    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isInEmojiUnicodeTable(I)Z
    .locals 3
    .parameter "pua"

    .prologue
    const/4 v0, 0x0

    .line 357
    sget-object v1, Landroid/emoji/EmojiFactory;->mEmojiSupport:Landroid/emoji/EmojiFactory$EmojiSupport;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-eqz v1, :cond_2

    .line 361
    iget-object v0, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    iget-object v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I
    invoke-static {v1}, Landroid/emoji/EmojiFactory;->access$100(Landroid/emoji/EmojiFactory;)I

    move-result v1

    #calls: Landroid/emoji/EmojiFactory;->nativeIsInEmojiUnicodeTable(II)Z
    invoke-static {v0, v1, p1}, Landroid/emoji/EmojiFactory;->access$200(Landroid/emoji/EmojiFactory;II)Z

    move-result v0

    goto :goto_0

    .line 363
    :cond_2
    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mEmojiVersion:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 366
    :pswitch_0
    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMaxInt:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->mOneFRangeMinInt:I

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    iget-object v2, p0, Landroid/emoji/EmojiFactory$EmojiSupport;->this$0:Landroid/emoji/EmojiFactory;

    #getter for: Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I
    invoke-static {v2}, Landroid/emoji/EmojiFactory;->access$100(Landroid/emoji/EmojiFactory;)I

    move-result v2

    #calls: Landroid/emoji/EmojiFactory;->nativeIsInEmojiUnicodeTable(II)Z
    invoke-static {v1, v2, p1}, Landroid/emoji/EmojiFactory;->access$200(Landroid/emoji/EmojiFactory;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
