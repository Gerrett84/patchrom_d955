.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;
.super Lcom/android/lgesettings/nfc/NfcStateListener;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcSwitchPref"
.end annotation


# instance fields
.field private mOldPolicy:I

.field private mOldState:I

.field private final mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

.field private mTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V
    .locals 2
    .parameter
    .parameter "prep"

    .prologue
    const/4 v1, 0x1

    .line 417
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcStateListener;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldState:I

    .line 420
    iput v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldPolicy:I

    .line 422
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 423
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setFragment(Ljava/lang/String;)V

    .line 433
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setTitle(I)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    #setter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->airNfcSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {p1, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$302(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 438
    return-void

    .line 425
    :cond_2
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    goto :goto_0
.end method


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 8
    .parameter "newState"

    .prologue
    const v7, 0x7f080269

    const v6, 0x7f080268

    const v5, 0x7f0801ed

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 495
    const/4 v0, 0x1

    .line 496
    .local v0, newPolicy:I
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 497
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    .line 499
    :cond_0
    iget v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldState:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldPolicy:I

    if-ne v1, v0, :cond_1

    .line 500
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNfcStateChanged Skip old = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNfcStateChanged Skip oldPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    return-void

    .line 505
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 566
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldState:I

    .line 567
    iput v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mOldPolicy:I

    .line 568
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NFC Switch] handleNfcStateChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNfcStateChanged(policy) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :pswitch_0
    if-nez v0, :cond_3

    .line 508
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 510
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v2, 0x7f080271

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    goto :goto_1

    .line 512
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 513
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 516
    invoke-static {}, Lcom/android/lgesettings/Utils;->isORGFrench()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    goto :goto_1

    .line 518
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 519
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 521
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    goto :goto_1

    .line 527
    :pswitch_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 528
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 529
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 530
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    .line 531
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v2, 0x7f080272

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummaryOn(I)V

    goto/16 :goto_1

    .line 533
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 534
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 535
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    .line 537
    invoke-static {}, Lcom/android/lgesettings/Utils;->isORGFrench()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 538
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    goto/16 :goto_1

    .line 539
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 540
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 542
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    goto/16 :goto_1

    .line 548
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    .line 550
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 556
    :pswitch_3
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    .line 558
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 452
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 454
    .local v0, bValue:Z
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    iget-object v4, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    #setter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->switchVZW:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v1, v4}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$402(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 456
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    iget-object v4, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    #setter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->airNfcSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v1, v4}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$302(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 457
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isUnchecked(I)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 460
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v3, v1, :cond_3

    .line 462
    const-string v1, "LGNfcEnabler"

    const-string v2, "update nfc setting : false : airplane on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneNfcDlg()V

    .line 489
    :cond_2
    :goto_0
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NfcSwitchPref : onPreferenceChange = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 490
    :goto_1
    return v1

    .line 466
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->showNfcFirstConnectOffDlg()V

    goto :goto_0

    .line 470
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v3, v1, :cond_5

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->airBeamSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$500(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 472
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneNfcDlg()V

    goto :goto_0

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 477
    goto :goto_1

    .line 484
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 485
    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 449
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    return-void
.end method
