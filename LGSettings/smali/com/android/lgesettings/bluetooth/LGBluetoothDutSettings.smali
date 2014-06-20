.class public Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;
.super Landroid/preference/PreferenceActivity;
.source "LGBluetoothDutSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static default_rx_channel:I

.field private static default_tx_channel:I

.field private static msgDut:Ljava/lang/String;

.field private static msgWait1:Ljava/lang/String;

.field private static msgWait2:Ljava/lang/String;


# instance fields
.field private isDutEntered:Z

.field private isWaitBtOff:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBackupScreen:I

.field private mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

.field private mDutDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mLGContext:Lcom/lge/systemservice/core/LGContext;

.field mPref4:Landroid/preference/EditTextPreference;

.field mPref5:Landroid/preference/EditTextPreference;

.field private mPrefDut:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimePktCntList:Ljava/lang/String;

.field private mWaitDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const-string v0, "Please wait.\nTurning Bluetooth Off."

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->msgWait1:Ljava/lang/String;

    .line 91
    const-string v0, "Please wait.\nEntering DUT mode."

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->msgWait2:Ljava/lang/String;

    .line 92
    const-string v0, "DUT mode is enabled.\nPress OK to finish."

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->msgDut:Ljava/lang/String;

    .line 104
    sput v1, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->default_tx_channel:I

    .line 105
    sput v1, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->default_rx_channel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isDutEntered:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isWaitBtOff:Z

    .line 117
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mTimePktCntList:Ljava/lang/String;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 628
    const-string v0, "LGBluetoothDutSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isWaitBtOff:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isWaitBtOff:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->closePleaseWaitDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onEnterDUTMode()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->msgWait2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDUTMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mDutDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mDutDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private closeDUTModeDialog()V
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method private closePleaseWaitDialog()V
    .locals 1

    .prologue
    .line 527
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$5;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method private initContentView()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 290
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 291
    .local v4, root:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 295
    .local v2, list:Landroid/widget/ListView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    const v6, 0x102000a

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setId(I)V

    .line 298
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 299
    .local v5, textFrame:Landroid/widget/FrameLayout;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v3, logScroll:Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 303
    .local v1, dutState:Landroid/widget/TextView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setId(I)V

    .line 305
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, bleLog:Landroid/widget/TextView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    const/16 v6, 0x65

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setId(I)V

    .line 310
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 313
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    return-object v4
.end method

.method private onEnterDUTMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 560
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->closePleaseWaitDialog()V

    .line 561
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onEnterDutMode(I)I

    move-result v0

    .line 562
    .local v0, result:I
    if-gez v0, :cond_0

    .line 563
    const-string v1, "ENTER DUT FAIL !!!"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    .line 570
    :goto_0
    return-void

    .line 566
    :cond_0
    iput-boolean v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isDutEntered:Z

    .line 568
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiSetScreenTimeout(Z)V

    .line 569
    const-string v1, "DUT MODE ON"

    invoke-direct {p0, v2, v2, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private onExitDUTMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDutMode()I

    .line 575
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiSetScreenTimeout(Z)V

    .line 576
    iput-boolean v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isDutEntered:Z

    .line 577
    const/4 v0, 0x1

    const-string v1, "DUT MODE OFF"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    .line 578
    return-void
.end method

.method private onPleaseWaitDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 514
    :cond_0
    move-object v0, p1

    .line 515
    .local v0, progressMsg:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 516
    new-instance v1, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;

    invoke-direct {v1, p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateLePacketCount(I)V
    .locals 7
    .parameter "iPktCnt"

    .prologue
    .line 469
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy:MM:dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 471
    .local v1, currentTime:Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, dTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   :   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packets"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, msg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mTimePktCntList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mTimePktCntList:Ljava/lang/String;

    .line 475
    const/16 v5, 0x65

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 476
    .local v0, comment:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mTimePktCntList:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const/high16 v5, 0x4170

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    return-void
.end method

.method private updateStateMessage(ZZLjava/lang/String;)V
    .locals 3
    .parameter "isDutMode"
    .parameter "isToast"
    .parameter "msg"

    .prologue
    .line 323
    if-eqz p2, :cond_0

    .line 324
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    .line 326
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    .local v0, comment:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    if-eqz p1, :cond_1

    .line 329
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    :goto_0
    const/high16 v1, 0x4220

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 334
    return-void

    .line 331
    :cond_1
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method BtUiDisplayToast(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 621
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method BtUiSetScreenTimeout(Z)V
    .locals 5
    .parameter "alwaysOn"

    .prologue
    const/4 v4, -0x2

    .line 595
    if-eqz p1, :cond_1

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBackupScreen:I

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] BtUiSetScreenTimeout : old_value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBackupScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") new_value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "[BTUI] BtUiSetScreenTimeout : fail to get current SCREEN TIMEOUT VALUE!!"

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 602
    iput v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBackupScreen:I

    goto :goto_0

    .line 605
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBackupScreen:I

    if-eq v1, v4, :cond_0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] BtUiSetScreenTimeout : old_value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBackupScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBackupScreen:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET TX CHANNEL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET RX CHANNEL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 281
    return-void
.end method

.method public bindingServices()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->finish()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    .line 165
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    if-nez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->finish()V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "BtLgeExt"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->finish()V

    goto :goto_0
.end method

.method public createDutDialog()V
    .locals 4

    .prologue
    .line 482
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Turn ON"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "Turn OFF"

    aput-object v3, v0, v2

    .line 483
    .local v0, menu:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onIsDutMode()I

    move-result v1

    .line 484
    .local v1, state:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Bluetooth DUT mode"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;I)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 508
    return-void
.end method

.method public le_rx_auto_test()V
    .locals 6

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onIsDutModeBle()I

    move-result v2

    if-lez v2, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDutModeBle()I

    move-result v0

    .line 451
    .local v0, iPktCnt:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateLePacketCount(I)V

    .line 452
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 465
    .end local v0           #iPktCnt:I
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, rxChannel:I
    const/16 v2, 0x27

    if-gt v1, v2, :cond_1

    if-gez v1, :cond_2

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET TX CHANNEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    const-string v2, "Wrong Rx channel Setting."

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onEnterDutModeBle(I)I

    .line 463
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->bindingServices()V

    .line 184
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->setRequestedOrientation(I)V

    .line 186
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->initContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->setContentView(Landroid/view/View;)V

    .line 187
    const v6, 0x7f06000f

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 191
    .local v3, prefScreen:Landroid/preference/PreferenceScreen;
    if-nez v3, :cond_0

    .line 192
    const-string v6, "[BTUI] [onCreate] prefScreen is null."

    invoke-direct {p0, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 196
    :cond_0
    const v6, 0x7f0815c3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 201
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPrefDut:Landroid/preference/Preference;

    .line 202
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPrefDut:Landroid/preference/Preference;

    const-string v7, "DUT Mode"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPrefDut:Landroid/preference/Preference;

    const-string v7, "Tap to toggle DUT mode"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPrefDut:Landroid/preference/Preference;

    const-string v7, "dut_mode"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 205
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPrefDut:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 206
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPrefDut:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, pref:Landroid/preference/Preference;
    const-string v6, "BLE DUT Mode (TX)"

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    const-string v6, "Tap to toggle BLE DUT mode"

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    const-string v6, "ble_tx_mode"

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 217
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, pref2:Landroid/preference/Preference;
    const-string v6, "BLE DUT Mode (RX)"

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    const-string v6, "Tap to toggle BLE DUT mode"

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    const-string v6, "ble_rx_mode"

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 226
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 227
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 233
    .local v2, pref3:Landroid/preference/Preference;
    const-string v6, "BLE DUT Mode (RX Auto)"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    const-string v6, "Tap to toggle BLE DUT mode"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    const-string v6, "ble_rx_mode_auto"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 236
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 237
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    new-instance v6, Landroid/preference/EditTextPreference;

    invoke-direct {v6, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    .line 243
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    const-string v7, "BLE DUT TX Channel Set (0~39)"

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->default_tx_channel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, summaryPref4:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 246
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET TX CHANNEL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 249
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setOrder(I)V

    .line 251
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    new-instance v6, Landroid/preference/EditTextPreference;

    invoke-direct {v6, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    .line 257
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    const-string v7, "BLE DUT RX Channel Set (0~39)"

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->default_rx_channel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, summaryPref5:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET RX CHANNEL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 262
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setOrder(I)V

    .line 265
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 268
    const-string v6, "DUT MODE OFF"

    invoke-direct {p0, v10, v10, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0
.end method

.method onEnterDutMode(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;->enterBluetoothDUTMode(I)I

    move-result v0

    return v0
.end method

.method onEnterDutModeBle(I)I
    .locals 1
    .parameter "channel"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    invoke-virtual {v0, p1}, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;->enterBluetoothDUTModeBle(I)I

    move-result v0

    return v0
.end method

.method onExitDutMode()I
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;->exitBluetoothDUTMode()I

    move-result v0

    return v0
.end method

.method onExitDutModeBle()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;->exitBluetoothDUTModeBle()I

    move-result v0

    return v0
.end method

.method onIsDutMode()I
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;->isBluetoothDUTMode()I

    move-result v0

    return v0
.end method

.method onIsDutModeBle()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mBtLgeExtManager:Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/btlgeextmanager/BtLgeExtManager;->isBluetoothBleDUTMode()I

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 349
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v7, 0xd

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 375
    const-string v5, "dut_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->createDutDialog()V

    .line 444
    :goto_0
    return v3

    .line 380
    :cond_0
    const-string v5, "ble_tx_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 382
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    if-ne v5, v7, :cond_1

    move v3, v4

    .line 383
    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onIsDutModeBle()I

    move-result v5

    if-lez v5, :cond_3

    .line 386
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDutModeBle()I

    .line 387
    const-string v5, "DUT MODE OFF"

    invoke-direct {p0, v4, v3, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    .line 444
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 390
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v2, v5, 0x29

    .line 391
    .local v2, txChannel:I
    const/16 v5, 0x29

    if-lt v2, v5, :cond_4

    const/16 v5, 0x50

    if-le v2, v5, :cond_5

    .line 392
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET TX CHANNEL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref4:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    const-string v3, "Wrong Tx channel Setting."

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    move v3, v4

    .line 395
    goto :goto_0

    .line 397
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onEnterDutModeBle(I)I

    .line 398
    const-string v4, "BLE TX MODE"

    invoke-direct {p0, v3, v3, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v2           #txChannel:I
    :cond_6
    const-string v5, "ble_rx_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 404
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    if-ne v5, v7, :cond_7

    move v3, v4

    .line 405
    goto/16 :goto_0

    .line 407
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onIsDutModeBle()I

    move-result v5

    if-lez v5, :cond_8

    .line 408
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDutModeBle()I

    move-result v0

    .line 409
    .local v0, iPktCnt:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateLePacketCount(I)V

    .line 410
    const-string v5, "DUT MODE OFF"

    invoke-direct {p0, v4, v3, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 413
    .end local v0           #iPktCnt:I
    :cond_8
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, rxChannel:I
    const/16 v5, 0x27

    if-gt v1, v5, :cond_9

    if-gez v1, :cond_a

    .line 415
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET TX CHANNEL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mPref5:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    const-string v3, "Wrong Rx channel Setting."

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    move v3, v4

    .line 418
    goto/16 :goto_0

    .line 420
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onEnterDutModeBle(I)I

    .line 421
    const-string v4, "BLE RX MODE"

    invoke-direct {p0, v3, v3, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 425
    .end local v1           #rxChannel:I
    :cond_b
    const-string v5, "ble_rx_mode_auto"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    if-ne v5, v7, :cond_c

    move v3, v4

    .line 428
    goto/16 :goto_0

    .line 430
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onIsDutModeBle()I

    move-result v5

    if-lez v5, :cond_d

    .line 431
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDutModeBle()I

    move-result v0

    .line 432
    .restart local v0       #iPktCnt:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateLePacketCount(I)V

    .line 433
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    const-string v5, "DUT MODE OFF"

    invoke-direct {p0, v4, v3, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 437
    .end local v0           #iPktCnt:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->le_rx_auto_test()V

    .line 438
    const-string v4, "BLE RX MODE"

    invoke-direct {p0, v3, v3, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->updateStateMessage(ZZLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiSetScreenTimeout(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 285
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 365
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->isDutEntered:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDUTMode()V

    .line 367
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->closeDUTModeDialog()V

    .line 369
    :cond_0
    return-void
.end method
