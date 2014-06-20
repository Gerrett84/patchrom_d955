.class public Lcom/android/lgesettings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/CryptKeeper$ValidationTask;,
        Lcom/android/lgesettings/CryptKeeper$DecryptTask;,
        Lcom/android/lgesettings/CryptKeeper$FadeToBlack;,
        Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCooldown:I

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordString:Ljava/lang/String;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    iput-boolean v0, p0, Lcom/android/lgesettings/CryptKeeper;->mIgnoreBack:Z

    .line 126
    iput v0, p0, Lcom/android/lgesettings/CryptKeeper;->mNotificationCountdown:I

    .line 231
    new-instance v0, Lcom/android/lgesettings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/CryptKeeper$1;-><init>(Lcom/android/lgesettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/CryptKeeper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/lgesettings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/lgesettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/lgesettings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method private cooldown()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    const v2, 0x7f0a0024

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 567
    .local v0, status:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    if-gtz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 570
    iput-boolean v4, p0, Lcom/android/lgesettings/CryptKeeper;->mIgnoreBack:Z

    .line 571
    const v2, 0x7f08079a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 572
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->passwordEntryInit()V

    .line 581
    :goto_0
    return-void

    .line 574
    :cond_0
    const v2, 0x7f080153

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 575
    .local v1, template:Ljava/lang/CharSequence;
    new-array v2, v3, [Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget v2, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    .line 578
    iget-object v2, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object v2, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 831
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/lgesettings/CryptKeeper;->mNotificationCountdown:I

    .line 832
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 451
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 453
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 455
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 456
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 459
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f0a0097

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 461
    iput-boolean v3, p0, Lcom/android/lgesettings/CryptKeeper;->mIgnoreBack:Z

    .line 465
    const-string v1, "encrypted"

    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    const v1, 0x7f0a004b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080d8f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 467
    const-string v1, "hong"

    const-string v2, "decrypt title"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->updateProgress()V

    .line 473
    return-void

    .line 469
    :cond_1
    const-string v1, "hong"

    const-string v2, "encrypt title"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 693
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 694
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 695
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 697
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 653
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 656
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 658
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 660
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 686
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 661
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 664
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 665
    add-int/lit8 v2, v2, 0x1

    .line 666
    goto :goto_0

    .line 669
    :cond_2
    const/4 v0, 0x0

    .line 670
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 671
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 675
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 680
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 681
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 682
    goto :goto_0

    .line 686
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.lgesettings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.lgesettings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 825
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 266
    iget v1, p0, Lcom/android/lgesettings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_1

    .line 267
    iget v1, p0, Lcom/android/lgesettings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/lgesettings/CryptKeeper;->mNotificationCountdown:I

    .line 281
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 283
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x42c8

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passwordEntryInit()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 584
    const v5, 0x7f0a0093

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 585
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 586
    iget v5, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/lgesettings/CryptKeeper;->mCooldown:I

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_0

    .line 587
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 638
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 640
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 642
    return-void

    .line 589
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 591
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 592
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 593
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 596
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 597
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 598
    const v5, 0x7f0a0090

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, emergencyCall:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 600
    const-string v5, "CryptKeeper"

    const-string v6, "Removing the emergency Call button"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 605
    .end local v0           #emergencyCall:Landroid/view/View;
    :cond_1
    const v5, 0x7f0a0094

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, imeSwitcher:Landroid/view/View;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 608
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    invoke-direct {p0, v2, v7}, Lcom/android/lgesettings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 609
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 610
    new-instance v5, Lcom/android/lgesettings/CryptKeeper$3;

    invoke-direct {v5, p0, v2}, Lcom/android/lgesettings/CryptKeeper$3;-><init>(Lcom/android/lgesettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_3

    .line 622
    const-string v5, "CryptKeeper"

    const-string v6, "Acquiring wakelock."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 624
    .local v3, pm:Landroid/os/PowerManager;
    if-eqz v3, :cond_3

    .line 625
    const/16 v5, 0x1a

    const-string v6, "CryptKeeper"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 626
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 631
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/lgesettings/CryptKeeper$4;

    invoke-direct {v6, p0, v2}, Lcom/android/lgesettings/CryptKeeper$4;-><init>(Lcom/android/lgesettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 810
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 811
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 813
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupUi()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f040045

    .line 364
    iget-boolean v3, p0, Lcom/android/lgesettings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v3, :cond_0

    const-string v3, "error"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/CryptKeeper;->setContentView(I)V

    .line 366
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->showFactoryReset()V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    const-string v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, progress:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "progress"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 372
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/CryptKeeper;->setContentView(I)V

    .line 375
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 377
    const v2, 0x7f0a0095

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, layoutRoot:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 382
    .end local v0           #layoutRoot:Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 383
    :cond_5
    iget-boolean v3, p0, Lcom/android/lgesettings/CryptKeeper;->mValidationComplete:Z

    if-nez v3, :cond_6

    const-string v3, "password"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    :cond_6
    const v2, 0x7f040043

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/CryptKeeper;->setContentView(I)V

    .line 385
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->passwordEntryInit()V

    .line 387
    iget-object v2, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 392
    :cond_7
    iget-boolean v3, p0, Lcom/android/lgesettings/CryptKeeper;->mValidationRequested:Z

    if-nez v3, :cond_1

    .line 399
    new-instance v3, Lcom/android/lgesettings/CryptKeeper$ValidationTask;

    invoke-direct {v3, p0, v2}, Lcom/android/lgesettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/lgesettings/CryptKeeper;Lcom/android/lgesettings/CryptKeeper$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/lgesettings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 477
    const v5, 0x7f0a0091

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 480
    const v5, 0x7f0a0098

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 481
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    new-instance v5, Lcom/android/lgesettings/CryptKeeper$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/CryptKeeper$2;-><init>(Lcom/android/lgesettings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 494
    .local v2, service:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 496
    :try_start_0
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    .line 497
    .local v3, state:I
    const/4 v5, -0x3

    if-ne v3, v5, :cond_2

    .line 498
    const v5, 0x7f0a004b

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080f02

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 499
    const v5, 0x7f0a0024

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080f03

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v3           #state:I
    :cond_0
    :goto_0
    const v5, 0x7f0a0099

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 511
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 512
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 514
    .end local v4           #view:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 501
    .restart local v3       #state:I
    :cond_2
    const/4 v5, -0x2

    if-ne v3, v5, :cond_0

    .line 502
    const v5, 0x7f0a004b

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080155

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 503
    const v5, 0x7f0a0024

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080156

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 505
    .end local v3           #state:I
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 802
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->resumeCall()V

    .line 807
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 4

    .prologue
    .line 761
    const v3, 0x7f0a0090

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 763
    .local v0, emergencyCall:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 767
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 768
    new-instance v3, Lcom/android/lgesettings/CryptKeeper$5;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/CryptKeeper$5;-><init>(Lcom/android/lgesettings/CryptKeeper;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 782
    .local v1, newState:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 784
    const v2, 0x7f080818

    .line 794
    .local v2, textId:I
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 776
    .end local v1           #newState:I
    .end local v2           #textId:I
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 789
    .restart local v1       #newState:I
    :cond_2
    const v2, 0x7f080817

    .restart local v2       #textId:I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 517
    const-string v7, "vold.encrypt_progress"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, state:Ljava/lang/String;
    const-string v7, "error_partially_encrypted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->showFactoryReset()V

    .line 561
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v2, 0x0

    .line 527
    .local v2, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x32

    .line 534
    :goto_1
    const/4 v5, 0x0

    .line 535
    .local v5, temp:Ljava/lang/CharSequence;
    const-string v7, "encrypted"

    const-string v8, "ro.crypto.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 537
    const v7, 0x7f080d90

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 538
    const-string v7, "hong"

    const-string v8, "decrypt title"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_2
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 547
    const v7, 0x7f0a0095

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 548
    .local v1, layoutRoot:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 551
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_1
    move-object v4, v5

    .line 553
    .local v4, status:Ljava/lang/CharSequence;
    const-string v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encryption progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const v7, 0x7f0a0024

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 555
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 556
    new-array v7, v10, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    iget-object v7, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 527
    .end local v4           #status:Ljava/lang/CharSequence;
    .end local v5           #temp:Ljava/lang/CharSequence;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 540
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #temp:Ljava/lang/CharSequence;
    :cond_4
    const v7, 0x7f080152

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 541
    const-string v7, "hong"

    const-string v8, "encrypt title"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 858
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 848
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/lgesettings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/CryptKeeper;->setRequestedOrientation(I)V

    .line 356
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/CryptKeeper;->setRequestedOrientation(I)V

    .line 302
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 306
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/lgesettings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 316
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeper;->finish()V

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 323
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 331
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 333
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 334
    instance-of v1, v0, Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_1

    .line 335
    check-cast v0, Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;

    .line 336
    iget-object v0, v0, Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 337
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 442
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 702
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 704
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 723
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 711
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v3, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 716
    iput-boolean v2, p0, Lcom/android/lgesettings/CryptKeeper;->mIgnoreBack:Z

    .line 718
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v3, Lcom/android/lgesettings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/lgesettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/lgesettings/CryptKeeper;Lcom/android/lgesettings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 721
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->delayAudioNotification()V

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 425
    .local v0, state:Lcom/android/lgesettings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 427
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 349
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->setupUi()V

    .line 350
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 408
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mPasswordString:Ljava/lang/String;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->delayAudioNotification()V

    .line 854
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/lgesettings/CryptKeeper;->delayAudioNotification()V

    .line 843
    const/4 v0, 0x0

    return v0
.end method
