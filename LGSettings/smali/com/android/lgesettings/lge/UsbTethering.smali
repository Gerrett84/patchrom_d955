.class public Lcom/android/lgesettings/lge/UsbTethering;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "UsbTethering.java"


# instance fields
.field private final PROVISION:Z

.field private mCdromStorage:Z

.field private mIsProvisioned:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMassStorageActive:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnection:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/UsbTethering;->mCdromStorage:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/UsbTethering;->PROVISION:Z

    .line 92
    new-instance v0, Lcom/android/lgesettings/lge/UsbTethering$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/UsbTethering$1;-><init>(Lcom/android/lgesettings/lge/UsbTethering;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/UsbTethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    new-instance v0, Lcom/android/lgesettings/lge/UsbTethering$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/UsbTethering$4;-><init>(Lcom/android/lgesettings/lge/UsbTethering;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/UsbTethering;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/UsbTethering;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/lge/UsbTethering;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/lgesettings/lge/UsbTethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/UsbTethering;->mCdromStorage:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/lgesettings/lge/UsbTethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbConnection:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/UsbTethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/lgesettings/lge/UsbTethering;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/lgesettings/lge/UsbTethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/UsbTethering;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/UsbTethering;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/lge/UsbTethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/UsbTethering;->mIsProvisioned:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/lge/UsbTethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/lgesettings/lge/UsbTethering;->processTurnOnOff()Z

    move-result v0

    return v0
.end method

.method private processTurnOnOff()Z
    .locals 8

    .prologue
    const v7, 0x7f0804fa

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 554
    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 555
    .local v1, newState:Z
    const-string v2, "USB_TETHER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MHP_GOOKY] processTurnOnOff : STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 559
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v5

    .line 563
    :cond_1
    if-eqz v1, :cond_2

    .line 564
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 566
    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v2

    if-eqz v2, :cond_3

    .line 573
    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 574
    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 289
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 291
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/lgesettings/lge/UsbTethering;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 21
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 304
    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v18, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 312
    .local v4, cm:Landroid/net/ConnectivityManager;
    const/16 v17, 0x0

    .line 313
    .local v17, usbTethered:Z
    const/4 v13, 0x0

    .line 314
    .local v13, usbAvailable:Z
    const/4 v14, 0x0

    .line 315
    .local v14, usbError:I
    const/4 v15, 0x0

    .line 317
    .local v15, usbErrored:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/Object;
    array-length v8, v2

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v10, v2, v7

    .local v10, o:Ljava/lang/Object;
    move-object v12, v10

    .line 318
    check-cast v12, Ljava/lang/String;

    .line 319
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v9, :cond_3

    aget-object v11, v3, v6

    .line 320
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 321
    const/4 v13, 0x1

    .line 322
    if-nez v14, :cond_2

    .line 323
    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v14

    .line 319
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 317
    .end local v11           #regex:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_1

    .line 328
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_4
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v8, v2

    .restart local v8       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    move v7, v6

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v8, :cond_7

    aget-object v10, v2, v7

    .restart local v10       #o:Ljava/lang/Object;
    move-object v12, v10

    .line 329
    check-cast v12, Ljava/lang/String;

    .line 330
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v9, :cond_6

    aget-object v11, v3, v6

    .line 331
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 332
    const/16 v17, 0x1

    .line 330
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 328
    .end local v11           #regex:Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_3

    .line 336
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_7
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v8, v2

    .restart local v8       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    move v7, v6

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .restart local v7       #i$:I
    :goto_5
    if-ge v7, v8, :cond_a

    aget-object v10, v2, v7

    .restart local v10       #o:Ljava/lang/Object;
    move-object v12, v10

    .line 337
    check-cast v12, Ljava/lang/String;

    .line 338
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_6
    if-ge v6, v9, :cond_9

    aget-object v11, v3, v6

    .line 339
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 340
    const/4 v15, 0x1

    .line 338
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 336
    .end local v11           #regex:Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_5

    .line 345
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 375
    const-string v18, "USB_TETHER"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[MHP_GOOKY] usbTethered: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",usbAvailable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", usbErrored: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz v17, :cond_b

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0804f7

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 390
    :cond_b
    if-eqz v15, :cond_c

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0804fa

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 394
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0804f8

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 399
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbConnection:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mCdromStorage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0804f9

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 405
    :cond_e
    const-string v18, "usb"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/usb/UsbManager;

    .line 406
    .local v16, usbManager:Landroid/hardware/usb/UsbManager;
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, defaultFuction:Ljava/lang/String;
    const-string v18, "ecm"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0804f6

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 412
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f080a4d

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 418
    .end local v5           #defaultFuction:Ljava/lang/String;
    .end local v16           #usbManager:Landroid/hardware/usb/UsbManager;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0804f9

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public disableWifi()V
    .locals 3

    .prologue
    .line 226
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 227
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 232
    .local v0, isWifiEnabled:Z
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 234
    .end local v0           #isWifiEnabled:Z
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v5, 0x7f060070

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/UsbTethering;->addPreferencesFromResource(I)V

    .line 160
    const-string v5, "usb_tether_settings"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/UsbTethering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 164
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->finish()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v5, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/lgesettings/lge/UsbTethering;->mMassStorageActive:Z

    .line 171
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbRegexs:[Ljava/lang/String;

    .line 172
    iget-object v5, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 174
    .local v3, ps:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_3

    .line 175
    iget-object v5, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    .end local v3           #ps:Landroid/preference/PreferenceScreen;
    :cond_3
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 181
    .local v4, usbManager:Landroid/hardware/usb/UsbManager;
    const-string v5, "ecm"

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 183
    .local v1, enable:Z
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_0

    .line 184
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v2, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->addTetherPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/lge/UsbTethering;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 194
    if-ne p1, v3, :cond_1

    .line 221
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 197
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, alertDlgBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 201
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 202
    const v1, 0x7f081331

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 203
    const v1, 0x7f081333

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 204
    const v1, 0x7f080a88

    new-instance v2, Lcom/android/lgesettings/lge/UsbTethering$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/UsbTethering$2;-><init>(Lcom/android/lgesettings/lge/UsbTethering;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    const v1, 0x7f080a89

    new-instance v2, Lcom/android/lgesettings/lge/UsbTethering$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/UsbTethering$3;-><init>(Lcom/android/lgesettings/lge/UsbTethering;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 278
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/UsbTethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/UsbTethering;->mIsProvisioned:Z

    .line 272
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 427
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 430
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_3

    .line 431
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 434
    .local v3, newState:Z
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    .end local v3           #newState:Z
    :cond_0
    :goto_0
    return v5

    .line 441
    .restart local v3       #newState:Z
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_0

    .line 457
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/UsbTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 458
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_2

    .line 459
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 460
    .local v1, isWifiEnabled:Z
    if-ne v1, v5, :cond_2

    .line 461
    const-string v7, "Tethersettings"

    const-string v8, "WiFi is ON! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 463
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/UsbTethering;->showDialog(I)V

    goto :goto_0

    .line 476
    .end local v1           #isWifiEnabled:Z
    :cond_2
    if-eqz v3, :cond_5

    .line 497
    iget-boolean v7, p0, Lcom/android/lgesettings/lge/UsbTethering;->mIsProvisioned:Z

    if-eqz v7, :cond_4

    .line 501
    invoke-direct {p0}, Lcom/android/lgesettings/lge/UsbTethering;->processTurnOnOff()Z

    .end local v2           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #newState:Z
    :cond_3
    :goto_1
    move v5, v6

    .line 536
    goto :goto_0

    .line 506
    .restart local v2       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v3       #newState:Z
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lge.hotspot.provision_start"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v4, proIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/UsbTethering;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 514
    .end local v4           #proIntent:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/lge/UsbTethering;->processTurnOnOff()Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.lge.hotspotprovision.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/UsbTethering;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    invoke-direct {p0}, Lcom/android/lgesettings/lge/UsbTethering;->updateState()V

    .line 258
    return-void
.end method
