.class final Landroid/webkit/HTML5VideoViewProxy$TracksData;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TracksData"
.end annotation


# instance fields
.field trackKind:[Ljava/lang/String;

.field trackLabel:[Ljava/lang/String;

.field trackLang:[Ljava/lang/String;

.field trackPlayed:I

.field trackPlayedLang:Ljava/lang/String;

.field trackSrc:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, -0x2

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "src"
    .parameter "lang"
    .parameter "label"
    .parameter "kind"
    .parameter "trackPlayed"

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const-string v11, ";"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, srcStr:[Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {p2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, langStr:[Ljava/lang/String;
    const-string v11, ";"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, labelStr:[Ljava/lang/String;
    const-string v11, ";"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, kindStr:[Ljava/lang/String;
    array-length v2, v9

    .line 275
    .local v2, count:I
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v10, v1, v4

    .line 276
    .local v10, str:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 277
    iput-object v9, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackSrc:[Ljava/lang/String;

    .line 282
    .end local v10           #str:Ljava/lang/String;
    :cond_0
    array-length v11, v7

    if-ne v11, v2, :cond_7

    .line 283
    move-object v1, v7

    array-length v8, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v10, v1, v4

    .line 284
    .restart local v10       #str:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 285
    iput-object v7, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    .line 296
    .end local v10           #str:Ljava/lang/String;
    :cond_1
    array-length v11, v6

    if-ne v11, v2, :cond_a

    .line 297
    move-object v1, v6

    array-length v8, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_2

    aget-object v10, v1, v4

    .line 298
    .restart local v10       #str:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 299
    iput-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    .line 310
    .end local v10           #str:Ljava/lang/String;
    :cond_2
    array-length v11, v5

    if-ne v11, v2, :cond_d

    .line 311
    move-object v1, v5

    array-length v8, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_3

    aget-object v10, v1, v4

    .line 312
    .restart local v10       #str:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 313
    iput-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackKind:[Ljava/lang/String;

    .line 324
    .end local v10           #str:Ljava/lang/String;
    :cond_3
    move/from16 v0, p5

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    .line 327
    if-ltz p5, :cond_4

    iget-object v11, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    if-nez v11, :cond_f

    :cond_4
    const/4 v11, 0x0

    :goto_4
    iput-object v11, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayedLang:Ljava/lang/String;

    .line 329
    return-void

    .line 275
    .restart local v10       #str:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 289
    .end local v10           #str:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    if-le v2, v11, :cond_1

    .line 290
    new-array v11, v2, [Ljava/lang/String;

    iput-object v11, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    .line 291
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_1

    .line 292
    iget-object v12, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    array-length v11, v7

    if-ge v3, v11, :cond_8

    aget-object v11, v7, v3

    :goto_6
    aput-object v11, v12, v3

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 292
    :cond_8
    const-string v11, ""

    goto :goto_6

    .line 297
    .end local v3           #i:I
    .restart local v10       #str:Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 303
    .end local v10           #str:Ljava/lang/String;
    :cond_a
    const/4 v11, 0x1

    if-le v2, v11, :cond_2

    .line 304
    new-array v11, v2, [Ljava/lang/String;

    iput-object v11, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    .line 305
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_7
    if-ge v3, v2, :cond_2

    .line 306
    iget-object v12, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    array-length v11, v6

    if-ge v3, v11, :cond_b

    aget-object v11, v6, v3

    :goto_8
    aput-object v11, v12, v3

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 306
    :cond_b
    const-string v11, ""

    goto :goto_8

    .line 311
    .end local v3           #i:I
    .restart local v10       #str:Ljava/lang/String;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 317
    .end local v10           #str:Ljava/lang/String;
    :cond_d
    const/4 v11, 0x1

    if-le v2, v11, :cond_3

    .line 318
    new-array v11, v2, [Ljava/lang/String;

    iput-object v11, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackKind:[Ljava/lang/String;

    .line 319
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_9
    if-ge v3, v2, :cond_3

    .line 320
    iget-object v12, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackKind:[Ljava/lang/String;

    array-length v11, v5

    if-ge v3, v11, :cond_e

    aget-object v11, v5, v3

    :goto_a
    aput-object v11, v12, v3

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 320
    :cond_e
    const-string v11, ""

    goto :goto_a

    .line 327
    .end local v3           #i:I
    :cond_f
    iget-object v11, p0, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    aget-object v11, v11, p5

    goto :goto_4
.end method
