.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$CheckUsimPerso;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;
    }
.end annotation


# static fields
.field private static KT_UsimPerso_retry_count:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "KeyguardSimPersoView"

.field private static countrycode:Ljava/lang/String;

.field static maxDigits:I

.field private static operator:Ljava/lang/String;

.field public static service_provider:Ljava/lang/String;


# instance fields
.field private mEmergencyText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mHeaderTextString:Ljava/lang/String;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

.field protected mPinEntry:Landroid/widget/TextView;

.field protected mPopupMsg:Ljava/lang/String;

.field protected mRetryText:Landroid/widget/TextView;

.field protected mRetryTextString:Ljava/lang/String;

.field private mServiceState:Landroid/telephony/ServiceState;

.field protected mStrTitleWrongPin:Ljava/lang/String;

.field private mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

.field protected volatile mUsimPersoUnlockProgress:Z

.field public mdialog:Landroid/app/AlertDialog;

.field minDigits:I

.field private service_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->KT_UsimPerso_retry_count:I

    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->maxDigits:I

    .line 95
    sput-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_provider:Ljava/lang/String;

    .line 101
    sput-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->countrycode:Ljava/lang/String;

    .line 102
    sput-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->operator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->minDigits:I

    .line 94
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_status:I

    .line 116
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->KT_UsimPerso_retry_count:I

    return v0
.end method

.method static synthetic access$510()I
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->KT_UsimPerso_retry_count:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->KT_UsimPerso_retry_count:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getUSimPersoProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x20b02c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x104032d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 464
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x202026e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 470
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 471
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 472
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 125
    const v0, 0x10202d5

    return v0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 135
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 141
    const v5, 0x10202fd

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderText:Landroid/widget/TextView;

    .line 142
    const v5, 0x20e0062

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryText:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->readStringFromResource()V

    .line 146
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderTextString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    if-ne v5, v6, :cond_4

    .line 149
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    const v5, 0x10202e1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    .local v2, ok:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v5, 0x1020285

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, cancel:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 167
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_1
    const v5, 0x10202d6

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 180
    .local v3, pinDelete:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 182
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 202
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)V

    .line 215
    .local v1, listener:Landroid/telephony/PhoneStateListener;
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 217
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mEmergencyText:Landroid/widget/TextView;

    const v6, 0x1040325

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 220
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 221
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 224
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 225
    return-void

    .line 151
    .end local v0           #cancel:Landroid/widget/TextView;
    .end local v1           #listener:Landroid/telephony/PhoneStateListener;
    .end local v2           #ok:Landroid/widget/TextView;
    .end local v3           #pinDelete:Landroid/view/View;
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->KT_UsimPerso_retry_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 255
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    const v2, 0x10202e1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, ok:Landroid/view/View;
    const v2, 0x1020285

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, cancel:Landroid/view/View;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 263
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 264
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 267
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 270
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->minDigits:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_3

    sget v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->maxDigits:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 271
    :cond_3
    sget v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->KT_UsimPerso_retry_count:I

    if-nez v2, :cond_4

    .line 272
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 276
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public readNetworkOperator()V
    .locals 3

    .prologue
    .line 430
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    .line 439
    :goto_0
    const-string v0, "KeyguardSimPersoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNetworkOperator: mNetworkOpeator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 432
    :cond_0
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    goto :goto_0

    .line 434
    :cond_1
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_LGT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    goto :goto_0

    .line 437
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    goto :goto_0
.end method

.method public readStringFromResource()V
    .locals 7

    .prologue
    const v6, 0x20b02df

    const v5, 0x20b02de

    const v4, 0x20b02dc

    const/4 v3, 0x4

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 398
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->readNetworkOperator()V

    .line 400
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    if-ne v1, v2, :cond_1

    .line 406
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderTextString:Ljava/lang/String;

    .line 407
    const v1, 0x20b02dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryTextString:Ljava/lang/String;

    .line 408
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mStrTitleWrongPin:Ljava/lang/String;

    .line 409
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mPopupMsg:Ljava/lang/String;

    .line 410
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->minDigits:I

    .line 411
    const/4 v1, 0x3

    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->maxDigits:I

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    if-ne v1, v2, :cond_0

    .line 416
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderTextString:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20b011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryTextString:Ljava/lang/String;

    .line 418
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mStrTitleWrongPin:Ljava/lang/String;

    .line 419
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mPopupMsg:Ljava/lang/String;

    .line 420
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->minDigits:I

    .line 421
    const/4 v1, 0x7

    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->maxDigits:I

    goto :goto_0
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public updateEmergencyText()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_status:I

    .line 233
    const-string v0, "KeyguardSimPersoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] get the service status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    const-string v0, "KeyguardSimPersoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service state on PIN/PUK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->service_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mEmergencyText:Landroid/widget/TextView;

    const v1, 0x1040325

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mEmergencyText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->minDigits:I

    if-ge v1, v2, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x104009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->getUSimPersoProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 335
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoUnlockProgress:Z

    if-nez v1, :cond_0

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoUnlockProgress:Z

    .line 337
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->start()V

    goto :goto_0
.end method
