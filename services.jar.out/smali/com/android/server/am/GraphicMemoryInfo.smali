.class public Lcom/android/server/am/GraphicMemoryInfo;
.super Ljava/lang/Object;
.source "GraphicMemoryInfo.java"


# static fields
.field static final LINUX_MEM_AREA_ALLOC_PAGES:Ljava/lang/String; = "LINUX_MEM_AREA_ALLOC_PAGES"

.field static final LINUX_MEM_AREA_VMALLOC:Ljava/lang/String; = "LINUX_MEM_AREA_VMALLOC"

.field static final TAG:Ljava/lang/String; = "GraphicMemoryInfo"

.field static bKgsl:Z

.field static bNvmap:Z

.field static bPvr:Z


# instance fields
.field final ION_FILEPATH:Ljava/lang/String;

.field final KGSL_FILEPATH:Ljava/lang/String;

.field final NVMAP_FILEPATHES:[Ljava/lang/String;

.field final PVR_FILEPATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bKgsl:Z

    .line 44
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    .line 46
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bPvr:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "/sys/class/kgsl/kgsl"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->KGSL_FILEPATH:Ljava/lang/String;

    .line 50
    const-string v0, "/sys/kernel/debug/ion"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->ION_FILEPATH:Ljava/lang/String;

    .line 52
    const-string v0, "/proc/pvr/mem_areas"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->PVR_FILEPATH:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/d/nvmap/iovmm/clients"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/d/nvmap/iovmm/allocations"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->NVMAP_FILEPATHES:[Ljava/lang/String;

    return-void
.end method

.method private canCheckNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"

    .prologue
    .line 253
    const-string v3, "^\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 254
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 255
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 256
    .local v0, bPID:Z
    return v0
.end method

.method private convertByteToKB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "byteString"

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, killoByte:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v1, v2, 0x400
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "GraphicMemoryInfo"

    const-string v3, "NumberFormatException - can\'t parse Integer"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcFileNumber(Ljava/io/File;)I
    .locals 4
    .parameter "procdir"

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, files:[Ljava/io/File;
    const/4 v0, 0x0

    .line 125
    .local v0, countDirNumber:I
    if-eqz v1, :cond_1

    .line 126
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 127
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2           #i:I
    :cond_1
    return v0
.end method

.method private makeFileList(Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 146
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private makeIONMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 7
    .parameter "filepath"
    .parameter "bAllProc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 286
    .local v5, strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "\n--------------------------------------------ION Heap Start------------------------------------------\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, rootdir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 289
    const-string v6, "ION information doesn\'t exist. try again after $mount -t debugfs debugfs /sys/kernel/debug\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 309
    .end local v5           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v5

    .line 293
    .restart local v5       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, v4, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 297
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 298
    .local v1, file:Ljava/io/File;
    if-nez p2, :cond_2

    .line 300
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/GraphicMemoryInfo;->canCheckNumber(Ljava/lang/String;)Z

    move-result v0

    .line 301
    .local v0, bPID:Z
    if-nez v0, :cond_1

    .line 305
    .end local v0           #bPID:Z
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 306
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 308
    .end local v1           #file:Ljava/io/File;
    :cond_3
    const-string v6, "--------------------------------------------ION Heap End----------------------------------------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeKgslMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 20
    .parameter "filepath"
    .parameter "bAllFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 323
    .local v15, strBuffer:Ljava/lang/StringBuffer;
    const-string v17, "\n--------------------------------------------KGSL Heap Start-----------------------------------------\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v14, rootdir:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 326
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/server/am/GraphicMemoryInfo;->bKgsl:Z

    .line 327
    const-string v17, "KGSL information doesn\'t exist\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 380
    .end local v15           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v15

    .line 329
    .restart local v15       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v16, systemWide:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v12, procList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    if-eqz p2, :cond_1

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/server/am/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 335
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 336
    .local v4, files:Ljava/io/File;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v15, v1}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 337
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    const-string v17, "GraphicMemoryInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "has read"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v4           #files:Ljava/io/File;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v13, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/proc"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v13, procdir:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/server/am/GraphicMemoryInfo;->makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 347
    .local v10, pidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 350
    .local v7, pid:I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 351
    .local v9, pidLength:I
    const/4 v8, 0x0

    .line 352
    .local v8, pidIndex:I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 353
    .local v11, procDirLength:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/GraphicMemoryInfo;->getProcFileNumber(Ljava/io/File;)I

    move-result v17

    div-int v2, v11, v17

    .line 355
    .local v2, devideNumber:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v11, :cond_4

    .line 358
    rem-int v17, v5, v2

    if-nez v17, :cond_2

    .line 361
    if-ge v8, v9, :cond_2

    .line 362
    :try_start_0
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 363
    add-int/lit8 v8, v8, 0x1

    .line 371
    :cond_2
    :goto_3
    if-nez p2, :cond_3

    .line 373
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "kernel"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 355
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 365
    :catch_0
    move-exception v3

    .line 366
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v17, "GraphicMemoryInfo"

    const-string v18, "NumberFormatException - can\'t parse Integer"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 367
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 368
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "GraphicMemoryInfo"

    const-string v18, "IndexOutOfBoundsException - can\'t find index"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 377
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v7}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    goto :goto_4

    .line 379
    :cond_4
    const-string v17, "--------------------------------------------KGSL Heap End---------------------------------------------"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private makeNvmapMemoryInfo([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 391
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 392
    .local v2, strBuffer:Ljava/lang/StringBuffer;
    const-string v3, "\n--------------------------------------------NVmap Heap start----------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    new-instance v1, Ljava/io/File;

    aget-object v3, p1, v4

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, file_client:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, file_allocations:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    sput-boolean v4, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    .line 398
    const-string v3, "Nvmap information doesn\'t exist\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 404
    .end local v2           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v2

    .line 401
    .restart local v2       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 402
    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 403
    const-string v3, "--------------------------------------------NVmap Heap End----------------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, files:[Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v5, subDir:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, procDir:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 167
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 168
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    aget-object v7, v1, v2

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    .end local v2           #i:I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 179
    .local v6, subDirLength:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 181
    :try_start_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 183
    .local v3, index:I
    if-eqz v1, :cond_2

    .line 184
    aget-object v7, v1, v3

    invoke-direct {p0, v7, p2}, Lcom/android/server/am/GraphicMemoryInfo;->makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v3           #index:I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "GraphicMemoryInfo"

    const-string v8, "NumberFormatException - can\'t parse Integer"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 191
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    return-object v4
.end method

.method private makePvrMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 9
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 415
    .local v6, strBuffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v4, pidAllocPage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v5, pidVmalloc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v7, "\n--------------------------------------------PVR Heap start-------------------------------------------\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v1, file_client:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 420
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    .line 421
    const-string v7, "PVR information doesn\'t exist.\nenable pvr debug feature(DEBUG_LINUX_MEM_AREAS)\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 445
    .end local v6           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v6

    .line 426
    .restart local v6       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/am/GraphicMemoryInfo;->parsePVRByPID(Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 429
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    .local v2, itrAlloc:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 433
    .local v3, itrVmalloc:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const-string v7, "<LINUX_MEM_AREA_ALLOC_PAGES>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 436
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[KB]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 439
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    const-string v7, "<LINUX_MEM_AREA_VMALLOC>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 442
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[KB]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 444
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string v7, "--------------------------------------------PVR Heap End-------------------------------------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private mountDebugfs()V
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "adb shell mount -t debugfs debugfs /sys/kernel/debug"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "GraphicMemoryInfo"

    const-string v3, "IOException - Can\'t mount debugfs"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v1, :cond_0

    .line 110
    throw v1

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 110
    throw v1

    :cond_1
    throw v2
.end method

.method private parsePVRByPID(Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 16
    .parameter "file"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, alloc_pageMmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, vmallocMmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 451
    .local v1, br:Ljava/io/BufferedReader;
    const-string v8, "([a-z0-9]+)\\s+(\\d+)\\s+(\\d+)\\s+"

    .line 452
    .local v8, page_allpcRegx:Ljava/lang/String;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 453
    .local v7, page_allocPattern:Ljava/util/regex/Pattern;
    const-string v13, "([a-z0-9]+)\\s+([a-z0-9]+)\\s+(\\d+)\\s+(\\d+)\\s+"

    .line 454
    .local v13, vmallocRegx:Ljava/lang/String;
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 455
    .local v12, vmallocPattern:Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 456
    .local v5, matcher:Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 457
    .local v9, pid:I
    const/4 v11, 0x0

    .line 459
    .local v11, size:I
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 460
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    if-eqz v2, :cond_3

    .line 461
    const/4 v10, 0x0

    .line 463
    .local v10, s:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 465
    const-string v14, "LINUX_MEM_AREA_ALLOC_PAGES"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 469
    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 470
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v14

    if-eqz v14, :cond_1

    .line 472
    const/4 v14, 0x3

    :try_start_2
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 473
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 480
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, currentSize:I
    const/4 v6, 0x0

    .line 483
    .local v6, newSize:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 484
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 486
    :cond_2
    add-int v6, v3, v11

    .line 487
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 520
    .end local v3           #currentSize:I
    .end local v6           #newSize:I
    :catch_0
    move-exception v14

    .line 524
    .end local v10           #s:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_b

    .line 526
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v1, v2

    .line 531
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    return-void

    .line 474
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #s:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 475
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v14, "GraphicMemoryInfo"

    const-string v15, "NullPointerException - Can\'t get group information regarding Page_alloc:"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 522
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v14

    move-object v1, v2

    .line 524
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v10           #s:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v1, :cond_4

    .line 526
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 527
    :catch_3
    move-exception v14

    goto :goto_2

    .line 489
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #s:Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 524
    :catchall_0
    move-exception v14

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v10           #s:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_4
    if-eqz v1, :cond_6

    .line 526
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 528
    :cond_6
    :goto_5
    throw v14

    .line 491
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #s:Ljava/lang/String;
    :cond_7
    :try_start_9
    const-string v14, "LINUX_MEM_AREA_VMALLOC"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 495
    invoke-virtual {v12, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 496
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    move-result v14

    if-eqz v14, :cond_8

    .line 498
    const/4 v14, 0x4

    :try_start_a
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 499
    const/4 v14, 0x3

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    move-result v11

    .line 506
    :cond_8
    :goto_6
    :try_start_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 507
    const/4 v3, 0x0

    .line 508
    .restart local v3       #currentSize:I
    const/4 v6, 0x0

    .line 510
    .restart local v6       #newSize:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 511
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 513
    :cond_9
    add-int v6, v3, v11

    .line 514
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 500
    .end local v3           #currentSize:I
    .end local v6           #newSize:I
    :catch_4
    move-exception v4

    .line 501
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v14, "GraphicMemoryInfo"

    const-string v15, "NullPointerException - Can\'t get group information regarding Vmalloc:"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 516
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 527
    .end local v10           #s:Ljava/lang/String;
    :catch_5
    move-exception v14

    move-object v1, v2

    .line 528
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 527
    :catch_6
    move-exception v15

    goto :goto_5

    .line 524
    :catchall_1
    move-exception v14

    goto/16 :goto_4

    .line 522
    :catch_7
    move-exception v14

    goto/16 :goto_3

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_b
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V
    .locals 8
    .parameter "file"
    .parameter "strBuffer"
    .parameter "pid"

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, br:Ljava/io/BufferedReader;
    if-lez p3, :cond_2

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 211
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    if-eqz v2, :cond_0

    .line 212
    const/4 v4, 0x0

    .line 214
    .local v4, s:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 215
    if-lez p3, :cond_4

    .line 216
    invoke-direct {p0, v4}, Lcom/android/server/am/GraphicMemoryInfo;->canCheckNumber(Ljava/lang/String;)Z

    move-result v0

    .line 217
    .local v0, bNumber:Z
    if-eqz v0, :cond_3

    .line 218
    invoke-direct {p0, v4}, Lcom/android/server/am/GraphicMemoryInfo;->convertByteToKB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<KB>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    .end local v0           #bNumber:Z
    :goto_2
    const/16 v5, 0xa

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 228
    :catch_0
    move-exception v3

    .line 229
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "GraphicMemoryInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException - Can\'t read file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_6

    .line 237
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 243
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    return-void

    .line 206
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 221
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #bNumber:Z
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 232
    .end local v0           #bNumber:Z
    :catch_1
    move-exception v3

    move-object v1, v2

    .line 233
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v5, "GraphicMemoryInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException - can\'t find file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 235
    if-eqz v1, :cond_1

    .line 237
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 238
    :catch_2
    move-exception v3

    .line 239
    .local v3, e:Ljava/io/IOException;
    const-string v5, "GraphicMemoryInfo"

    const-string v6, "IOException - Can\'t close bufferead"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 224
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 235
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_5
    if-eqz v1, :cond_5

    .line 237
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 240
    :cond_5
    :goto_6
    throw v5

    .line 238
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 239
    .restart local v3       #e:Ljava/io/IOException;
    const-string v5, "GraphicMemoryInfo"

    const-string v6, "IOException - Can\'t close bufferead"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 240
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 238
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 239
    .restart local v3       #e:Ljava/io/IOException;
    const-string v6, "GraphicMemoryInfo"

    const-string v7, "IOException - Can\'t close bufferead"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 235
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 232
    :catch_5
    move-exception v3

    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_6
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method


# virtual methods
.method public printGraphicMemory()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1fa0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 65
    .local v1, strBuffer:Ljava/lang/StringBuffer;
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bKgsl:Z

    if-eqz v2, :cond_0

    .line 67
    :try_start_0
    const-string v2, "/sys/class/kgsl/kgsl"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/GraphicMemoryInfo;->makeKgslMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    if-eqz v2, :cond_1

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/GraphicMemoryInfo;->NVMAP_FILEPATHES:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makeNvmapMemoryInfo([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bPvr:Z

    if-eqz v2, :cond_2

    .line 85
    :try_start_2
    const-string v2, "/proc/pvr/mem_areas"

    invoke-direct {p0, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makePvrMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    :cond_2
    :goto_2
    :try_start_3
    const-string v2, "/sys/kernel/debug/ion"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/GraphicMemoryInfo;->makeIONMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 96
    :goto_3
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 77
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 92
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 93
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3
.end method
