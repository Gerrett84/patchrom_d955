.class public Landroid/webkit/LGWeekPicker;
.super Landroid/widget/FrameLayout;
.source "LGWeekPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGWeekPicker$SavedState;,
        Landroid/webkit/LGWeekPicker$OnWeekChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final DEFAULT_START_YEAR_ARABIC_FARSI:I = 0x7bc


# instance fields
.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mOnWeekChangedListener:Landroid/webkit/LGWeekPicker$OnWeekChangedListener;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mWeekSpinner:Landroid/widget/NumberPicker;

.field private final mWeekSpinnerInput:Landroid/widget/EditText;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/LGWeekPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/LGWeekPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v7, 0x64

    const v3, 0x102034b

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LGWeekPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 94
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 96
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2030026

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    new-instance v1, Landroid/webkit/LGWeekPicker$1;

    invoke-direct {v1, p0}, Landroid/webkit/LGWeekPicker$1;-><init>(Landroid/webkit/LGWeekPicker;)V

    .line 129
    .local v1, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v2, 0x20e0058

    invoke-virtual {p0, v2}, Landroid/webkit/LGWeekPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/webkit/LGWeekPicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 132
    const v2, 0x20e0082

    invoke-virtual {p0, v2}, Landroid/webkit/LGWeekPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    .line 135
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 136
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 137
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinnerInput:Landroid/widget/EditText;

    .line 140
    const v2, 0x20e0066

    invoke-virtual {p0, v2}, Landroid/webkit/LGWeekPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 141
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 142
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 143
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkit/LGWeekPicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 146
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 147
    iget-object v3, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->isLayoutRtl()Z

    move-result v2

    if-ne v2, v5, :cond_1

    const/16 v2, 0x7bc

    :goto_0
    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 148
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 149
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LGWeekPicker;->setMinDate(J)V

    .line 152
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 153
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    const/16 v3, 0x834

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 154
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 155
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LGWeekPicker;->setMaxDate(J)V

    .line 158
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/webkit/LGWeekPicker;->init(IILandroid/webkit/LGWeekPicker$OnWeekChangedListener;)V

    .line 162
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->reorderSpinners()V

    .line 165
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->setContentDescriptions()V

    .line 168
    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {p0, v5}, Landroid/webkit/LGWeekPicker;->setImportantForAccessibility(I)V

    .line 171
    :cond_0
    return-void

    .line 147
    :cond_1
    const/16 v2, 0x76c

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/LGWeekPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/LGWeekPicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/LGWeekPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/LGWeekPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/LGWeekPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGWeekPicker;->setWeek(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/LGWeekPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/LGWeekPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->notifyWeekChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 318
    :goto_0
    return-object v2

    .line 315
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 316
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 317
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewWeek(II)Z
    .locals 3
    .parameter "year"
    .parameter "week"

    .prologue
    const/4 v0, 0x1

    .line 406
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x3

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

.method private notifyWeekChanged()V
    .locals 3

    .prologue
    .line 467
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/webkit/LGWeekPicker;->sendAccessibilityEvent(I)V

    .line 468
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mOnWeekChangedListener:Landroid/webkit/LGWeekPicker$OnWeekChangedListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mOnWeekChangedListener:Landroid/webkit/LGWeekPicker$OnWeekChangedListener;

    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getWeek()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/webkit/LGWeekPicker$OnWeekChangedListener;->onWeekChanged(Landroid/webkit/LGWeekPicker;II)V

    .line 471
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 328
    iget-object v4, p0, Landroid/webkit/LGWeekPicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 330
    .local v1, order:[C
    const/4 v3, 0x2

    .line 331
    .local v3, spinnerCount:I
    const/4 v2, 0x0

    .line 332
    .local v2, orderNumgber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 333
    aget-char v4, v1, v0

    sparse-switch v4, :sswitch_data_0

    .line 349
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 339
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/LGWeekPicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    iget-object v4, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v6, v2}, Landroid/webkit/LGWeekPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 332
    :goto_1
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/LGWeekPicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v4, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v6, v2}, Landroid/webkit/LGWeekPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    .line 347
    goto :goto_1

    .line 352
    :cond_0
    return-void

    .line 333
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

    .line 493
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    const v1, 0x20b0399

    invoke-direct {p0, v0, v2, v1}, Landroid/webkit/LGWeekPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 495
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    const v1, 0x20b039a

    invoke-direct {p0, v0, v3, v1}, Landroid/webkit/LGWeekPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 498
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404f1

    invoke-direct {p0, v0, v2, v1}, Landroid/webkit/LGWeekPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 500
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404f2

    invoke-direct {p0, v0, v3, v1}, Landroid/webkit/LGWeekPicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 502
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 281
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 285
    :cond_0
    iput-object p1, p0, Landroid/webkit/LGWeekPicker;->mCurrentLocale:Ljava/util/Locale;

    .line 287
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/webkit/LGWeekPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    .line 288
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/webkit/LGWeekPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    .line 289
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/webkit/LGWeekPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    .line 290
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/webkit/LGWeekPicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    .line 294
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 295
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 296
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 297
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 299
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 300
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 301
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 302
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 482
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 483
    const/4 v0, 0x5

    .line 487
    .local v0, imeOptions:I
    :goto_0
    const v2, 0x102034b

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 488
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 489
    return-void

    .line 485
    .end local v0           #imeOptions:I
    .end local v1           #input:Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0
.end method

.method private setWeek(II)V
    .locals 4
    .parameter "year"
    .parameter "week"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 411
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->clear(I)V

    .line 412
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->clear(I)V

    .line 413
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 414
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 415
    .local v0, maxWeekOfNewYear:I
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    if-le p2, v0, :cond_1

    .end local v0           #maxWeekOfNewYear:I
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 416
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 421
    :cond_0
    :goto_1
    return-void

    .restart local v0       #maxWeekOfNewYear:I
    :cond_1
    move v0, p2

    .line 415
    goto :goto_0

    .line 418
    .end local v0           #maxWeekOfNewYear:I
    :cond_2
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    .line 505
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 509
    :cond_0
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 518
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 521
    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 524
    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 425
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 427
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 428
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 440
    :goto_0
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 441
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 442
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 445
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 446
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 447
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 431
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 432
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 435
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 436
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/webkit/LGWeekPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
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
    .line 372
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/webkit/LGWeekPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 373
    return-void
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeek()I
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IILandroid/webkit/LGWeekPicker$OnWeekChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "weekOfYear"
    .parameter "onWeekChangedListener"

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGWeekPicker;->setWeek(II)V

    .line 401
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateSpinners()V

    .line 402
    iput-object p3, p0, Landroid/webkit/LGWeekPicker;->mOnWeekChangedListener:Landroid/webkit/LGWeekPicker$OnWeekChangedListener;

    .line 403
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/webkit/LGWeekPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 273
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 260
    const-class v0, Landroid/webkit/LGWeekPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 266
    const-class v0, Landroid/webkit/LGWeekPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 251
    const/16 v0, 0x14

    .line 252
    .local v0, flags:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 383
    move-object v0, p1

    check-cast v0, Landroid/webkit/LGWeekPicker$SavedState;

    .line 384
    .local v0, ss:Landroid/webkit/LGWeekPicker$SavedState;
    invoke-virtual {v0}, Landroid/webkit/LGWeekPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 385
    #getter for: Landroid/webkit/LGWeekPicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/webkit/LGWeekPicker$SavedState;->access$800(Landroid/webkit/LGWeekPicker$SavedState;)I

    move-result v1

    #getter for: Landroid/webkit/LGWeekPicker$SavedState;->mWeek:I
    invoke-static {v0}, Landroid/webkit/LGWeekPicker$SavedState;->access$900(Landroid/webkit/LGWeekPicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/LGWeekPicker;->setWeek(II)V

    .line 386
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateSpinners()V

    .line 387
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 377
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 378
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/webkit/LGWeekPicker$SavedState;

    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/LGWeekPicker;->getWeek()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/webkit/LGWeekPicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/webkit/LGWeekPicker$1;)V

    return-object v1
.end method

.method public setMaxDate(J)V
    .locals 4
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 229
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 230
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 235
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 238
    :cond_1
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .parameter "minDate"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 195
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 201
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/webkit/LGWeekPicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 204
    :cond_1
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateSpinners()V

    goto :goto_0
.end method

.method public updateWeek(II)V
    .locals 1
    .parameter "year"
    .parameter "week"

    .prologue
    .line 361
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGWeekPicker;->isNewWeek(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGWeekPicker;->setWeek(II)V

    .line 365
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->updateSpinners()V

    .line 366
    invoke-direct {p0}, Landroid/webkit/LGWeekPicker;->notifyWeekChanged()V

    goto :goto_0
.end method
