.class public Landroid/webkit/LGMonthPicker;
.super Landroid/widget/FrameLayout;
.source "LGMonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGMonthPicker$SavedState;,
        Landroid/webkit/LGMonthPicker$OnMonthChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final DEFAULT_START_YEAR_ARABIC_FARSI:I = 0x7bc


# instance fields
.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIsShowNumberOnlyAboutMonth:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthOffset:I

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnMonthChangedListener:Landroid/webkit/LGMonthPicker$OnMonthChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/LGMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/LGMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v8, 0x102034b

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v6, p0, Landroid/webkit/LGMonthPicker;->mIsShowNumberOnlyAboutMonth:Z

    .line 73
    iput v6, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LGMonthPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 105
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2030013

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    new-instance v1, Landroid/webkit/LGMonthPicker$1;

    invoke-direct {v1, p0}, Landroid/webkit/LGMonthPicker$1;-><init>(Landroid/webkit/LGMonthPicker;)V

    .line 134
    .local v1, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v2, 0x20e0058

    invoke-virtual {p0, v2}, Landroid/webkit/LGMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/webkit/LGMonthPicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 137
    const v2, 0x20e0065

    invoke-virtual {p0, v2}, Landroid/webkit/LGMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 138
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 139
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mNumberOfMonths:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 140
    iget-boolean v2, p0, Landroid/webkit/LGMonthPicker;->mIsShowNumberOnlyAboutMonth:Z

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/webkit/LGMonthPicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 143
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 144
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 147
    const v2, 0x20e0066

    invoke-virtual {p0, v2}, Landroid/webkit/LGMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 148
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 149
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 150
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkit/LGMonthPicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 153
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 154
    iget-object v3, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->isLayoutRtl()Z

    move-result v2

    if-ne v2, v5, :cond_2

    const/16 v2, 0x7bc

    :goto_0
    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 155
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 156
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LGMonthPicker;->setMinDate(J)V

    .line 159
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 160
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    const/16 v3, 0x834

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 161
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 162
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LGMonthPicker;->setMaxDate(J)V

    .line 165
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/webkit/LGMonthPicker;->init(IILandroid/webkit/LGMonthPicker$OnMonthChangedListener;)V

    .line 169
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->reorderSpinners()V

    .line 172
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->setContentDescriptions()V

    .line 175
    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {p0, v5}, Landroid/webkit/LGMonthPicker;->setImportantForAccessibility(I)V

    .line 178
    :cond_1
    return-void

    .line 154
    :cond_2
    const/16 v2, 0x76c

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/LGMonthPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/LGMonthPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/LGMonthPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/LGMonthPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/LGMonthPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGMonthPicker;->setMonth(II)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/LGMonthPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/LGMonthPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->notifyMonthChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 333
    :goto_0
    return-object v2

    .line 330
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 331
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 332
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewMonth(II)Z
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    const/4 v0, 0x1

    .line 420
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyMonthChanged()V
    .locals 3

    .prologue
    .line 489
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/webkit/LGMonthPicker;->sendAccessibilityEvent(I)V

    .line 490
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mOnMonthChangedListener:Landroid/webkit/LGMonthPicker$OnMonthChangedListener;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mOnMonthChangedListener:Landroid/webkit/LGMonthPicker$OnMonthChangedListener;

    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getMonth()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/webkit/LGMonthPicker$OnMonthChangedListener;->onMonthChanged(Landroid/webkit/LGMonthPicker;II)V

    .line 493
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 343
    iget-object v4, p0, Landroid/webkit/LGMonthPicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 344
    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 345
    .local v1, order:[C
    const/4 v3, 0x2

    .line 346
    .local v3, spinnerCount:I
    const/4 v2, 0x0

    .line 347
    .local v2, orderNumgber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 348
    aget-char v4, v1, v0

    sparse-switch v4, :sswitch_data_0

    .line 363
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 353
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/LGMonthPicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    iget-object v4, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v6, v2}, Landroid/webkit/LGMonthPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 355
    add-int/lit8 v2, v2, 0x1

    .line 347
    :goto_1
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/LGMonthPicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v4, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v6, v2}, Landroid/webkit/LGMonthPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    goto :goto_1

    .line 366
    :cond_0
    return-void

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0x64 -> :sswitch_1
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x102034c

    const v2, 0x102034a

    .line 515
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404ed

    invoke-direct {p0, v0, v2, v1}, Landroid/webkit/LGMonthPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 517
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404ee

    invoke-direct {p0, v0, v3, v1}, Landroid/webkit/LGMonthPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 520
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404f1

    invoke-direct {p0, v0, v2, v1}, Landroid/webkit/LGMonthPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 522
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404f2

    invoke-direct {p0, v0, v3, v1}, Landroid/webkit/LGMonthPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 524
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .parameter "locale"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-object p1, p0, Landroid/webkit/LGMonthPicker;->mCurrentLocale:Ljava/util/Locale;

    .line 294
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/webkit/LGMonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    .line 295
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/webkit/LGMonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    .line 296
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/webkit/LGMonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    .line 297
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/webkit/LGMonthPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    .line 299
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/LGMonthPicker;->mNumberOfMonths:I

    .line 300
    iget v1, p0, Landroid/webkit/LGMonthPicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/webkit/LGMonthPicker;->mShortMonths:[Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/webkit/LGMonthPicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 302
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mShortMonths:[Ljava/lang/String;

    aget-object v1, v1, v4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iput-boolean v5, p0, Landroid/webkit/LGMonthPicker;->mIsShowNumberOnlyAboutMonth:Z

    .line 313
    iput v5, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    goto :goto_0

    .line 315
    :cond_2
    iput-boolean v4, p0, Landroid/webkit/LGMonthPicker;->mIsShowNumberOnlyAboutMonth:Z

    .line 316
    iput v4, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 504
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 505
    const/4 v0, 0x5

    .line 509
    .local v0, imeOptions:I
    :goto_0
    const v2, 0x102034b

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 510
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 511
    return-void

    .line 507
    .end local v0           #imeOptions:I
    .end local v1           #input:Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0
.end method

.method private setMonth(II)V
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    .line 425
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 426
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 427
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    .line 527
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 528
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 531
    :cond_0
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 540
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 543
    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 546
    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 436
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 439
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 440
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 453
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/LGMonthPicker;->mIsShowNumberOnlyAboutMonth:Z

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 458
    .local v0, displayedValues:[Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 462
    .end local v0           #displayedValues:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 463
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 464
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 467
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 468
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 469
    return-void

    .line 441
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 444
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 445
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 447
    :cond_2
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 449
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Landroid/webkit/LGMonthPicker;->mMonthOffset:I

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 450
    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/webkit/LGMonthPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/webkit/LGMonthPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 387
    return-void
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IILandroid/webkit/LGMonthPicker$OnMonthChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "onMonthChangedListener"

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGMonthPicker;->setMonth(II)V

    .line 415
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateSpinners()V

    .line 416
    iput-object p3, p0, Landroid/webkit/LGMonthPicker;->mOnMonthChangedListener:Landroid/webkit/LGMonthPicker$OnMonthChangedListener;

    .line 417
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/webkit/LGMonthPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 280
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 267
    const-class v0, Landroid/webkit/LGMonthPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 273
    const-class v0, Landroid/webkit/LGMonthPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 258
    const/16 v0, 0x14

    .line 259
    .local v0, flags:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 397
    move-object v0, p1

    check-cast v0, Landroid/webkit/LGMonthPicker$SavedState;

    .line 398
    .local v0, ss:Landroid/webkit/LGMonthPicker$SavedState;
    invoke-virtual {v0}, Landroid/webkit/LGMonthPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 399
    #getter for: Landroid/webkit/LGMonthPicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/webkit/LGMonthPicker$SavedState;->access$1000(Landroid/webkit/LGMonthPicker$SavedState;)I

    move-result v1

    #getter for: Landroid/webkit/LGMonthPicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/webkit/LGMonthPicker$SavedState;->access$1100(Landroid/webkit/LGMonthPicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/LGMonthPicker;->setMonth(II)V

    .line 400
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateSpinners()V

    .line 401
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 391
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 392
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/webkit/LGMonthPicker$SavedState;

    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/LGMonthPicker;->getMonth()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/webkit/LGMonthPicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/webkit/LGMonthPicker$1;)V

    return-object v1
.end method

.method public setMaxDate(J)V
    .locals 4
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 236
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 237
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 242
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 245
    :cond_1
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .parameter "minDate"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 202
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    :cond_1
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateSpinners()V

    goto :goto_0
.end method

.method public updateMonth(II)V
    .locals 1
    .parameter "year"
    .parameter "month"

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGMonthPicker;->isNewMonth(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGMonthPicker;->setMonth(II)V

    .line 379
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->updateSpinners()V

    .line 380
    invoke-direct {p0}, Landroid/webkit/LGMonthPicker;->notifyMonthChanged()V

    goto :goto_0
.end method
