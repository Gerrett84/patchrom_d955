.class Lcom/android/lgesettings/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "sortingKey"

    .prologue
    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/android/lgesettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 309
    return-void
.end method

.method private getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "displayName"

    .prologue
    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, check:I
    const/16 v10, 0x34

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "a"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "b"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "c"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "e"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "f"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "g"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "h"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "i"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "j"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "k"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "l"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "m"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "n"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "o"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "p"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string v11, "q"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string v11, "r"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string v11, "s"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string v11, "t"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "u"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "v"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "w"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "x"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "y"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, "z"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "A"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, "B"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const-string v11, "C"

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const-string v11, "D"

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const-string v11, "E"

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, "F"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const-string v11, "G"

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const-string v11, "H"

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "I"

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const-string v11, "J"

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string v11, "K"

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const-string v11, "L"

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string v11, "M"

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const-string v11, "N"

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string v11, "O"

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const-string v11, "P"

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "Q"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "R"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const-string v11, "S"

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const-string v11, "T"

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const-string v11, "U"

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const-string v11, "V"

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "W"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string v11, "X"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string v11, "Y"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const-string v11, "Z"

    aput-object v11, v9, v10

    .line 353
    .local v9, words:[Ljava/lang/String;
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 355
    .local v0, aStart:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 356
    const/4 v2, 0x1

    .line 353
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v0           #aStart:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    if-ne v2, v10, :cond_4

    .line 360
    move-object v6, p1

    .line 361
    .local v6, ss:Ljava/lang/String;
    const-string v10, "the "

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "a "

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "an "

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 363
    :cond_2
    const-string v10, "the "

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 364
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 365
    move-object v1, v9

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 367
    .restart local v0       #aStart:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 368
    const/4 v2, 0x0

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 371
    :cond_3
    const/4 v2, 0x1

    .line 412
    .end local v0           #aStart:Ljava/lang/String;
    .end local v6           #ss:Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v10, 0x1

    if-ne v2, v10, :cond_a

    .line 430
    .end local v3           #i$:I
    .end local p1
    :cond_5
    :goto_3
    return-object p1

    .line 377
    .restart local v3       #i$:I
    .restart local v6       #ss:Ljava/lang/String;
    .restart local p1
    :cond_6
    const-string v10, "a "

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 378
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 379
    move-object v1, v9

    array-length v4, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 381
    .restart local v0       #aStart:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 382
    const/4 v2, 0x0

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 385
    :cond_7
    const/4 v2, 0x1

    .line 386
    goto :goto_2

    .line 390
    .end local v0           #aStart:Ljava/lang/String;
    :cond_8
    const-string v10, "an "

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 391
    const/4 v10, 0x3

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 392
    move-object v1, v9

    array-length v4, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 394
    .restart local v0       #aStart:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 395
    const/4 v2, 0x0

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 398
    :cond_9
    const/4 v2, 0x1

    .line 399
    goto :goto_2

    .line 416
    .end local v0           #aStart:Ljava/lang/String;
    .end local v6           #ss:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/HanziToPinyin;->getInstance()Lcom/android/lgesettings/HanziToPinyin;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/lgesettings/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 417
    .local v8, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/HanziToPinyin$Token;>;"
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/lgesettings/HanziToPinyin$Token;

    .line 420
    .local v7, token:Lcom/android/lgesettings/HanziToPinyin$Token;
    const/4 v10, 0x2

    iget v11, v7, Lcom/android/lgesettings/HanziToPinyin$Token;->type:I

    if-ne v10, v11, :cond_b

    .line 421
    iget-object v10, v7, Lcom/android/lgesettings/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 425
    :cond_b
    iget-object v10, v7, Lcom/android/lgesettings/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 428
    .end local v7           #token:Lcom/android/lgesettings/HanziToPinyin$Token;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 345
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/ZonePicker$MyComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;",
            "Ljava/util/HashMap",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, map1:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    .local p2, map2:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    iget-object v2, p0, Lcom/android/lgesettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/lgesettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/ZonePicker$MyComparator;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, value1:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/ZonePicker$MyComparator;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .end local v0           #value1:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 336
    invoke-direct {p0, v1}, Lcom/android/lgesettings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 341
    :goto_1
    return v2

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, value1:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/lgesettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, value2:Ljava/lang/Object;
    goto :goto_0

    .line 336
    .end local v0           #value1:Ljava/lang/Object;
    .end local v1           #value2:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 337
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/lgesettings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 338
    const/4 v2, -0x1

    goto :goto_1

    .line 341
    :cond_3
    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1
.end method
