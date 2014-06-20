.class public Lcom/android/providers/settings/SettingsProviderParser;
.super Ljava/lang/Object;
.source "SettingsProviderParser.java"


# static fields
.field protected static SETTINGSPROVIDER_CONFIG_PREFERENCE:Ljava/lang/String;

.field private static allCAItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem;",
            ">;"
        }
    .end annotation
.end field

.field private static allCAItems_vdf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem;",
            ">;"
        }
    .end annotation
.end field

.field private static currentGid:Ljava/lang/String;

.field private static currentIccid:Ljava/lang/String;

.field private static currentImsi:Ljava/lang/String;

.field private static currentItem:Lcom/android/providers/settings/CAItem;

.field private static currentItem_vdf:Lcom/android/providers/settings/CAItem;

.field private static currentMcc:Ljava/lang/String;

.field private static currentMnc:Ljava/lang/String;

.field private static currentSpn:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "SettingsProviderSharedPreference"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->SETTINGSPROVIDER_CONFIG_PREFERENCE:Ljava/lang/String;

    .line 58
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    .line 59
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems_vdf:Ljava/util/ArrayList;

    .line 60
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    .line 61
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    .line 64
    const-string v0, "0"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    .line 65
    const-string v0, "0"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    .line 66
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    .line 67
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->currentSpn:Ljava/lang/String;

    .line 68
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    .line 69
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser;->currentIccid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static getCAItem(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem;",
            ">;)",
            "Lcom/android/providers/settings/CAItem;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v12, matchedItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem;>;"
    const/4 v3, 0x0

    .line 468
    .local v3, basic_matched_item:Lcom/android/providers/settings/CAItem;
    const/4 v5, 0x0

    .line 469
    .local v5, gid_matched_item:Lcom/android/providers/settings/CAItem;
    const/16 v17, 0x0

    .line 470
    .local v17, spn_matched_item:Lcom/android/providers/settings/CAItem;
    const/4 v8, 0x0

    .line 471
    .local v8, imsi_matched_item:Lcom/android/providers/settings/CAItem;
    const/4 v2, 0x0

    .line 473
    .local v2, aging_count:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/settings/CAItem;

    .line 474
    .local v9, item:Lcom/android/providers/settings/CAItem;
    iget-object v0, v9, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    iget-object v0, v9, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 475
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getCAItem() current item : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v9           #item:Lcom/android/providers/settings/CAItem;
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/providers/settings/CAItem;

    .line 481
    .local v11, matched:Lcom/android/providers/settings/CAItem;
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 483
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem() MCC,MNC matched "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 486
    const/4 v4, 0x1

    .line 487
    .local v4, gid_matched:Z
    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v15

    .line 488
    .local v15, runtimeGid_length:I
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 491
    .local v13, parsed_Gid_length:I
    const/4 v10, 0x0

    .line 492
    .local v10, j:I
    :goto_2
    if-ge v10, v13, :cond_3

    if-ge v10, v15, :cond_3

    .line 493
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 494
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "MisMatch getCAItem GID GID"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MisMatch part 11: matched.mGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MisMatch part 12: currentGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v4, 0x0

    .line 508
    :cond_3
    if-eqz v13, :cond_2

    if-eqz v4, :cond_2

    .line 509
    move-object v5, v11

    .line 510
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BINGO!! gid matched GID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 501
    :cond_4
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "Match getCAItem GID GID"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Match part 21: matched.mGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Match part 22:  currentGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 514
    .end local v4           #gid_matched:Z
    .end local v10           #j:I
    .end local v13           #parsed_Gid_length:I
    .end local v15           #runtimeGid_length:I
    :cond_5
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 515
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem() mSpn no empty "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentSpn:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 519
    move-object/from16 v17, v11

    .line 520
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BINGO!! spn matched"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 524
    :cond_6
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 526
    const/4 v7, 0x1

    .line 527
    .local v7, imsi_matched:Z
    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v16

    .line 528
    .local v16, runtimeImsi_length:I
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v14

    .line 530
    .local v14, parsed_imsi_length:I
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem() mImsi no empty "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v10, 0x0

    .line 533
    .restart local v10       #j:I
    :goto_3
    if-ge v10, v14, :cond_9

    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    .line 534
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x78

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 535
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem() mImsi.charAt(j) == \'x\'"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 537
    :cond_8
    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 539
    const/4 v7, 0x0

    .line 540
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 matched.mImsi.charAt(j) != currentImsi.charAt(j)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_9
    if-eqz v14, :cond_2

    if-eqz v7, :cond_2

    .line 547
    move-object v8, v11

    .line 548
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BINGO!! imsi matched IMSI = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 552
    .end local v7           #imsi_matched:Z
    .end local v10           #j:I
    .end local v14           #parsed_imsi_length:I
    .end local v16           #runtimeImsi_length:I
    :cond_a
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "BINGO!! just only matched Mcc/Mnc"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object v3, v11

    goto/16 :goto_1

    .line 559
    .end local v11           #matched:Lcom/android/providers/settings/CAItem;
    :cond_b
    if-eqz v5, :cond_c

    .end local v5           #gid_matched_item:Lcom/android/providers/settings/CAItem;
    :goto_4
    return-object v5

    .restart local v5       #gid_matched_item:Lcom/android/providers/settings/CAItem;
    :cond_c
    if-eqz v17, :cond_d

    move-object/from16 v5, v17

    goto :goto_4

    :cond_d
    if-eqz v8, :cond_e

    move-object v5, v8

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    move-object v5, v3

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    goto :goto_4
.end method

.method private static getCAItem_VDF(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem;
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem;",
            ">;)",
            "Lcom/android/providers/settings/CAItem;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, items_vdf:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v11, matchedItem_vdf:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem;>;"
    const/4 v2, 0x0

    .line 570
    .local v2, basic_matched_item:Lcom/android/providers/settings/CAItem;
    const/4 v4, 0x0

    .line 571
    .local v4, gid_matched_item:Lcom/android/providers/settings/CAItem;
    const/16 v16, 0x0

    .line 572
    .local v16, spn_matched_item:Lcom/android/providers/settings/CAItem;
    const/4 v7, 0x0

    .line 574
    .local v7, imsi_matched_item:Lcom/android/providers/settings/CAItem;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/settings/CAItem;

    .line 575
    .local v8, item:Lcom/android/providers/settings/CAItem;
    iget-object v0, v8, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    iget-object v0, v8, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 576
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getCAItem_VDF() current item : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v8, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v8, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    .end local v8           #item:Lcom/android/providers/settings/CAItem;
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/providers/settings/CAItem;

    .line 582
    .local v10, matched:Lcom/android/providers/settings/CAItem;
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 584
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "getCAItem_VDF() MCC,MNC matched "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 587
    const/4 v3, 0x1

    .line 588
    .local v3, gid_matched:Z
    sget-object v17, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    .line 589
    .local v14, runtimeGid_length:I
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12

    .line 592
    .local v12, parsed_Gid_length:I
    const/4 v9, 0x0

    .line 593
    .local v9, j:I
    :goto_2
    if-ge v9, v12, :cond_3

    if-ge v9, v14, :cond_3

    .line 594
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 595
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "MisMatch getCAItem_VDF GID GID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MisMatch part 11 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MisMatch part 12  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v3, 0x0

    .line 609
    :cond_3
    if-eqz v12, :cond_2

    if-eqz v3, :cond_2

    .line 610
    move-object v4, v10

    .line 611
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VDF BINGO!! gid matched GID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 602
    :cond_4
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "Match getCAItem_VDF GID GID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Match part 21 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Match part 22 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 615
    .end local v3           #gid_matched:Z
    .end local v9           #j:I
    .end local v12           #parsed_Gid_length:I
    .end local v14           #runtimeGid_length:I
    :cond_5
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 617
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentSpn:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 619
    move-object/from16 v16, v10

    .line 620
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VDF BINGO!! spn matched SPN = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 624
    :cond_6
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 626
    const/4 v6, 0x1

    .line 627
    .local v6, imsi_matched:Z
    sget-object v17, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v15

    .line 628
    .local v15, runtimeImsi_length:I
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .line 630
    .local v13, parsed_imsi_length:I
    const/4 v9, 0x0

    .line 631
    .restart local v9       #j:I
    :goto_3
    if-ge v9, v13, :cond_9

    if-ge v9, v15, :cond_9

    .line 632
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 631
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 634
    :cond_8
    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 636
    const/4 v6, 0x0

    .line 642
    :cond_9
    if-eqz v13, :cond_2

    if-eqz v6, :cond_2

    .line 643
    move-object v7, v10

    .line 644
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VDF BINGO!! imsi matched IMSI = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 648
    .end local v6           #imsi_matched:Z
    .end local v9           #j:I
    .end local v13           #parsed_imsi_length:I
    .end local v15           #runtimeImsi_length:I
    :cond_a
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "VDF BINGO!! just only matched Mcc/Mnc"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object v2, v10

    .line 650
    const/4 v4, 0x0

    .line 657
    .end local v4           #gid_matched_item:Lcom/android/providers/settings/CAItem;
    .end local v10           #matched:Lcom/android/providers/settings/CAItem;
    :cond_b
    :goto_4
    return-object v4

    .restart local v4       #gid_matched_item:Lcom/android/providers/settings/CAItem;
    :cond_c
    if-nez v4, :cond_b

    if-eqz v16, :cond_d

    move-object/from16 v4, v16

    goto :goto_4

    :cond_d
    if-eqz v7, :cond_e

    move-object v4, v7

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_f

    move-object v4, v2

    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private static getRuntimeGidCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 792
    const-string v1, "gsm.sim.operator.gid"

    invoke-static {v1}, Lcom/android/providers/settings/SettingsProviderParser;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, gid:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    :cond_0
    const-string v0, "Default"

    .line 797
    .end local v0           #gid:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getRuntimeIccIdCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    sget-object v1, Lcom/android/providers/settings/SettingsProviderParser;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, iccid:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    :cond_0
    const-string v0, "Default"

    .line 816
    .end local v0           #iccid:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getRuntimeImsiCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 801
    sget-object v1, Lcom/android/providers/settings/SettingsProviderParser;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    :cond_0
    const-string v0, "Default"

    .line 806
    .end local v0           #imsi:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getRuntimeMccCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 726
    const-string v5, "0"

    .line 727
    .local v5, retValue:Ljava/lang/String;
    const/4 v0, 0x0

    .line 728
    .local v0, mccCode:Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, simOperator:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 732
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_0

    .line 733
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_0
    if-eqz v0, :cond_1

    .line 738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 739
    move-object v5, v0

    .line 743
    :cond_1
    const-string v8, "1"

    const-string v11, "ro.build.regional"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 746
    const-string v8, "SettingsProviderInitializer"

    const-string v11, "ro.build.regional : true"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v8, "persist.radio.mcc-list"

    const-string v11, "FFF"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, mccList:Ljava/lang/String;
    const-string v8, "SettingsProviderInitializer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mccList : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v8, "FFF"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v9

    .line 750
    .local v3, regional:Z
    :goto_0
    const-string v8, "FFF"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v3, :cond_7

    move v2, v9

    .line 751
    .local v2, nonRegional:Z
    :goto_1
    const-string v8, "SettingsProviderInitializer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "regional : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "nonRegional : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v3, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 753
    const-string v5, "0"

    .line 754
    const-string v8, "SettingsProviderInitializer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retValue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_2
    if-eqz v2, :cond_3

    .line 757
    move-object v5, v1

    .line 758
    const-string v8, "SettingsProviderInitializer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retValue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    if-nez v3, :cond_4

    if-eqz v2, :cond_8

    :cond_4
    move v6, v9

    .line 764
    .local v6, setToRegion:Z
    :goto_2
    if-nez v6, :cond_5

    .line 765
    const-string v8, "persist.sys.regional-mcc"

    const-string v9, "FFF"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, regional_mcc:Ljava/lang/String;
    const-string v8, "SettingsProviderInitializer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "regional_mcc : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object v5, v4

    .line 769
    const-string v8, "FFF"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 770
    const-string v5, "0"

    .line 779
    .end local v1           #mccList:Ljava/lang/String;
    .end local v2           #nonRegional:Z
    .end local v3           #regional:Z
    .end local v4           #regional_mcc:Ljava/lang/String;
    .end local v6           #setToRegion:Z
    :cond_5
    :goto_3
    return-object v5

    .restart local v1       #mccList:Ljava/lang/String;
    :cond_6
    move v3, v10

    .line 749
    goto/16 :goto_0

    .restart local v3       #regional:Z
    :cond_7
    move v2, v10

    .line 750
    goto/16 :goto_1

    .restart local v2       #nonRegional:Z
    :cond_8
    move v6, v10

    .line 762
    goto :goto_2

    .line 774
    .end local v1           #mccList:Ljava/lang/String;
    .end local v2           #nonRegional:Z
    .end local v3           #regional:Z
    :cond_9
    const-string v8, "SettingsProviderInitializer"

    const-string v9, "ro.build.regional : false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static getRuntimeMncCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    .line 705
    const-string v1, "0"

    .line 706
    .local v1, retValue:Ljava/lang/String;
    const/4 v0, 0x0

    .line 707
    .local v0, mncCode:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, simOperator:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 712
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    :cond_0
    if-eqz v0, :cond_1

    .line 717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 718
    move-object v1, v0

    .line 722
    :cond_1
    return-object v1
.end method

.method private static getRuntimeSpnCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    sget-object v1, Lcom/android/providers/settings/SettingsProviderParser;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    :cond_0
    const-string v0, "Default"

    .line 788
    .end local v0           #spn:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 823
    :try_start_0
    sget-object v0, Lcom/android/providers/settings/SettingsProviderParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 824
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 828
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 829
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 831
    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 834
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 835
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 837
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    :goto_0
    return-object v0

    .line 839
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 841
    goto :goto_0

    .line 840
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static initSettingsProvider(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, retValue:Z
    sput-object p0, Lcom/android/providers/settings/SettingsProviderParser;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProviderParser;->loadXMLSettings(Landroid/content/Context;)Z

    move-result v0

    .line 80
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    .line 81
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    .line 82
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems_vdf:Ljava/util/ArrayList;

    .line 83
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    .line 85
    return v0
.end method

.method public static isNeedChangeProfile(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "shedprefSetProvConfig"

    .prologue
    .line 446
    const-string v2, "realImsi"

    const-string v3, "Default"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, savedIccid:Ljava/lang/String;
    const-string v2, "SettingsProviderInitializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedChangeProfile = savedIccid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / currentIccid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/settings/SettingsProviderParser;->currentIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v2, Lcom/android/providers/settings/SettingsProviderParser;->currentIccid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const/4 v2, 0x0

    .line 462
    :goto_0
    return v2

    .line 457
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 458
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "realImsi"

    sget-object v3, Lcom/android/providers/settings/SettingsProviderParser;->currentIccid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static loadXMLSettings(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    if-nez p0, :cond_0

    move v5, v6

    .line 235
    :goto_0
    return v5

    .line 93
    :cond_0
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems_vdf:Ljava/util/ArrayList;

    .line 99
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->SETTINGSPROVIDER_CONFIG_PREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 103
    .local v4, shedprefSetProvConfig:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProviderParser;->getRuntimeMccCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProviderParser;->getRuntimeMncCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderParser;->getRuntimeGidCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderParser;->getRuntimeSpnCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentSpn:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderParser;->getRuntimeImsiCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/android/providers/settings/SettingsProviderParser;->getRuntimeIccIdCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentIccid:Ljava/lang/String;

    .line 112
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentMcc [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentMcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] currentMnc [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentMnc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] currentGid [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentGid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentSpn [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] currentImsi [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentImsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "VDF"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "COM"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 119
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems_vdf:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser;->parseConfigurationXml_VDF(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 120
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "shlee1219 parseConfigurationXml_VDF(context, allCAItems) == false  "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 122
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "shlee1219 parseConfigurationXml(context, allCAItems) == true  "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    :goto_1
    :try_start_0
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "VDF"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "COM"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 144
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems_vdf:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProviderParser;->getCAItem_VDF(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    .line 145
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXMLSettings VDF currentItem_vdf -1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    if-nez v5, :cond_2

    const-string v5, "ro.lge.autoprofile"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProviderParser;->getCAItem(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    .line 148
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXMLSettings VDF autoprofile currentItem-2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    if-eqz v5, :cond_8

    .line 155
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentItem_vdf != null currentItem_vdf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v4, :cond_7

    .line 158
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProviderParser;->isNeedChangeProfile(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 162
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 168
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    iget-object v5, v5, Lcom/android/providers/settings/CAItem;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/CAItem$SettingItem;

    .line 169
    .local v3, settings:Lcom/android/providers/settings/CAItem$SettingItem;
    iget-object v5, v3, Lcom/android/providers/settings/CAItem$SettingItem;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/providers/settings/CAItem$SettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 224
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #settings:Lcom/android/providers/settings/CAItem$SettingItem;
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "SettingsProviderInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentItem : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "SettingsProviderInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentItem_vdf : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 230
    goto/16 :goto_0

    .line 123
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    const-string v5, "SettingsProviderInitializer"

    const-string v7, "shlee1219 parseConfigurationXml(context, allCAItems) == false  "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 125
    goto/16 :goto_0

    .line 127
    :cond_4
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems_vdf:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser;->parseConfigurationXml_VDF(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 128
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "shlee1219 parseConfigurationXml_VDF(context, allCAItems) == true  "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_1

    .line 132
    :cond_5
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 133
    goto/16 :goto_0

    .line 171
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v7

    .line 172
    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    move v5, v6

    .line 175
    goto/16 :goto_0

    .line 176
    :cond_8
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    if-nez v5, :cond_e

    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    if-eqz v5, :cond_e

    .line 178
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentItem_vdf == null/ currentItem != null  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentItem_vdf:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v4, :cond_a

    .line 182
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProviderParser;->isNeedChangeProfile(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 186
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 190
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    iget-object v5, v5, Lcom/android/providers/settings/CAItem;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/CAItem$SettingItem;

    .line 191
    .restart local v3       #settings:Lcom/android/providers/settings/CAItem$SettingItem;
    iget-object v5, v3, Lcom/android/providers/settings/CAItem$SettingItem;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/providers/settings/CAItem$SettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 193
    .end local v3           #settings:Lcom/android/providers/settings/CAItem$SettingItem;
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v7

    .line 194
    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_a
    move v5, v6

    .line 197
    goto/16 :goto_0

    .line 200
    :cond_b
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->allCAItems:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProviderParser;->getCAItem(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    .line 201
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXMLSettings Normal currentItem : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    if-eqz v5, :cond_e

    .line 204
    if-eqz v4, :cond_d

    .line 206
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProviderParser;->isNeedChangeProfile(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 210
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 214
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser;->currentItem:Lcom/android/providers/settings/CAItem;

    iget-object v5, v5, Lcom/android/providers/settings/CAItem;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/CAItem$SettingItem;

    .line 215
    .restart local v3       #settings:Lcom/android/providers/settings/CAItem$SettingItem;
    iget-object v5, v3, Lcom/android/providers/settings/CAItem$SettingItem;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/providers/settings/CAItem$SettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 217
    .end local v3           #settings:Lcom/android/providers/settings/CAItem$SettingItem;
    :cond_c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v7

    .line 218
    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_d
    move v5, v6

    .line 221
    goto/16 :goto_0

    :cond_e
    move v5, v6

    .line 235
    goto/16 :goto_0
.end method

.method private static parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem;>;"
    const/4 v6, 0x0

    .line 243
    .local v6, retValue:Z
    const-string v9, "SettingsProviderInitializer"

    const-string v10, "shlee1219 parseConfigurationXml() START  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz p0, :cond_c

    .line 248
    const/4 v5, 0x0

    .line 249
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "VDF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "ro.build.target_country"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "COM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 251
    const-string v9, "SettingsProviderInitializer"

    const-string v10, "settings_provider_config_eu xml Loading  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 258
    :goto_0
    if-eqz v5, :cond_b

    .line 259
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 260
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 261
    .local v4, eventType:I
    const/4 v1, 0x0

    .line 263
    .local v1, caItem:Lcom/android/providers/settings/CAItem;
    :goto_1
    const/4 v9, 0x1

    if-eq v4, v9, :cond_b

    .line 264
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 265
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, startTag:Ljava/lang/String;
    const-string v9, "profiles"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 268
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 322
    .end local v8           #startTag:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 323
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    goto :goto_1

    .line 255
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    .end local v4           #eventType:I
    :cond_1
    const-string v9, "SettingsProviderInitializer"

    const-string v10, "settings_provider_config xml Loading  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    goto :goto_0

    .line 269
    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem;
    .restart local v4       #eventType:I
    .restart local v8       #startTag:Ljava/lang/String;
    :cond_2
    const-string v9, "profile"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 270
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 271
    new-instance v1, Lcom/android/providers/settings/CAItem;

    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    invoke-direct {v1}, Lcom/android/providers/settings/CAItem;-><init>()V

    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem;
    goto :goto_2

    .line 273
    :cond_3
    const-string v9, "siminfo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 274
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 276
    .local v0, arrtCount:I
    if-eqz v1, :cond_0

    .line 277
    const/4 v2, 0x0

    .local v2, count:I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 278
    const-string v9, "mcc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 280
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    .line 277
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 283
    :cond_5
    const-string v9, "mnc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 285
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    goto :goto_4

    .line 328
    .end local v0           #arrtCount:I
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v8           #startTag:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    move v7, v6

    .line 337
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #retValue:Z
    .local v7, retValue:I
    :goto_5
    return v7

    .line 288
    .end local v7           #retValue:I
    .restart local v0       #arrtCount:I
    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #retValue:Z
    .restart local v8       #startTag:Ljava/lang/String;
    :cond_6
    const-string v9, "spn"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 290
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    goto :goto_4

    .line 293
    :cond_7
    const-string v9, "gid"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 295
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    goto :goto_4

    .line 298
    :cond_8
    const-string v9, "imsi"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 300
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    goto :goto_4

    .line 307
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    :cond_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 308
    .restart local v0       #arrtCount:I
    if-eqz v1, :cond_0

    .line 309
    const/4 v2, 0x0

    .restart local v2       #count:I
    :goto_6
    if-ge v2, v0, :cond_0

    .line 310
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/providers/settings/CAItem;->addSettingItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 316
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    .end local v8           #startTag:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x3

    if-ne v4, v9, :cond_0

    .line 317
    const-string v9, "profile"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 318
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 327
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    .end local v4           #eventType:I
    :cond_b
    const/4 v6, 0x1

    move v7, v6

    .line 337
    .restart local v7       #retValue:I
    goto :goto_5

    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #retValue:I
    :cond_c
    move v7, v6

    .line 333
    .restart local v7       #retValue:I
    goto :goto_5
.end method

.method private static parseConfigurationXml_VDF(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem;>;"
    const/4 v6, 0x0

    .line 346
    .local v6, retValue:Z
    const-string v11, "SettingsProviderInitializer"

    const-string v12, "shlee1219 parseConfigurationXml_VDF() START  "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-eqz p0, :cond_b

    .line 351
    const/4 v5, 0x0

    .line 353
    .local v5, parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v11, "ro.build.target_operator"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, target_operator:Ljava/lang/String;
    const-string v11, "ro.build.target_country"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, target_country:Ljava/lang/String;
    const-string v11, "SettingsProviderInitializer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseConfigurationXml_VDF()  target_operator : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / target_country : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f030001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 360
    if-eqz v5, :cond_a

    .line 361
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 362
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 363
    .local v4, eventType:I
    const/4 v1, 0x0

    .line 365
    .local v1, caItem:Lcom/android/providers/settings/CAItem;
    :goto_0
    const/4 v11, 0x1

    if-eq v4, v11, :cond_a

    .line 366
    const/4 v11, 0x2

    if-ne v4, v11, :cond_9

    .line 367
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, startTag:Ljava/lang/String;
    const-string v11, "profiles"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 370
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 424
    .end local v8           #startTag:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 425
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    goto :goto_0

    .line 371
    .restart local v8       #startTag:Ljava/lang/String;
    :cond_1
    const-string v11, "profile"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 372
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 373
    new-instance v1, Lcom/android/providers/settings/CAItem;

    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    invoke-direct {v1}, Lcom/android/providers/settings/CAItem;-><init>()V

    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem;
    goto :goto_1

    .line 375
    :cond_2
    const-string v11, "siminfo"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 376
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 378
    .local v0, arrtCount:I
    if-eqz v1, :cond_0

    .line 379
    const/4 v2, 0x0

    .local v2, count:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 380
    const-string v11, "mcc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 382
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem;->mMcc:Ljava/lang/String;

    .line 379
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    :cond_4
    const-string v11, "mnc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 387
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem;->mMnc:Ljava/lang/String;

    goto :goto_3

    .line 430
    .end local v0           #arrtCount:I
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v8           #startTag:Ljava/lang/String;
    .end local v9           #target_country:Ljava/lang/String;
    .end local v10           #target_operator:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    move v7, v6

    .line 439
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #retValue:Z
    .local v7, retValue:I
    :goto_4
    return v7

    .line 390
    .end local v7           #retValue:I
    .restart local v0       #arrtCount:I
    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #retValue:Z
    .restart local v8       #startTag:Ljava/lang/String;
    .restart local v9       #target_country:Ljava/lang/String;
    .restart local v10       #target_operator:Ljava/lang/String;
    :cond_5
    const-string v11, "spn"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 392
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem;->mSpn:Ljava/lang/String;

    goto :goto_3

    .line 395
    :cond_6
    const-string v11, "gid"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 397
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem;->mGid:Ljava/lang/String;

    goto :goto_3

    .line 400
    :cond_7
    const-string v11, "imsi"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 402
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem;->mImsi:Ljava/lang/String;

    goto :goto_3

    .line 409
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    :cond_8
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 410
    .restart local v0       #arrtCount:I
    if-eqz v1, :cond_0

    .line 411
    const/4 v2, 0x0

    .restart local v2       #count:I
    :goto_5
    if-ge v2, v0, :cond_0

    .line 412
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/android/providers/settings/CAItem;->addSettingItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 418
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    .end local v8           #startTag:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x3

    if-ne v4, v11, :cond_0

    .line 419
    const-string v11, "profile"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 420
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 429
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem;
    .end local v4           #eventType:I
    :cond_a
    const/4 v6, 0x1

    move v7, v6

    .line 439
    .restart local v7       #retValue:I
    goto :goto_4

    .end local v5           #parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #retValue:I
    .end local v9           #target_country:Ljava/lang/String;
    .end local v10           #target_operator:Ljava/lang/String;
    :cond_b
    move v7, v6

    .line 435
    .restart local v7       #retValue:I
    goto :goto_4
.end method
