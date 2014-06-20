.class public Lcom/android/providers/settings/SettingsProviderParser_Test;
.super Ljava/lang/Object;
.source "SettingsProviderParser_Test.java"


# static fields
.field protected static SETTINGSPROVIDER_CONFIG_PREFERENCE:Ljava/lang/String;

.field private static allCAItems_Test:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem_Test;",
            ">;"
        }
    .end annotation
.end field

.field private static allCAItems_Test_vdf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem_Test;",
            ">;"
        }
    .end annotation
.end field

.field private static currentGid:Ljava/lang/String;

.field private static currentIccid:Ljava/lang/String;

.field private static currentImsi:Ljava/lang/String;

.field private static currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

.field private static currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

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

    .line 55
    const-string v0, "SettingsProviderSharedPreference"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->SETTINGSPROVIDER_CONFIG_PREFERENCE:Ljava/lang/String;

    .line 57
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    .line 58
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test_vdf:Ljava/util/ArrayList;

    .line 59
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    .line 60
    sput-object v1, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    .line 63
    const-string v0, "0"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    .line 65
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    .line 66
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentSpn:Ljava/lang/String;

    .line 67
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    .line 68
    const-string v0, "Default"

    sput-object v0, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentIccid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method private static getCAItem_Test(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem_Test;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem_Test;",
            ">;)",
            "Lcom/android/providers/settings/CAItem_Test;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem_Test;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v12, matchedItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem_Test;>;"
    const/4 v3, 0x0

    .line 501
    .local v3, basic_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/4 v5, 0x0

    .line 502
    .local v5, gid_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/16 v17, 0x0

    .line 503
    .local v17, spn_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/4 v8, 0x0

    .line 504
    .local v8, imsi_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/4 v2, 0x0

    .line 506
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

    check-cast v9, Lcom/android/providers/settings/CAItem_Test;

    .line 507
    .local v9, item:Lcom/android/providers/settings/CAItem_Test;
    iget-object v0, v9, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    iget-object v0, v9, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 508
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getCAItem() current item : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    .end local v9           #item:Lcom/android/providers/settings/CAItem_Test;
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

    check-cast v11, Lcom/android/providers/settings/CAItem_Test;

    .line 514
    .local v11, matched:Lcom/android/providers/settings/CAItem_Test;
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 516
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem_Test() MCC,MNC matched "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 519
    const/4 v4, 0x1

    .line 520
    .local v4, gid_matched:Z
    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v15

    .line 521
    .local v15, runtimeGid_length:I
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 524
    .local v13, parsed_Gid_length:I
    const/4 v10, 0x0

    .line 525
    .local v10, j:I
    :goto_2
    if-ge v10, v13, :cond_3

    if-ge v10, v15, :cond_3

    .line 526
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 527
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MisMatch part 11: matched.mGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MisMatch part 12: currentGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v4, 0x0

    .line 539
    :cond_3
    if-eqz v13, :cond_2

    if-eqz v4, :cond_2

    .line 540
    move-object v5, v11

    .line 541
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BINGO!! gid matched GID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 533
    :cond_4
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Match part 21: matched.mGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Match part 22:  currentGid.charAt(j) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 545
    .end local v4           #gid_matched:Z
    .end local v10           #j:I
    .end local v13           #parsed_Gid_length:I
    .end local v15           #runtimeGid_length:I
    :cond_5
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 546
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem_Test() mSpn no empty "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentSpn:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 550
    move-object/from16 v17, v11

    .line 551
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BINGO!! spn matched"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 555
    :cond_6
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 557
    const/4 v7, 0x1

    .line 558
    .local v7, imsi_matched:Z
    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v16

    .line 559
    .local v16, runtimeImsi_length:I
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v14

    .line 561
    .local v14, parsed_imsi_length:I
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem_Test() mImsi no empty "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v10, 0x0

    .line 564
    .restart local v10       #j:I
    :goto_3
    if-ge v10, v14, :cond_9

    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    .line 565
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x78

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 566
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 getCAItem_Test() mImsi.charAt(j) == \'x\'"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 568
    :cond_8
    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 570
    const/4 v7, 0x0

    .line 571
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "shlee1219 matched.mImsi.charAt(j) != currentImsi.charAt(j)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_9
    if-eqz v14, :cond_2

    if-eqz v7, :cond_2

    .line 578
    move-object v8, v11

    .line 579
    const-string v18, "SettingsProviderInitializer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BINGO!! imsi matched IMSI = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 583
    .end local v7           #imsi_matched:Z
    .end local v10           #j:I
    .end local v14           #parsed_imsi_length:I
    .end local v16           #runtimeImsi_length:I
    :cond_a
    const-string v18, "SettingsProviderInitializer"

    const-string v19, "BINGO!! just only matched Mcc/Mnc"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move-object v3, v11

    goto/16 :goto_1

    .line 590
    .end local v11           #matched:Lcom/android/providers/settings/CAItem_Test;
    :cond_b
    if-eqz v5, :cond_c

    .end local v5           #gid_matched_item:Lcom/android/providers/settings/CAItem_Test;
    :goto_4
    return-object v5

    .restart local v5       #gid_matched_item:Lcom/android/providers/settings/CAItem_Test;
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

.method private static getCAItem_VDF(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem_Test;
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem_Test;",
            ">;)",
            "Lcom/android/providers/settings/CAItem_Test;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, items_vdf:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem_Test;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v11, matchedItem_vdf:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem_Test;>;"
    const/4 v2, 0x0

    .line 601
    .local v2, basic_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/4 v4, 0x0

    .line 602
    .local v4, gid_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/16 v16, 0x0

    .line 603
    .local v16, spn_matched_item:Lcom/android/providers/settings/CAItem_Test;
    const/4 v7, 0x0

    .line 605
    .local v7, imsi_matched_item:Lcom/android/providers/settings/CAItem_Test;
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

    check-cast v8, Lcom/android/providers/settings/CAItem_Test;

    .line 606
    .local v8, item:Lcom/android/providers/settings/CAItem_Test;
    iget-object v0, v8, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    iget-object v0, v8, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 607
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getCAItem_VDF() current item : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v8, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v8, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    .end local v8           #item:Lcom/android/providers/settings/CAItem_Test;
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

    check-cast v10, Lcom/android/providers/settings/CAItem_Test;

    .line 613
    .local v10, matched:Lcom/android/providers/settings/CAItem_Test;
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 615
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "shlee1219 getCAItem_VDF() MCC,MNC matched "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 618
    const/4 v3, 0x1

    .line 619
    .local v3, gid_matched:Z
    sget-object v17, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    .line 620
    .local v14, runtimeGid_length:I
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12

    .line 623
    .local v12, parsed_Gid_length:I
    const/4 v9, 0x0

    .line 624
    .local v9, j:I
    :goto_2
    if-ge v9, v12, :cond_3

    if-ge v9, v14, :cond_3

    .line 625
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 626
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "MisMatch getCAItem_VDF GID GID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MisMatch part 11 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MisMatch part 12  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v3, 0x0

    .line 640
    :cond_3
    if-eqz v12, :cond_2

    if-eqz v3, :cond_2

    .line 641
    move-object v4, v10

    .line 642
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VDF BINGO!! gid matched GID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 633
    :cond_4
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "Match getCAItem_VDF GID GID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Match part 21 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Match part 22 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 646
    .end local v3           #gid_matched:Z
    .end local v9           #j:I
    .end local v12           #parsed_Gid_length:I
    .end local v14           #runtimeGid_length:I
    :cond_5
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 648
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentSpn:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 650
    move-object/from16 v16, v10

    .line 651
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VDF BINGO!! spn matched SPN = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 655
    :cond_6
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 657
    const/4 v6, 0x1

    .line 658
    .local v6, imsi_matched:Z
    sget-object v17, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v15

    .line 659
    .local v15, runtimeImsi_length:I
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .line 661
    .local v13, parsed_imsi_length:I
    const/4 v9, 0x0

    .line 662
    .restart local v9       #j:I
    :goto_3
    if-ge v9, v13, :cond_9

    if-ge v9, v15, :cond_9

    .line 663
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 662
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 665
    :cond_8
    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    sget-object v18, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 667
    const/4 v6, 0x0

    .line 673
    :cond_9
    if-eqz v13, :cond_2

    if-eqz v6, :cond_2

    .line 674
    move-object v7, v10

    .line 675
    const-string v17, "SettingsProviderInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VDF BINGO!! imsi matched IMSI = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 679
    .end local v6           #imsi_matched:Z
    .end local v9           #j:I
    .end local v13           #parsed_imsi_length:I
    .end local v15           #runtimeImsi_length:I
    :cond_a
    const-string v17, "SettingsProviderInitializer"

    const-string v18, "VDF BINGO!! just only matched Mcc/Mnc"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    move-object v2, v10

    .line 681
    const/4 v4, 0x0

    .line 688
    .end local v4           #gid_matched_item:Lcom/android/providers/settings/CAItem_Test;
    .end local v10           #matched:Lcom/android/providers/settings/CAItem_Test;
    :cond_b
    :goto_4
    return-object v4

    .restart local v4       #gid_matched_item:Lcom/android/providers/settings/CAItem_Test;
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

.method public static initSettingsProvider_Test(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, retValue:Z
    const/4 v1, 0x0

    .line 102
    .local v1, retValue2:Z
    sput-object p0, Lcom/android/providers/settings/SettingsProviderParser_Test;->mContext:Landroid/content/Context;

    .line 104
    const-string v2, "SettingsProviderInitializer"

    const-string v3, "initSettingsProvider_Test  START "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProviderParser_Test;->loadXMLSettings_Test(Landroid/content/Context;)Z

    move-result v0

    .line 109
    sput-object v4, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    .line 110
    sput-object v4, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    .line 111
    sput-object v4, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test_vdf:Ljava/util/ArrayList;

    .line 112
    sput-object v4, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    .line 115
    return v0
.end method

.method private static loadXMLSettings_Test(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    if-nez p0, :cond_0

    move v5, v6

    .line 268
    :goto_0
    return v5

    .line 121
    :cond_0
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "loadXMLSettings_Test () START "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test_vdf:Ljava/util/ArrayList;

    .line 130
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->SETTINGSPROVIDER_CONFIG_PREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 132
    .local v4, shedprefSetProvConfig:Landroid/content/SharedPreferences;
    sput-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    .line 133
    sput-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    .line 134
    sput-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    .line 135
    sput-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentSpn:Ljava/lang/String;

    .line 136
    sput-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    .line 138
    const-string v5, "PRI_MCC"

    const-string v8, "null"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    .line 139
    const-string v5, "PRI_MNC"

    const-string v8, "null"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    .line 142
    const-string v5, "PRI_GID"

    const-string v8, "null"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    .line 143
    const-string v5, "PRI_SPN"

    const-string v8, "null"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentSpn:Ljava/lang/String;

    .line 144
    const-string v5, "PRI_IMSI"

    const-string v8, "null"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    .line 146
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentMcc [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] currentMnc [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentMnc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] currentGid [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentGid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentSpn [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] currentImsi [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentImsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
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

    .line 153
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test_vdf:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->parseConfigurationXml_VDF(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "shlee1219 parseConfigurationXml_VDF(context, allCAItems_Test) == false  "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 156
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "shlee1219 parseConfigurationXml(context, allCAItems_Test) == true  "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
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

    .line 179
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test_vdf:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->getCAItem_VDF(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem_Test;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    .line 180
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXMLSettings VDF currentItem_Test_vdf -1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    if-nez v5, :cond_2

    .line 182
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->getCAItem_Test(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem_Test;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    .line 183
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXMLSettings Normal eu currentItem_Test : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    if-eqz v5, :cond_8

    .line 190
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentItem_Test_vdf != null currentItem_Test_vdf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v4, :cond_7

    .line 198
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 204
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    iget-object v5, v5, Lcom/android/providers/settings/CAItem_Test;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;

    .line 205
    .local v3, settings:Lcom/android/providers/settings/CAItem_Test$SettingItem;
    iget-object v5, v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 257
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #settings:Lcom/android/providers/settings/CAItem_Test$SettingItem;
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "SettingsProviderInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentItem_Test : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v5, "SettingsProviderInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentItem_Test_vdf : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 263
    goto/16 :goto_0

    .line 157
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    const-string v5, "SettingsProviderInitializer"

    const-string v7, "shlee1219 parseConfigurationXml(context, allCAItems_Test) == false  "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_4
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test_vdf:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->parseConfigurationXml_VDF(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 162
    const-string v5, "SettingsProviderInitializer"

    const-string v8, "shlee1219 parseConfigurationXml_VDF(context, allCAItems_Test) == true  "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_1

    .line 166
    :cond_5
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->parseConfigurationXml(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    const-string v5, "SettingsProviderInitializer"

    const-string v7, "parseConfigurationXml(context, allCAItems_Test) == false  "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 168
    goto/16 :goto_0

    .line 207
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v7

    .line 208
    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    move v5, v6

    .line 211
    goto/16 :goto_0

    .line 212
    :cond_8
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    if-nez v5, :cond_d

    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    if-eqz v5, :cond_d

    .line 214
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentItem_vdf == null/ currentItem != null  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test_vdf:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz v4, :cond_a

    .line 220
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    iget-object v5, v5, Lcom/android/providers/settings/CAItem_Test;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;

    .line 225
    .restart local v3       #settings:Lcom/android/providers/settings/CAItem_Test$SettingItem;
    iget-object v5, v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 227
    .end local v3           #settings:Lcom/android/providers/settings/CAItem_Test$SettingItem;
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v7

    .line 228
    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_a
    move v5, v6

    .line 231
    goto/16 :goto_0

    .line 234
    :cond_b
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->allCAItems_Test:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProviderParser_Test;->getCAItem_Test(Ljava/util/ArrayList;)Lcom/android/providers/settings/CAItem_Test;

    move-result-object v5

    sput-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    .line 235
    const-string v5, "SettingsProviderInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXMLSettings Normal currentItem_Test : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    if-eqz v5, :cond_d

    .line 238
    if-eqz v4, :cond_d

    .line 245
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 247
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/android/providers/settings/SettingsProviderParser_Test;->currentItem_Test:Lcom/android/providers/settings/CAItem_Test;

    iget-object v5, v5, Lcom/android/providers/settings/CAItem_Test;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;

    .line 248
    .restart local v3       #settings:Lcom/android/providers/settings/CAItem_Test$SettingItem;
    iget-object v5, v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;->id:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/providers/settings/CAItem_Test$SettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 250
    .end local v3           #settings:Lcom/android/providers/settings/CAItem_Test$SettingItem;
    :cond_c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v7

    .line 251
    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_d
    move v5, v6

    .line 268
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
            "Lcom/android/providers/settings/CAItem_Test;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem_Test;>;"
    const/4 v6, 0x0

    .line 275
    .local v6, retValue:Z
    const-string v9, "SettingsProviderInitializer"

    const-string v10, "Test parseConfigurationXml() START  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz p0, :cond_c

    .line 280
    const/4 v5, 0x0

    .line 281
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

    .line 283
    const-string v9, "SettingsProviderInitializer"

    const-string v10, "settings_provider_config_eu xml Loading  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 290
    :goto_0
    if-eqz v5, :cond_b

    .line 291
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 292
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 293
    .local v4, eventType:I
    const/4 v1, 0x0

    .line 295
    .local v1, caItem:Lcom/android/providers/settings/CAItem_Test;
    :goto_1
    const/4 v9, 0x1

    if-eq v4, v9, :cond_b

    .line 296
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 297
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, startTag:Ljava/lang/String;
    const-string v9, "profiles"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 300
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 354
    .end local v8           #startTag:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 355
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    goto :goto_1

    .line 287
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    .end local v4           #eventType:I
    :cond_1
    const-string v9, "SettingsProviderInitializer"

    const-string v10, "settings_provider_config xml Loading  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    goto :goto_0

    .line 301
    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem_Test;
    .restart local v4       #eventType:I
    .restart local v8       #startTag:Ljava/lang/String;
    :cond_2
    const-string v9, "profile"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 302
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 303
    new-instance v1, Lcom/android/providers/settings/CAItem_Test;

    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    invoke-direct {v1}, Lcom/android/providers/settings/CAItem_Test;-><init>()V

    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem_Test;
    goto :goto_2

    .line 305
    :cond_3
    const-string v9, "siminfo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 306
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 308
    .local v0, arrtCount:I
    if-eqz v1, :cond_0

    .line 309
    const/4 v2, 0x0

    .local v2, count:I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 310
    const-string v9, "mcc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 312
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    .line 309
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 315
    :cond_5
    const-string v9, "mnc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 317
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    goto :goto_4

    .line 360
    .end local v0           #arrtCount:I
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v8           #startTag:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    move v7, v6

    .line 369
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #retValue:Z
    .local v7, retValue:I
    :goto_5
    return v7

    .line 320
    .end local v7           #retValue:I
    .restart local v0       #arrtCount:I
    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem_Test;
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

    .line 322
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    goto :goto_4

    .line 325
    :cond_7
    const-string v9, "gid"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 327
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    goto :goto_4

    .line 330
    :cond_8
    const-string v9, "imsi"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 332
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    goto :goto_4

    .line 339
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    :cond_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 340
    .restart local v0       #arrtCount:I
    if-eqz v1, :cond_0

    .line 341
    const/4 v2, 0x0

    .restart local v2       #count:I
    :goto_6
    if-ge v2, v0, :cond_0

    .line 342
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/providers/settings/CAItem_Test;->addSettingItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 348
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    .end local v8           #startTag:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x3

    if-ne v4, v9, :cond_0

    .line 349
    const-string v9, "profile"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 350
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 359
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    .end local v4           #eventType:I
    :cond_b
    const/4 v6, 0x1

    move v7, v6

    .line 369
    .restart local v7       #retValue:I
    goto :goto_5

    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #retValue:I
    :cond_c
    move v7, v6

    .line 365
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
            "Lcom/android/providers/settings/CAItem_Test;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/settings/CAItem_Test;>;"
    const/4 v6, 0x0

    .line 378
    .local v6, retValue:Z
    const-string v11, "SettingsProviderInitializer"

    const-string v12, "shlee1219 parseConfigurationXml_VDF() START  "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz p0, :cond_b

    .line 383
    const/4 v5, 0x0

    .line 385
    .local v5, parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v11, "ro.build.target_operator"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, target_operator:Ljava/lang/String;
    const-string v11, "ro.build.target_country"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 388
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

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f030001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 392
    if-eqz v5, :cond_a

    .line 393
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 394
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 395
    .local v4, eventType:I
    const/4 v1, 0x0

    .line 397
    .local v1, caItem:Lcom/android/providers/settings/CAItem_Test;
    :goto_0
    const/4 v11, 0x1

    if-eq v4, v11, :cond_a

    .line 398
    const/4 v11, 0x2

    if-ne v4, v11, :cond_9

    .line 399
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, startTag:Ljava/lang/String;
    const-string v11, "profiles"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 402
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 456
    .end local v8           #startTag:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 457
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    goto :goto_0

    .line 403
    .restart local v8       #startTag:Ljava/lang/String;
    :cond_1
    const-string v11, "profile"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 404
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 405
    new-instance v1, Lcom/android/providers/settings/CAItem_Test;

    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    invoke-direct {v1}, Lcom/android/providers/settings/CAItem_Test;-><init>()V

    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem_Test;
    goto :goto_1

    .line 407
    :cond_2
    const-string v11, "siminfo"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 408
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 410
    .local v0, arrtCount:I
    if-eqz v1, :cond_0

    .line 411
    const/4 v2, 0x0

    .local v2, count:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 412
    const-string v11, "mcc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 414
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem_Test;->mMcc:Ljava/lang/String;

    .line 411
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 417
    :cond_4
    const-string v11, "mnc"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 419
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem_Test;->mMnc:Ljava/lang/String;

    goto :goto_3

    .line 462
    .end local v0           #arrtCount:I
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v8           #startTag:Ljava/lang/String;
    .end local v9           #target_country:Ljava/lang/String;
    .end local v10           #target_operator:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    move v7, v6

    .line 471
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #retValue:Z
    .local v7, retValue:I
    :goto_4
    return v7

    .line 422
    .end local v7           #retValue:I
    .restart local v0       #arrtCount:I
    .restart local v1       #caItem:Lcom/android/providers/settings/CAItem_Test;
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

    .line 424
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem_Test;->mSpn:Ljava/lang/String;

    goto :goto_3

    .line 427
    :cond_6
    const-string v11, "gid"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 429
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem_Test;->mGid:Ljava/lang/String;

    goto :goto_3

    .line 432
    :cond_7
    const-string v11, "imsi"

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 434
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/providers/settings/CAItem_Test;->mImsi:Ljava/lang/String;

    goto :goto_3

    .line 441
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    :cond_8
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 442
    .restart local v0       #arrtCount:I
    if-eqz v1, :cond_0

    .line 443
    const/4 v2, 0x0

    .restart local v2       #count:I
    :goto_5
    if-ge v2, v0, :cond_0

    .line 444
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/android/providers/settings/CAItem_Test;->addSettingItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 450
    .end local v0           #arrtCount:I
    .end local v2           #count:I
    .end local v8           #startTag:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x3

    if-ne v4, v11, :cond_0

    .line 451
    const-string v11, "profile"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 452
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 461
    .end local v1           #caItem:Lcom/android/providers/settings/CAItem_Test;
    .end local v4           #eventType:I
    :cond_a
    const/4 v6, 0x1

    move v7, v6

    .line 471
    .restart local v7       #retValue:I
    goto :goto_4

    .end local v5           #parser_vdf:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #retValue:I
    .end local v9           #target_country:Ljava/lang/String;
    .end local v10           #target_operator:Ljava/lang/String;
    :cond_b
    move v7, v6

    .line 467
    .restart local v7       #retValue:I
    goto :goto_4
.end method
