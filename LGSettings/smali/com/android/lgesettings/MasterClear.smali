.class public Lcom/android/lgesettings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mBatteryLevel:I

.field private mContentView:Landroid/view/View;

.field private mDescriptionMasterClear:Landroid/widget/TextView;

.field private mEraseExternalText1:Landroid/widget/TextView;

.field private mEraseExternalText2:Landroid/widget/TextView;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsEnableReset:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMasterClearDescText:Landroid/widget/TextView;

.field private mPrimaryVolume:Landroid/os/storage/StorageVolume;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryVolume:Landroid/os/storage/StorageVolume;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWarnBatteryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 82
    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 83
    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/MasterClear;->mIsEnableReset:Z

    .line 140
    new-instance v0, Lcom/android/lgesettings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClear$1;-><init>(Lcom/android/lgesettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 450
    new-instance v0, Lcom/android/lgesettings/MasterClear$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClear$3;-><init>(Lcom/android/lgesettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 460
    new-instance v0, Lcom/android/lgesettings/MasterClear$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClear$4;-><init>(Lcom/android/lgesettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 533
    new-instance v0, Lcom/android/lgesettings/MasterClear$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClear$5;-><init>(Lcom/android/lgesettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClear;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/lgesettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->updateExternalView()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/lgesettings/MasterClear;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/lgesettings/MasterClear;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->checkBatteryLevel()V

    return-void
.end method

.method private checkBatteryLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 479
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClear;->mIsEnableReset:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/lgesettings/MasterClear;->mBatteryLevel:I

    if-ge v0, v3, :cond_1

    .line 480
    iput-boolean v1, p0, Lcom/android/lgesettings/MasterClear;->mIsEnableReset:Z

    .line 481
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear;->mWarnBatteryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClear;->mIsEnableReset:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/lgesettings/MasterClear;->mBatteryLevel:I

    if-lt v0, v3, :cond_0

    .line 484
    iput-boolean v2, p0, Lcom/android/lgesettings/MasterClear;->mIsEnableReset:Z

    .line 485
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear;->mWarnBatteryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 489
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setFactoryResetButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 7

    .prologue
    const v6, 0x7f0a01a7

    const/4 v5, 0x1

    .line 162
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a01af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 163
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/lgesettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 165
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a01ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 166
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a01ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mWarnBatteryView:Landroid/widget/TextView;

    .line 167
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mMasterClearDescText:Landroid/widget/TextView;

    .line 168
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a01ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText1:Landroid/widget/TextView;

    .line 169
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText2:Landroid/widget/TextView;

    .line 172
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mMasterClearDescText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 175
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mDescriptionMasterClear:Landroid/widget/TextView;

    .line 176
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mDescriptionMasterClear:Landroid/widget/TextView;

    const v4, 0x7f0804c7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_0
    :goto_0
    const-string v1, "5%"

    .line 183
    .local v1, batteryLevel:Ljava/lang/String;
    const v3, 0x7f080d26

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/MasterClear;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, battery:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mWarnBatteryView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 204
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/lgesettings/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 205
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->updateExternalView()V

    .line 207
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/MasterClear;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->loadAccountList()V

    .line 212
    return-void

    .line 178
    .end local v0           #battery:Ljava/lang/String;
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v3, "CMCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mDescriptionMasterClear:Landroid/widget/TextView;

    const v4, 0x7f0804c8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private isVisibleAccount(Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 499
    const-string v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleAccount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v1, "com.mobileleader.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    const-string v1, "com.lge.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    const-string v1, "com.fusionone.account"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const-string v1, "com.lge.myphonebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const-string v1, "com.lge.android.finance.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    const-string v1, "com.lge.android.weather.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const-string v1, "com.lge.android.news.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    const-string v1, "com.lge.android.todayplus.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 25

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0a01a8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 221
    .local v7, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0a01a9

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 222
    .local v10, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 226
    .local v11, context:Landroid/content/Context;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 227
    .local v20, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 228
    .local v6, accounts:[Landroid/accounts/Account;
    array-length v4, v6

    .line 229
    .local v4, N:I
    if-nez v4, :cond_0

    .line 230
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v22, "layout_inflater"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 238
    .local v17, inflater:Landroid/view/LayoutInflater;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 239
    .local v13, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v13

    .line 241
    .local v3, M:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v4, :cond_7

    .line 242
    aget-object v5, v6, v15

    .line 243
    .local v5, account:Landroid/accounts/Account;
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/lgesettings/MasterClear;->isVisibleAccount(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 241
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 247
    :cond_1
    const/4 v12, 0x0

    .line 248
    .local v12, desc:Landroid/accounts/AuthenticatorDescription;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 249
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v23, v13, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 250
    aget-object v12, v13, v19

    .line 254
    :cond_2
    if-nez v12, :cond_4

    .line 255
    const-string v22, "MasterClear"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No descriptor for account name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 248
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 259
    :cond_4
    const/16 v16, 0x0

    .line 261
    .local v16, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 262
    .local v8, authContext:Landroid/content/Context;
    if-eqz v8, :cond_5

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 263
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 274
    .end local v8           #authContext:Landroid/content/Context;
    :cond_5
    :goto_4
    const v22, 0x7f0400c4

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 276
    .local v9, child:Landroid/widget/LinearLayout;
    const v22, 0x7f0a0044

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 277
    .local v21, tv:Landroid/widget/TextView;
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v22, 0x7f0a004e

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 280
    .local v18, iv:Landroid/widget/ImageView;
    if-eqz v16, :cond_6

    .line 281
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_6
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 264
    .end local v9           #child:Landroid/widget/LinearLayout;
    .end local v18           #iv:Landroid/widget/ImageView;
    .end local v21           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v14

    .line 265
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "MasterClear"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No icon for account type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 286
    .end local v5           #account:Landroid/accounts/Account;
    .end local v12           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #j:I
    :cond_7
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v22

    if-nez v22, :cond_8

    .line 287
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 290
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0804c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f080cd4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 123
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 124
    const-class v0, Lcom/android/lgesettings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 125
    const v0, 0x7f0804c4

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 133
    return-void

    .line 130
    :cond_0
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateExternalView()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const v11, 0x7f080bfc

    const v10, 0x7f080bfb

    const v9, 0x7f0804c6

    const/4 v8, 0x0

    .line 352
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 353
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    array-length v1, v5

    .line 358
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 359
    aget-object v4, v5, v0

    .line 360
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    const v7, 0x10001

    if-ne v6, v7, :cond_3

    .line 361
    iput-object v4, p0, Lcom/android/lgesettings/MasterClear;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 358
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/storage/USBstorage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 363
    iput-object v4, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    .line 368
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    const-string v3, ""

    .line 369
    .local v3, state:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "cayman"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 370
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_6

    .line 371
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :goto_2
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 422
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v7, Lcom/android/lgesettings/MasterClear$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/MasterClear$2;-><init>(Lcom/android/lgesettings/MasterClear;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    :cond_5
    const/4 v2, 0x0

    .line 431
    .local v2, mountExternal:Z
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 432
    const/4 v2, 0x0

    .line 438
    :goto_3
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 439
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 440
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText1:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 441
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText2:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 444
    if-nez v2, :cond_0

    .line 445
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 373
    .end local v2           #mountExternal:Z
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 374
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mMasterClearDescText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 376
    :cond_7
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 378
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :goto_4
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 380
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 382
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText2:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 388
    :cond_9
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 390
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mMasterClearDescText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 394
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :goto_5
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/lgesettings/MasterClear;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 396
    :cond_a
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 398
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText2:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 402
    :cond_b
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_c

    .line 403
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 405
    :cond_c
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 406
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mMasterClearDescText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 408
    :cond_d
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 410
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :goto_6
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/lgesettings/MasterClear;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 412
    :cond_e
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v6, p0, Lcom/android/lgesettings/MasterClear;->mEraseExternalText2:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 435
    .restart local v2       #mountExternal:Z
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 298
    const v2, 0x7f0400c3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    .line 299
    .local v1, view:Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0804b6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClear;->establishInitialState()V

    .line 308
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_2

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->addWipeDatePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/MasterClear;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    .end local v0           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/MasterClear;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/lgesettings/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/lgesettings/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 324
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MasterClear;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 332
    :try_start_1
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MasterClear;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 339
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MasterClear"

    const-string v2, "unregisterReceiver() : Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 548
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClear;->mIsEnableReset:Z

    if-eqz v0, :cond_0

    .line 348
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 349
    return-void
.end method
