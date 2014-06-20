.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;
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
    name = "BeamSwitchPref"
.end annotation


# instance fields
.field mBeamTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;

.field mNfcTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

.field private final mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V
    .locals 4
    .parameter
    .parameter "switchBeam"

    .prologue
    const v3, 0x7f080266

    const v2, 0x7f08026a

    .line 578
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcStateListener;-><init>()V

    .line 579
    iput-object p2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 580
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mNfcTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    .line 582
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 583
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mBeamTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;

    .line 589
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setTitle(I)V

    .line 592
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v1, 0x7f081030

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    .line 607
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    #setter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->airBeamSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {p1, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$502(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 608
    return-void

    .line 585
    :cond_0
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mBeamTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setTitle(I)V

    .line 595
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 598
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setTitle(I)V

    .line 600
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setTitle(I)V

    .line 603
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleP2pStateChanged(I)V
    .locals 8
    .parameter "newState"

    .prologue
    const v7, 0x7f081030

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f08026a

    .line 682
    move v1, p1

    .line 684
    .local v1, p2pState:I
    const/4 v0, 0x1

    .line 685
    .local v0, mdmPolicy:I
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    .line 686
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    .line 688
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 740
    :goto_0
    const-string v2, "LGNfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Beam Switch] handleP2pStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 691
    :pswitch_0
    if-eq v0, v6, :cond_1

    .line 692
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 693
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 694
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const v3, 0x7f080273

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 697
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 698
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 699
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v7}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 705
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 706
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 708
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 714
    :pswitch_1
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    .line 715
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 716
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 717
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 718
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v7}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 720
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 723
    :cond_6
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 724
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 726
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_2
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 735
    :pswitch_3
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v6, 0x7f08025c

    const v5, 0x7f08025b

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 624
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 626
    .local v0, bValue:Z
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    #setter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->airBeamSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v2, v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$502(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 627
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    #setter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->switchVZW:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v2, v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$402(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 628
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 630
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->hasNfcDisplaySettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 632
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isUnchecked(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    iput-boolean v1, v2, Lcom/android/lgesettings/nfc/LGNfcEnabler;->firstBeam:Z

    .line 634
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 636
    const-string v2, "LGNfcEnabler"

    const-string v3, "update nfc setting : false : airplane on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneBeamDlg()V

    .line 677
    :goto_0
    return v1

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->showNfcFirstConnectOffDlg()V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->airNfcSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$300(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 647
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneBeamDlg()V

    goto :goto_0

    .line 650
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v2

    if-ne v2, v1, :cond_3

    .line 651
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 656
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mNfcTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    goto :goto_0

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 661
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 662
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 666
    :goto_2
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mNfcTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    goto :goto_0

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 671
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 672
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 675
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mBeamTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;->trigger(Z)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 620
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;->mSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 614
    return-void
.end method
