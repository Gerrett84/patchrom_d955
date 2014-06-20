.class public Landroid/webkit/LGColorPicker;
.super Landroid/widget/FrameLayout;
.source "LGColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGColorPicker$SavedState;,
        Landroid/webkit/LGColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final MAX_COLOR_VALUE:I = 0xff

.field private static final MIN_COLOR_VALUE:I


# instance fields
.field private final mBlueSpinner:Landroid/widget/NumberPicker;

.field private final mBlueSpinnerInput:Landroid/widget/EditText;

.field private mColorHeight:I

.field private final mColorLayout:Landroid/widget/LinearLayout;

.field private final mColorView:Landroid/view/View;

.field private mColorWidth:I

.field private final mCommonLayout:Landroid/widget/LinearLayout;

.field private mCurrentColor:I

.field private final mGreenSpinner:Landroid/widget/NumberPicker;

.field private final mGreenSpinnerInput:Landroid/widget/EditText;

.field private mOnColorChangedListener:Landroid/webkit/LGColorPicker$OnColorChangedListener;

.field private final mRedSpinner:Landroid/widget/NumberPicker;

.field private final mRedSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/LGColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/LGColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v11, 0xff

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/high16 v8, 0x41a0

    const/4 v7, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 85
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x203000a

    invoke-virtual {v1, v4, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    new-instance v2, Landroid/webkit/LGColorPicker$1;

    invoke-direct {v2, p0}, Landroid/webkit/LGColorPicker$1;-><init>(Landroid/webkit/LGColorPicker;)V

    .line 111
    .local v2, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v4, 0x20e004e

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mCommonLayout:Landroid/widget/LinearLayout;

    .line 114
    const v4, 0x20e0050

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    .line 115
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 116
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 117
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 118
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 119
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 120
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    const v5, 0x102034b

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinnerInput:Landroid/widget/EditText;

    .line 123
    const v4, 0x20e0052

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    .line 124
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 125
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 126
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 127
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 128
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 129
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    const v5, 0x102034b

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinnerInput:Landroid/widget/EditText;

    .line 132
    const v4, 0x20e0054

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    .line 133
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 134
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 135
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 136
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 137
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 138
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    const v5, 0x102034b

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinnerInput:Landroid/widget/EditText;

    .line 140
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v10, v7}, Landroid/webkit/LGColorPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 141
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v10, v9}, Landroid/webkit/LGColorPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 142
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v10, v5}, Landroid/webkit/LGColorPicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 144
    const v4, 0x20e0055

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mColorLayout:Landroid/widget/LinearLayout;

    .line 145
    iget-object v4, p0, Landroid/webkit/LGColorPicker;->mColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    .local v0, colorLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v4, v5, :cond_1

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iput v4, p0, Landroid/webkit/LGColorPicker;->mColorWidth:I

    .line 147
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v4, v5, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iput v4, p0, Landroid/webkit/LGColorPicker;->mColorHeight:I

    .line 149
    const v4, 0x20e0056

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LGColorPicker;->mColorView:Landroid/view/View;

    .line 153
    const v4, 0x20e004f

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 154
    .local v3, spinnerTitle:Landroid/widget/TextView;
    const v4, 0x20b039c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 155
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    const v4, 0x20e0051

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #spinnerTitle:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 157
    .restart local v3       #spinnerTitle:Landroid/widget/TextView;
    const v4, 0x20b039d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    const v4, 0x20e0053

    invoke-virtual {p0, v4}, Landroid/webkit/LGColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #spinnerTitle:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 160
    .restart local v3       #spinnerTitle:Landroid/widget/TextView;
    const v4, 0x20b039e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/webkit/LGColorPicker;->init(ILandroid/webkit/LGColorPicker$OnColorChangedListener;)V

    .line 167
    invoke-virtual {p0}, Landroid/webkit/LGColorPicker;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-virtual {p0, v9}, Landroid/webkit/LGColorPicker;->setImportantForAccessibility(I)V

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v4}, Landroid/webkit/LGColorPicker;->setCurrentOrientation(I)V

    .line 172
    return-void

    .line 146
    .end local v3           #spinnerTitle:Landroid/widget/TextView;
    :cond_1
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 147
    :cond_2
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkit/LGColorPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/LGColorPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/LGColorPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/LGColorPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/LGColorPicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/LGColorPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/LGColorPicker;->setColor(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/LGColorPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/LGColorPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->notifyColorChanged()V

    return-void
.end method

.method private isNewColor(I)Z
    .locals 1
    .parameter "color"

    .prologue
    .line 275
    iget v0, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyColorChanged()V
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/webkit/LGColorPicker;->sendAccessibilityEvent(I)V

    .line 302
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mOnColorChangedListener:Landroid/webkit/LGColorPicker$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mOnColorChangedListener:Landroid/webkit/LGColorPicker$OnColorChangedListener;

    iget v1, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    invoke-interface {v0, p0, v1}, Landroid/webkit/LGColorPicker$OnColorChangedListener;->onColorChanged(Landroid/webkit/LGColorPicker;I)V

    .line 305
    :cond_0
    return-void
.end method

.method private setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 279
    iput p1, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    .line 280
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mColorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    return-void
.end method

.method private setCurrentOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 210
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mCommonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 211
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 212
    .local v0, colorLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 213
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mCommonLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    iget v1, p0, Landroid/webkit/LGColorPicker;->mColorHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 215
    iget v1, p0, Landroid/webkit/LGColorPicker;->mColorWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    :goto_0
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .end local v0           #colorLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 217
    .restart local v0       #colorLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mCommonLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 218
    iget v1, p0, Landroid/webkit/LGColorPicker;->mColorWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 219
    iget v1, p0, Landroid/webkit/LGColorPicker;->mColorHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 316
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 317
    const/4 v0, 0x5

    .line 321
    .local v0, imeOptions:I
    :goto_0
    const v2, 0x102034b

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 322
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 323
    return-void

    .line 319
    .end local v0           #imeOptions:I
    .end local v1           #input:Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 332
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mRedSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mRedSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 335
    invoke-virtual {p0}, Landroid/webkit/LGColorPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mGreenSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mGreenSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 338
    invoke-virtual {p0}, Landroid/webkit/LGColorPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mBlueSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Landroid/webkit/LGColorPicker;->mBlueSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 341
    invoke-virtual {p0}, Landroid/webkit/LGColorPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 286
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 287
    iget-object v0, p0, Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 288
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/webkit/LGColorPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 177
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
    .line 242
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/webkit/LGColorPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 243
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    return v0
.end method

.method public init(ILandroid/webkit/LGColorPicker$OnColorChangedListener;)V
    .locals 0
    .parameter "color"
    .parameter "onColorChangedListener"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Landroid/webkit/LGColorPicker;->setColor(I)V

    .line 270
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->updateSpinners()V

    .line 271
    iput-object p2, p0, Landroid/webkit/LGColorPicker;->mOnColorChangedListener:Landroid/webkit/LGColorPicker$OnColorChangedListener;

    .line 272
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Landroid/webkit/LGColorPicker;->setCurrentOrientation(I)V

    .line 201
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 188
    const-class v0, Landroid/webkit/LGColorPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 194
    const-class v0, Landroid/webkit/LGColorPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 183
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 253
    move-object v0, p1

    check-cast v0, Landroid/webkit/LGColorPicker$SavedState;

    .line 254
    .local v0, ss:Landroid/webkit/LGColorPicker$SavedState;
    invoke-virtual {v0}, Landroid/webkit/LGColorPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 255
    #getter for: Landroid/webkit/LGColorPicker$SavedState;->mColor:I
    invoke-static {v0}, Landroid/webkit/LGColorPicker$SavedState;->access$900(Landroid/webkit/LGColorPicker$SavedState;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/webkit/LGColorPicker;->setColor(I)V

    .line 256
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->updateSpinners()V

    .line 257
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 248
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/webkit/LGColorPicker$SavedState;

    iget v2, p0, Landroid/webkit/LGColorPicker;->mCurrentColor:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/webkit/LGColorPicker$SavedState;-><init>(Landroid/os/Parcelable;ILandroid/webkit/LGColorPicker$1;)V

    return-object v1
.end method

.method public updateColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Landroid/webkit/LGColorPicker;->isNewColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/LGColorPicker;->setColor(I)V

    .line 235
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->updateSpinners()V

    .line 236
    invoke-direct {p0}, Landroid/webkit/LGColorPicker;->notifyColorChanged()V

    goto :goto_0
.end method
