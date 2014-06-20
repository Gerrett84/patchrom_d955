.class public Lcom/android/lgesettings/hidden/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final SPROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBackKey:Z

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultSetting:Ljava/lang/Integer;

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;

.field private mUserCreateSetting:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-class v0, Lcom/android/lgesettings/hidden/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    .line 118
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "defaultsetting"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "usercreatesetting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->SPROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/hidden/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 675
    const/4 v1, 0x0

    .line 677
    .local v1, mBearerIndex:I
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 679
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 682
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 689
    :goto_0
    return-object v3

    .line 685
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1125
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    :cond_0
    const-string p1, ""

    .line 1128
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1118
    :cond_0
    sget-object p1, Lcom/android/lgesettings/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1120
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    .line 1080
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080a9e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080a70

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/lgesettings/hidden/ApnEditor$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/hidden/ApnEditor$3;-><init>(Lcom/android/lgesettings/hidden/ApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/lgesettings/hidden/ApnEditor$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/hidden/ApnEditor$2;-><init>(Lcom/android/lgesettings/hidden/ApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1102
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 490
    iget-boolean v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mFirstTime:Z

    if-eqz v8, :cond_5

    .line 491
    iput-boolean v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mFirstTime:Z

    .line 494
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_5

    .line 495
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 496
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 497
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 498
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 499
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 501
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_0

    .line 503
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 507
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 508
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 509
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 510
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 511
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 512
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 514
    iget-boolean v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_1

    .line 515
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, numeric:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_1

    .line 520
    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, mnc:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 526
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 527
    iput-object v3, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 528
    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 531
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #numeric:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 532
    .local v0, authVal:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_a

    .line 533
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 553
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v8, :cond_3

    .line 555
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 558
    :cond_3
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x13

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 563
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x11

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_b

    .line 565
    .local v5, value:Z
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    .line 567
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 570
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v7, :cond_5

    .line 572
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x12

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 577
    .end local v0           #authVal:I
    .end local v5           #value:Z
    :cond_5
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_6

    .line 585
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    :cond_6
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    new-instance v8, Lcom/android/lgesettings/hidden/ApnEditor$1;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/hidden/ApnEditor$1;-><init>(Lcom/android/lgesettings/hidden/ApnEditor;)V

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 613
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 615
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 616
    .local v1, authValIndex:I
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 618
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f090051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 630
    .end local v1           #authValIndex:I
    .end local v6           #values:[Ljava/lang/String;
    :goto_2
    iget-boolean v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v7, :cond_7

    .line 631
    const-string v7, "APNEditor"

    const-string v8, "NewAPN AuthVal set NoAuth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v8, Lcom/android/lgesettings/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 639
    :cond_7
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v7, :cond_8

    .line 641
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v9}, Lcom/android/lgesettings/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 645
    :cond_8
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v9}, Lcom/android/lgesettings/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v7, :cond_9

    .line 650
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    :cond_9
    return-void

    .line 542
    .local v0, authVal:I
    :cond_a
    iget-boolean v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_2

    .line 543
    const-string v8, "APNEditor"

    const-string v9, "NewAPN AuthVal set NoAuth"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v5, v7

    .line 563
    goto/16 :goto_1

    .line 621
    .local v0, authVal:Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v8, Lcom/android/lgesettings/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 1021
    const/4 v1, 0x0

    .line 1023
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1024
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, apn:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, mcc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, mnc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1031
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 1032
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0804af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    :cond_0
    :goto_0
    return-object v1

    .line 1033
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1034
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0804b0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1035
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_3

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v8, v6, :cond_3

    .line 1036
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f080ab9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1037
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 1038
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0804b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1039
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const v7, 0xfffe

    and-int/2addr v6, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 1040
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0804b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1043
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "entitlement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1044
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f080c75

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 661
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 662
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 669
    :goto_0
    return-object v3

    .line 665
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1106
    :cond_0
    sget-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1112
    :goto_0
    return-object v2

    .line 1108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1109
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1110
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1112
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private sync3GPPLegacyApn(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILjava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1155
    sget-object v3, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LG] sync3GPPLegacyApn() networkOperator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1160
    add-int v4, v3, p5

    .line 1162
    sget-object v5, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LG] origpos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    if-eq v3, v0, :cond_0

    const/16 v5, 0xc

    if-eq v3, v5, :cond_0

    if-lt v4, v0, :cond_0

    const/16 v5, 0xb

    if-le v4, v5, :cond_1

    .line 1169
    :cond_0
    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG] invalid pos so return false : sync_pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1183
    :goto_0
    return v0

    .line 1173
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    add-int/2addr v3, p5

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1175
    const-string v3, "bearer"

    invoke-virtual {p4, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v3, "mcc"

    invoke-virtual {p4, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v3, "mnc"

    invoke-virtual {p4, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v3, "numeric"

    invoke-virtual {p4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, p4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1182
    sget-object v1, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "[LG] updata success : "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 843
    .local v12, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 846
    .local v7, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 847
    .local v10, mcc:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 849
    .local v11, mnc:Ljava/lang/String;
    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LG] validateAndSave(force) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    if-eqz v0, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 858
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_2

    .line 859
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 861
    :cond_2
    const/4 v0, 0x1

    .line 1017
    .end local v12           #name:Ljava/lang/String;
    :goto_0
    return v0

    .line 864
    .restart local v12       #name:Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    if-eqz v0, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 867
    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_4

    .line 868
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 870
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 875
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/hidden/ApnEditor;->showDialog(I)V

    .line 877
    const/4 v0, 0x0

    goto :goto_0

    .line 882
    :cond_6
    const-string v0, "TLS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 887
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 888
    .local v13, type:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    const-string v0, "001"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "01"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 889
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    const-string v1, "default,mms,supl"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 896
    .end local v13           #type:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 897
    const/4 v0, 0x1

    goto :goto_0

    .line 901
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 902
    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 910
    :cond_9
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 911
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 916
    :cond_a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 921
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08074a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .end local v12           #name:Ljava/lang/String;
    :cond_b
    invoke-virtual {v4, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v0, "apn"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v0, "proxy"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v0, "port"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v0, "mmsproxy"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v0, "mmsport"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v0, "user"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_c

    .line 936
    const-string v0, "server"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_c
    const-string v0, "password"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v0, "mmsc"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 948
    .local v8, authVal:Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 949
    const-string v0, "authtype"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v0, :cond_e

    .line 954
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_e
    const-string v0, "roaming_protocol"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v0, "type"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v0, "mcc"

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v0, "mnc"

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v0, "numeric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 969
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 970
    const-string v0, "current"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    :cond_f
    const/4 v9, 0x0

    .line 976
    .local v9, bearerVal:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v0, :cond_10

    .line 977
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 979
    :cond_10
    if-eqz v9, :cond_11

    .line 980
    const-string v0, "bearer"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 985
    :cond_11
    const-string v0, "defaultsetting"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    const-string v0, "usercreatesetting"

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    .line 989
    const-string v0, "extraid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_12
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 997
    const-string v1, "carrier_enabled"

    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1001
    :cond_13
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1006
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1007
    const-string v0, "311"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "480"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1008
    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const-string v2, "204"

    const-string v3, "04"

    const/4 v5, 0x7

    const-string v6, "3"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/hidden/ApnEditor;->sync3GPPLegacyApn(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILjava/lang/String;)Z

    .line 1017
    :cond_14
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 997
    :cond_15
    const/4 v0, 0x0

    goto :goto_1

    .line 1009
    :cond_16
    const-string v0, "204"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "04"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1010
    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const-string v2, "311"

    const-string v3, "480"

    const/4 v5, -0x7

    const-string v6, "0"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/hidden/ApnEditor;->sync3GPPLegacyApn(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILjava/lang/String;)Z

    goto :goto_2

    .line 1012
    :cond_17
    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "[LG] no sync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x7f

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080491

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 182
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 183
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 184
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 185
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 186
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 188
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 189
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_0
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 197
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 198
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 199
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 200
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 201
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 202
    const-string v2, "apn_type"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 204
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 205
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 208
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v3, v2, :cond_1

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_2
    const-string v2, "net.telephony.dualstack"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const v5, 0x7f090055

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 228
    :cond_3
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 238
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 245
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_4
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 253
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 254
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 265
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xff

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 267
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 269
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 271
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    .line 277
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 278
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_11

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mFirstTime:Z

    .line 282
    const-string v2, "com.android.hidden.ACTION_EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 283
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/lgesettings/hidden/ApnEditor;->SPROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/android/lgesettings/hidden/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 288
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    .line 289
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 290
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x14

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    .line 291
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x15

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_6
    :goto_1
    sget-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDefalutSetting value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 300
    sget-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "This is the Default Setting."

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 305
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 307
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_7

    .line 309
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 312
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 314
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 315
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 316
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 317
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 318
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 319
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 321
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v2, :cond_8

    .line 323
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 326
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 328
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    .line 330
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 333
    :cond_9
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    .line 335
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 338
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 339
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 340
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 341
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 342
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 344
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_b

    .line 346
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 349
    :cond_b
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 350
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 351
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 352
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 353
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 354
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 356
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 358
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v2, :cond_c

    .line 360
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 363
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_d

    .line 367
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setShouldDisableView(Z)V

    .line 370
    :cond_d
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v2, :cond_e

    .line 372
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 380
    :cond_e
    const-string v2, "net.telephony.dualstack"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v2, :cond_f

    const-string v2, "OPEN"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_f

    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_f

    .line 385
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 390
    :cond_f
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 391
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_10

    .line 393
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 432
    :cond_10
    :goto_2
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/hidden/ApnEditor;->SPROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v8, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 436
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_17

    .line 437
    sget-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null cursor with Uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    .line 451
    :goto_3
    return-void

    :cond_11
    move v2, v4

    .line 280
    goto/16 :goto_0

    .line 397
    :cond_12
    const-string v2, "com.android.hidden.ACTION_INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    .line 404
    iget-boolean v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_13

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    .line 405
    :cond_13
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    .line 412
    :goto_4
    iput-boolean v3, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    .line 416
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_15

    .line 417
    sget-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    goto :goto_3

    .line 408
    :cond_14
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 425
    :cond_15
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/hidden/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 428
    :cond_16
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    goto/16 :goto_3

    .line 442
    :cond_17
    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_18

    .line 443
    sget-object v2, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "Cursor is empty "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    goto/16 :goto_3

    .line 450
    :cond_18
    invoke-direct {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->fillUi()V

    goto/16 :goto_3

    .line 293
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 1053
    if-nez p1, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1056
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0804ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1062
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 741
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 746
    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 747
    sget-object v0, Lcom/android/lgesettings/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "This item is read-only"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return v3

    .line 749
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    .line 750
    const v0, 0x7f0804aa

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 753
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0804ac

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 755
    const/4 v0, 0x3

    const v1, 0x7f0804ad

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 788
    packed-switch p1, :pswitch_data_0

    .line 801
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 790
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    .line 791
    invoke-direct {p0, v2}, Lcom/android/lgesettings/hidden/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    iput-boolean v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    .line 793
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    .line 795
    :cond_0
    iput-boolean v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBackKey:Z

    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 765
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 783
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 767
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 770
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    goto :goto_0

    .line 775
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->finish()V

    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 486
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 487
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 695
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 698
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 699
    .local v2, index:I
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 701
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f090051

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 703
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 704
    goto :goto_1

    .line 706
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 707
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 708
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 711
    goto :goto_1

    .line 713
    :cond_2
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 717
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/lgesettings/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 719
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 720
    goto :goto_1

    .line 722
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 725
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/lgesettings/hidden/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 727
    goto :goto_1

    .line 730
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    .line 731
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 732
    iget-object v6, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1067
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1069
    if-nez p1, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1073
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1076
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 455
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 456
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/lgesettings/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    .line 476
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 807
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/lgesettings/hidden/ApnEditor;->validateAndSave(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 813
    iget-object v3, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 814
    iget-object v3, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 815
    .local v1, currentPos:I
    iget-object v3, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 817
    .local v0, count:I
    if-ge v1, v0, :cond_0

    if-gez v1, :cond_1

    .line 818
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 820
    :cond_1
    const-string v3, "pos"

    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0           #count:I
    .end local v1           #currentPos:I
    :cond_2
    :goto_0
    return-void

    .line 821
    .restart local v0       #count:I
    .restart local v1       #currentPos:I
    :catch_0
    move-exception v2

    .line 822
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "ApnEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " An error occurred  on onSaveInstanceState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1134
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1137
    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    if-ne v0, v1, :cond_1

    .line 1138
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    if-eqz v0, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    if-eq v0, v1, :cond_0

    .line 1142
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
