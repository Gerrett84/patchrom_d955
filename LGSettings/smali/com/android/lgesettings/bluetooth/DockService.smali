.class public final Lcom/android/lgesettings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 121
    iput v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 572
    new-instance v0, Lcom/android/lgesettings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/DockService$2;-><init>(Lcom/android/lgesettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 584
    new-instance v0, Lcom/android/lgesettings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/DockService$3;-><init>(Lcom/android/lgesettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 602
    new-instance v0, Lcom/android/lgesettings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/DockService$4;-><init>(Lcom/android/lgesettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 616
    new-instance v0, Lcom/android/lgesettings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/DockService$5;-><init>(Lcom/android/lgesettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/DockService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/bluetooth/DockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .parameter "device"
    .parameter "startId"

    .prologue
    .line 820
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 891
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 826
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, arr$:[Z
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-boolean v4, v0, v6

    .line 827
    .local v4, enable:Z
    if-eqz v4, :cond_3

    .line 828
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 834
    .local v1, btState:I
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 837
    const/16 v10, 0xc

    if-eq v1, v10, :cond_3

    .line 838
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 842
    :cond_2
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 843
    iput p2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingStartId:I

    .line 844
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 820
    .end local v0           #arr$:[Z
    .end local v1           #btState:I
    .end local v4           #enable:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 826
    .restart local v0       #arr$:[Z
    .restart local v4       #enable:Z
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 853
    .end local v4           #enable:Z
    :cond_4
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 855
    const/4 v3, 0x0

    .line 856
    .local v3, callConnect:Z
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 858
    .local v2, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 859
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 864
    .local v8, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    .line 866
    const/4 v3, 0x1

    .line 877
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 858
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 867
    :cond_6
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_5

    .line 869
    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 870
    .local v9, status:I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 874
    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 885
    .end local v8           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .end local v9           #status:I
    :cond_7
    if-eqz v3, :cond_0

    .line 889
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 810
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 811
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 812
    .local v2, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 813
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    .end local v2           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 808
    .end local v0           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 17
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 498
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 500
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 501
    packed-switch p2, :pswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 511
    :pswitch_0
    const/4 v6, 0x0

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/lgesettings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 513
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    .local v3, ab:Landroid/app/AlertDialog$Builder;
    const-string v6, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 517
    .local v12, inflater:Landroid/view/LayoutInflater;
    if-eqz p1, :cond_4

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v11, 0x1

    .line 522
    .local v11, firstTime:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/lgesettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 524
    .local v13, items:[Ljava/lang/CharSequence;
    const v6, 0x7f0801d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 527
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v3, v13, v6, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    const v6, 0x7f040125

    const/4 v8, 0x0

    invoke-virtual {v12, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 531
    .local v4, view:Landroid/view/View;
    const v6, 0x7f0a028a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 534
    .local v15, rememberCheckbox:Landroid/widget/CheckBox;
    if-nez v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v10, 0x1

    .line 536
    .local v10, checked:Z
    :goto_2
    invoke-virtual {v15, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 537
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v15, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 556
    .end local v11           #firstTime:Z
    .end local v13           #items:[Ljava/lang/CharSequence;
    .end local v15           #rememberCheckbox:Landroid/widget/CheckBox;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v14, v6, Landroid/util/DisplayMetrics;->density:F

    .line 557
    .local v14, pixelScaleFactor:F
    const/high16 v6, 0x4160

    mul-float/2addr v6, v14

    float-to-int v5, v6

    .line 558
    .local v5, viewSpacingLeft:I
    const/high16 v6, 0x4160

    mul-float/2addr v6, v14

    float-to-int v7, v6

    .line 559
    .local v7, viewSpacingRight:I
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 562
    const v6, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 565
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d9

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 519
    .end local v4           #view:Landroid/view/View;
    .end local v5           #viewSpacingLeft:I
    .end local v7           #viewSpacingRight:I
    .end local v10           #checked:Z
    .end local v14           #pixelScaleFactor:F
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 534
    .restart local v4       #view:Landroid/view/View;
    .restart local v11       #firstTime:Z
    .restart local v13       #items:[Ljava/lang/CharSequence;
    .restart local v15       #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 543
    .end local v4           #view:Landroid/view/View;
    .end local v11           #firstTime:Z
    .end local v13           #items:[Ljava/lang/CharSequence;
    .end local v15           #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_4
    const v6, 0x7f0801d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    const v6, 0x7f04006c

    const/4 v8, 0x0

    invoke-virtual {v12, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 546
    .restart local v4       #view:Landroid/view/View;
    const v6, 0x7f0a00ee

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 549
    .local v9, audioMediaCheckbox:Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "dock_audio_media_enabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    const/4 v10, 0x1

    .line 552
    .restart local v10       #checked:Z
    :goto_4
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 553
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    .line 549
    .end local v10           #checked:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .parameter "device"

    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 922
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 925
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 181
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9
    .parameter "startId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, -0x64

    .line 732
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    .line 733
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 743
    :cond_0
    iput-object v8, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 744
    iget v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 771
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v6, :cond_2

    .line 772
    iget v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 773
    iput v6, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 776
    :cond_2
    invoke-static {p0, p1}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 777
    :goto_1
    return-void

    .line 746
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 752
    .local v2, prefs:Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/lgesettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 753
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 754
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 756
    .local v3, state:I
    if-eqz v3, :cond_4

    .line 757
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 759
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 762
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    iput p1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 765
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v3, -0x64

    .line 694
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 695
    .local v0, btState:I
    monitor-enter p0

    .line 699
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 700
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/lgesettings/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 728
    :cond_0
    :goto_0
    monitor-exit p0

    .line 729
    return-void

    .line 701
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    invoke-static {p0, p2}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 708
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 715
    :try_start_1
    iget v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    .line 716
    iget v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 717
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 718
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 721
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 723
    iput p2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 725
    :cond_4
    invoke-static {p0, p2}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 895
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 899
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/lgesettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    :goto_0
    monitor-exit p0

    return-void

    .line 901
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 906
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 907
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 908
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 910
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 912
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 913
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 914
    if-eqz p1, :cond_1

    .line 915
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 916
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    .end local v0           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;I)V
    .locals 7
    .parameter "disconnectedDevice"
    .parameter "profile"
    .parameter "startId"

    .prologue
    .line 786
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 788
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 789
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 790
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 792
    .local v3, state:I
    if-eqz v3, :cond_0

    .line 793
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 795
    .local v1, dockedDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 796
    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 798
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    .line 804
    .end local v0           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .end local v1           #dockedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_0
    invoke-static {p0, p3}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    monitor-exit p0

    return-void

    .line 786
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .parameter "device"
    .parameter "state"
    .parameter "firstTime"

    .prologue
    const v3, 0x7f0801d5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 640
    packed-switch p2, :pswitch_data_0

    .line 650
    const/4 v0, 0x0

    .line 689
    :goto_0
    return-object v0

    .line 644
    :pswitch_0
    const/4 v1, 0x1

    .line 653
    .local v1, numOfProfiles:I
    :goto_1
    new-array v2, v1, [Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 654
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    .line 655
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 658
    .local v0, items:[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 677
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 678
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/lgesettings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 679
    if-eqz p3, :cond_1

    .line 681
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 647
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v1           #numOfProfiles:I
    :pswitch_2
    const/4 v1, 0x2

    .line 648
    .restart local v1       #numOfProfiles:I
    goto :goto_1

    .line 660
    .restart local v0       #items:[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f0801d4

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 661
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 662
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 663
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/lgesettings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 664
    if-eqz p3, :cond_0

    .line 666
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 667
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 669
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 670
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfiles:[Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4
    .parameter "startId"

    .prologue
    const/4 v1, 0x1

    .line 318
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    const/4 v1, 0x0

    .line 329
    :goto_0
    return v1

    .line 324
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    iput p1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 6
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 384
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x1bc

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 385
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    if-eqz p1, :cond_3

    .line 389
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 395
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 400
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 401
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 404
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 426
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 406
    :cond_2
    move-object v0, p1

    .line 407
    .local v0, d:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Lcom/android/lgesettings/bluetooth/DockService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/lgesettings/bluetooth/DockService$1;-><init>(Lcom/android/lgesettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 418
    .end local v0           #d:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 420
    .local v1, dockAudioMediaEnabled:I
    if-ne v1, v5, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 422
    const/4 v3, 0x0

    invoke-direct {p0, v3, p2, p3}, Lcom/android/lgesettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .parameter "device"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 344
    if-eqz p1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v2

    .line 362
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, newMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 338
    .local v0, newMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 339
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 454
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 455
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 490
    :goto_0
    return-object v3

    .line 465
    :pswitch_0
    const/16 v1, 0x14d

    .line 490
    .local v1, msgType:I
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 470
    .end local v1           #msgType:I
    :pswitch_1
    if-nez v0, :cond_0

    .line 471
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_0
    :pswitch_2
    const-string v4, "com.android.lgesettings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    if-nez v0, :cond_1

    .line 478
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :cond_1
    const/16 v1, 0x6f

    .restart local v1       #msgType:I
    goto :goto_1

    .line 483
    .end local v1           #msgType:I
    :cond_2
    const/16 v1, 0xde

    .line 485
    .restart local v1       #msgType:I
    goto :goto_1

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 267
    .local v2, msgType:I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 268
    .local v4, state:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 269
    .local v3, startId:I
    const/4 v1, 0x0

    .line 270
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 271
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    .line 280
    .local v0, deferFinishCall:Z
    sparse-switch v2, :sswitch_data_0

    .line 306
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_2

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 310
    invoke-static {p0, v3}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_2
    monitor-exit p0

    return-void

    .line 282
    :sswitch_0
    if-eqz v1, :cond_1

    .line 283
    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/lgesettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    .end local v0           #deferFinishCall:Z
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #msgType:I
    .end local v3           #startId:I
    .end local v4           #state:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 288
    .restart local v0       #deferFinishCall:Z
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #msgType:I
    .restart local v3       #startId:I
    .restart local v4       #state:I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/lgesettings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 289
    goto :goto_0

    .line 292
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/lgesettings/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 293
    goto :goto_0

    .line 296
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/lgesettings/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 300
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/lgesettings/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 301
    goto :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "dock"

    .prologue
    const/4 v5, 0x0

    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 431
    .local v2, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 432
    .local v1, btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 450
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 440
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 441
    .local v3, deviceUI:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 442
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    const/4 v5, 0x1

    goto :goto_0

    .line 430
    .end local v0           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3           #deviceUI:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 130
    .local v0, manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 131
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 136
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    .line 137
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 138
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 139
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 147
    new-instance v2, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/lgesettings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/lgesettings/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 158
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 167
    :cond_2
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 168
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    .line 169
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 170
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 171
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DockService;->mServiceHandler:Lcom/android/lgesettings/bluetooth/DockService$ServiceHandler;

    .line 172
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 929
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 932
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :cond_0
    monitor-exit p0

    return-void

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 190
    if-nez p1, :cond_1

    .line 198
    invoke-static {p0, p3}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 250
    :cond_0
    :goto_0
    return v7

    .line 202
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-direct {p0, p1, p3}, Lcom/android/lgesettings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 212
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 215
    .local v0, disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 216
    .local v3, retryCount:I
    if-ge v3, v8, :cond_0

    .line 217
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/lgesettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 221
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #retryCount:I
    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .restart local v0       #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 226
    .restart local v3       #retryCount:I
    if-ge v3, v8, :cond_0

    .line 227
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DockService;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/lgesettings/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/lgesettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 233
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #retryCount:I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 234
    .local v1, msg:Landroid/os/Message;
    if-nez v1, :cond_5

    .line 239
    invoke-static {p0, p3}, Lcom/android/lgesettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 243
    :cond_5
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_6

    .line 244
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    :cond_6
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 248
    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
