.class public Lcom/android/internal/policy/impl/keyguard/NumPadKey;
.super Landroid/widget/Button;
.source "NumPadKey.java"


# static fields
.field private static final KEYPAD_NUMBER_FONT_SIZE:F = 23.33f

.field protected static final LOG_TAG:Ljava/lang/String; = "NumPadKey"

.field static sKlondike:[Ljava/lang/String;


# instance fields
.field mDigit:I

.field mEnableHaptics:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field mTextView:Landroid/widget/TextView;

.field mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    .line 49
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 53
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;-><init>(Lcom/android/internal/policy/impl/keyguard/NumPadKey;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    .line 90
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 91
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    .line 93
    .local v4, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->UsimPerso:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_3

    .line 94
    :cond_0
    sget-object v5, Lcom/lge/internal/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, a:Landroid/content/res/TypedArray;
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    .line 96
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setTextViewResId(I)V

    .line 98
    const v5, 0x41baa3d7

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setTextSize(IF)V

    .line 107
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 109
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 111
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mEnableHaptics:Z

    .line 113
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 114
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    if-ltz v5, :cond_2

    .line 117
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->UsimPerso:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_2

    .line 118
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 122
    :cond_1
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    if-le v5, v6, :cond_2

    .line 123
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    aget-object v2, v5, v6

    .line 124
    .local v2, extra:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 125
    .local v3, extraLen:I
    if-lez v3, :cond_2

    .line 126
    const-string v5, " "

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 127
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x10302a5

    invoke-direct {v5, p1, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 136
    .end local v2           #extra:Ljava/lang/String;
    .end local v3           #extraLen:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void

    .line 101
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    :cond_3
    sget-object v5, Lcom/android/internal/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .restart local v0       #a:Landroid/content/res/TypedArray;
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    .line 103
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->setTextViewResId(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/NumPadKey;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    return-object v0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->performHapticFeedback(II)Z

    .line 163
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 145
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 149
    return-void
.end method

.method public setTextViewResId(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 153
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextViewResId:I

    .line 154
    return-void
.end method
